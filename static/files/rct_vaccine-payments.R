# https://www.science.org/doi/full/10.1126/science.abm0475

library(tidyverse)
library(broom)
library(haven)  # For reading Stata files

vaccines_raw <- read_stata("data/vaccines.dta")

print_labels(vaccines_raw$treatment)

# Clean up treatment variable and check treatment assignment
vaccines_neat <- vaccines_raw %>% 
  filter(!(treatment %in% 1:4)) %>% 
  mutate(treatment_nice = case_when(
    treatment == 0 ~ "Treatment group",
    treatment == 5 ~ "Control group"
  ))

vaccines_neat %>% count(treatment_nice)

# group_by + summarize to see averages of vaccinated and intention1
vaccines_neat %>% 
  group_by(treatment_nice) %>% 
  summarize(prop_vaccinated = mean(vaccinated),
            prop_intention = mean(intention1))

model_simple_vaccinated <- lm(vaccinated ~ treatment_nice, 
                              data = vaccines_neat)
tidy(model_simple_vaccinated, conf.int = TRUE)

model_simple_intent <- lm(intention1 ~ treatment_nice, 
                          data = vaccines_neat)
tidy(model_simple_intent, conf.int = TRUE)

# Cleaner data
vaccines_clean <- vaccines_raw %>%
  mutate(across(c(female, age_band, region, covid1_2, civilstatus,
                  haschildren, education, occupation,
                  mother, father, income),
                factor)) %>%
  filter(already_vacced == 0, !is.na(intention1))

model_vacc <- lm(vaccinated ~ treat_pay + 
                   treat_soc + treat_arg + treat_info + treat_min +
                   female + age_band*region + covid1_2 + civilstatus +
                   haschildren + education + occupation + 
                   mother + father + income,
                 data = vaccines_clean)

tidy(model_vacc)

model_intent <- lm(intention1 ~ treat_pay + 
                     treat_soc + treat_arg + treat_info + treat_min +
                     female + age_band*region + covid1_2 + civilstatus +
                     haschildren + education + occupation + 
                     mother + father + income,
                   data = vaccines_clean)

tidy(model_intent)

model_vacc_nudge <- lm(vaccinated ~ treat_pay + nudge + treat_min +
                         female + age_band*region + covid1_2 + civilstatus +
                         haschildren + education + occupation + 
                         mother + father + income,
                       data = vaccines_clean)

tidy(model_vacc_nudge)

model_intent_nudge <- lm(intention1 ~ treat_pay + nudge + treat_min +
                           female + age_band*region + covid1_2 + civilstatus +
                           haschildren + education + occupation + 
                           mother + father + income,
                         data = vaccines_clean)

tidy(model_intent_nudge)

# Coefficient plot (Figure 2 in the original paper)
plot_stuff <- bind_rows(Uptake_Payment = tidy(model_vacc, conf.int = TRUE), 
                        Intentions_Payment = tidy(model_intent, conf.int = TRUE), 
                        Uptake_Nudges = tidy(model_vacc_nudge, conf.int = TRUE),
                        Intentions_Nudges = tidy(model_intent_nudge, conf.int = TRUE),
                        .id = "outcome") %>% 
  separate(outcome, into = c("outcome", "condition"))

plot_filtered <- plot_stuff %>% 
  filter((condition == "Payment" & str_detect(term, "treat_")) |
           (condition == "Nudges" & term == "nudge")) %>% 
  mutate(term = factor(term, levels = c("treat_pay", "nudge", "treat_soc", 
                                        "treat_arg", "treat_info", "treat_min")))


ggplot(plot_filtered, aes(x = estimate, y = fct_rev(term), color = outcome)) +
  geom_vline(xintercept = 0) +
  geom_pointrange(aes(xmin = conf.low, xmax = conf.high),
                  position = position_dodge(width = 0.25))


# Nice way with feols()
# fixest::feols() with robust SEs
library(fixest)

model_fast <- feols(intention1 ~ treat_pay + nudge + treat_min |
                      female + age_band^region + covid1_2 + civilstatus +
                      haschildren + education + occupation + 
                      mother + father + income,
                    data = vaccines_clean,
                    vcov = "hetero")
tidy(model_fast)
