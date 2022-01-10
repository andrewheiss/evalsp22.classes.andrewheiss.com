---
title: "Problem set 6"
linktitle: "Problem set 6"
date: "2022-03-31"
due_date: "2022-03-31"
due_time: "11:59 PM"
menu:
  assignment:
    parent: Problem sets
    weight: 6
type: docs
editor_options: 
  chunk_output_type: console
---

For this problem set, you'll practice doing regression discontinuity analysis with simulated data from a hypothetical program. This example page will be incredibly useful for you:

- [Regression discontinuity](/example/rdd/)

You'll be doing all your R work in R Markdown. You can download a zipped file of a pre-made project here:

- [<i class="fas fa-file-archive"></i> `problem-set-6.zip`](/projects/problem-set-6.zip)

And as always, if you're struggling, *please* talk to me. Work with classmates too (especially for this assignment!). Don't suffer in silence!


## Instructions

1. If you're using R on your own computer, download this file, [*unzip it*](/resource/unzipping/), and double click on the file named `problem-set-6.Rproj`: [<i class="fas fa-file-archive"></i> `problem-set-6.zip`](/projects/problem-set-6.zip)

    You'll need to make sure you have these packages installed on your computer: `tidyverse`, `broom`, `rdrobust`, `rddensity`, and `modelsummary`. If you try to load one of those packages with `library(tidyverse)` or `library(rdrobust)`, etc., and R gives an error that the package is missing, use the "Packages" panel in RStudio to install it.

    (Alternatively, you can open the project named "Problem Set 6" on RStudio.cloud and complete the assignment in your browser without needing to install anything. [This link should take you to the project](https://rstudio.cloud/spaces/205054/project/3424174)—if it doesn't, log in and look for the project named "Problem Set 6.")

2. Rename the R Markdown file named `your-name_problem-set-6.Rmd` to something that matches your name and open it in RStudio.

3. Complete the tasks given in the R Markdown file. There are questions **marked in bold**. Your job is to answer those questions. You don't need to put your answers in bold or ALL CAPS or anything, and you can remove the question text if you want.

    Fill out code in the empty chunks provided (you can definitely copy, paste, and adapt from other code in the document or [the example page on regression discontinuity](/example/rdd/)—don't try to write everything from scratch!).

    You'll need to insert your own code chunks. Rather than typing them by hand (that's tedious!), use the "Insert" button at the top of the editing window, or press  <kbd>⌥</kbd> + <kbd>⌘</kbd> + <kbd>I</kbd> on macOS, or <kbd>ctrl</kbd> + <kbd>alt</kbd> + <kbd>I</kbd> on Windows.

    <img src="/img/assignments/insert-chunk-button.png" width="19%" />

    Remember that you can run an entire chunk by clicking on the green play arrow in the top right corner of the chunk. You can also run lines of code line-by-line if you place your cursor on some R code and press <kbd>⌘</kbd> + <kbd>enter</kbd> (for macOS users) or <kbd>ctrl</kbd> + <kbd>enter</kbd> (for Windows users).

    Make sure you run each chunk sequentially. If you run a chunk in the middle of the document without running previous ones, it might not work, since previous chunks might do things that later chunks depend on.

4. When you're all done, click on the "Knit" button at the top of the editing window and create an HTML or Word version (or PDF if you've [installed **tinytex**](/resource/install/#install-tinytex)) of your document. Upload that file to iCollege.

<img src="/img/assignments/knit-button.png" width="30%" />



