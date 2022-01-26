---
title: "Regression and inference"
linktitle: "2: Regression and inference"
date: "2022-01-20"
class_date: "2022-01-20"
menu:
  content:
    parent: Course content
    weight: 2
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "02-slides"
---

## Readings

-   <i class="fas fa-book"></i> Chapters 3 and 4 in *The Effect*[^1]

## Recommended readings

Look through your notes on regression from your last stats class. Also, you can skim through these resources:

-   <i class="fas fa-book"></i> [6.1–6.4 in *ModernDive*](https://moderndive.com/6-regression.html)[^2]
-   <i class="fas fa-book"></i> [7.1–7.4 in *ModernDive*](https://moderndive.com/7-multiple-regression.html)[^3]
-   <i class="fas fa-book"></i> 7.1–7.3 in *OpenIntro Statistics*[^4]
-   <i class="fas fa-book"></i> 8.1 in *OpenIntro Statistics*[^5]

We’ll review all this regression stuff in the videos, so *don’t panic* if this all looks terrifying! Also, take advantage of the videos that accompany the *OpenIntro* chapters. And *also*, the *OpenIntro* chapters are heavier on the math—don’t worry if you don’t understand everything.

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="drawing-lines-tab" data-toggle="tab" href="#drawing-lines" role="tab" aria-controls="drawing-lines" aria-selected="false">Drawing lines</a>
</li>
<li class="nav-item">
<a class="nav-link" id="lines-greek-and-regression-tab" data-toggle="tab" href="#lines-greek-and-regression" role="tab" aria-controls="lines-greek-and-regression" aria-selected="false">Lines, Greek, and regression</a>
</li>
<li class="nav-item">
<a class="nav-link" id="null-worlds-and-statistical-significance-tab" data-toggle="tab" href="#null-worlds-and-statistical-significance" role="tab" aria-controls="null-worlds-and-statistical-significance" aria-selected="false">Null worlds and statistical significance</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#1">
</iframe>

</div>

</div>

<div id="drawing-lines" class="tab-pane fade" role="tabpanel" aria-labelledby="drawing-lines-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#drawing-lines">
</iframe>

</div>

</div>

<div id="lines-greek-and-regression" class="tab-pane fade" role="tabpanel" aria-labelledby="lines-greek-and-regression-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#lines-greek-regression">
</iframe>

</div>

</div>

<div id="null-worlds-and-statistical-significance" class="tab-pane fade" role="tabpanel" aria-labelledby="null-worlds-and-statistical-significance-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/02-slides.html#significance">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4).

-   [Introduction](https://www.youtube.com/watch?v=S4OmWxc3h3Y&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)
-   [Drawing lines](https://www.youtube.com/watch?v=DGbLEgL4g6Y&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)
-   [Lines, Greek, and regression](https://www.youtube.com/watch?v=n-rV1TIoIgw&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)
-   [Null worlds and statistical significance](https://www.youtube.com/watch?v=RYKsrTKWCR4&list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sERjvBbJGr9mpqvtiLVPzd4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

## In-class stuff

Here are all the materials we’ll use in class:

-   [**Session 2 FAQ slides**](/slides/02-class.html) ([PDF](/slides/02-class.pdf))
-   [Errors vs. warnings vs. messages](https://moderndive.com/1-getting-started.html#messages) (i.e. what to do when R shows you red text)
-   R Markdown examples:
    -   Example R Markdown file used as a code-through or step-by-step teaching document:
        -   Lots of [blog posts here](https://www.andrewheiss.com/blog/)
        -   Julia Silge, [“Modeling human/computer interactions on Star Trek from \#TidyTuesday with workflowsets”](https://juliasilge.com/blog/star-trek/)
        -   Bob Rudis, [“Some Covid Donuts To End The Week”](https://rud.is/b/2021/08/13/some-covid-donuts-to-end-the-week/)
        -   Holger K. von Jouanne-Diedrich, [“The “Youth Bulge” of Afghanistan: The Hidden Force behind Political Instability”](https://blog.ephorie.de/the-youth-bulge-of-afghanistan-the-hidden-force-behind-political-instability)
    -   Example R Markdown file used as a publicly-consumable document:
        -   Click on the “Manuscript” menu item [at this site](https://stats.andrewheiss.com/cautioning-canary/)
        -   See [the Rmd file here](https://github.com/andrewheiss/cautioning-canary/blob/master/manuscript/manuscript.Rmd)

Hands-on R materials:

-   [<i class="fas fa-file-csv"></i> `restaurant_inspections.csv`](https://vincentarelbundock.github.io/Rdatasets/csv/causaldata/restaurant_inspections.csv)
-   [RStudio.cloud project](https://rstudio.cloud/spaces/205054/project/3437782)
-   [Project `.zip` file](/projects/01-class.zip)
-   [Lab slides 3: Data basics](/slides/01-class_03_data-basics.html) ([PDF](/slides/01-class_03_data-basics.pdf))
-   [Lab slides 4: Visualize data with ggplot2](/slides/01-class_04_visualize-data.html) ([PDF](/slides/01-class_04_visualize-data.pdf))
-   [Lab slides 5: Transform data with dplyr](/slides/01-class_05_transform-data.html) ([PDF](/slides/01-class_05_transform-data.pdf))

## Bayesian statistics resources

In class I briefly mentioned the difference between frequentist and Bayesian statistics. You can see a bunch of [additional resources and examples of these two approaches to statistics here](/resource/bayes/). [This huge blog post](https://www.andrewheiss.com/blog/2021/12/01/multilevel-models-panel-data-guide/) also shows how to do multilevel models with Bayesian models.

[^1]: Nick Huntington-Klein, *The Effect: An Introduction to Research Design and Causality* (Boca Raton, Florida: Chapman and Hall / CRC, 2021), <https://theeffectbook.net/>.

[^2]: Chester Ismay and Albert Y. Kim, *Statistical Inference via Data Science: A ModernDive into R and the Tidyverse* (Chapman and Hall / CRC, 2019), <https://moderndive.com/>.

[^3]: Ibid.

[^4]: David M. Diez, Christopher D. Barr, and Mine Çetinkaya-Rundel, *OpenIntro Statistics*, 3rd ed., 2017, <https://www.openintro.org/stat/textbook.php?stat_book=os>.

[^5]: Ibid.
