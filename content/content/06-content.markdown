---
title: "Threats to validity"
linktitle: "6: Threats to validity"
date: "2022-02-17"
class_date: "2022-02-17"
menu:
  content:
    parent: Course content
    weight: 6
type: docs
toc: true
bibliography: "../../static/bib/references.bib"
csl: "../../static/bib/chicago-fullnote-bibliography-no-bib.csl"
slides: "06-slides"
---

## Readings

-   <i class="fas fa-file-pdf"></i> Guido Imbens, “Statistical Significance, *p*-Values, and the Reporting of Uncertainty.”[^1] This is available on iCollege, and [it’s also free here](https://doi.org/10.1257/jep.35.3.157).
-   <i class="fas fa-external-link-square-alt"></i> Randall Munroe, [“Significant”](https://xkcd.com/882/)
-   <i class="fas fa-external-link-square-alt"></i> Alexander Coppock, [“10 Things to Know About Statistical Power”](https://egap.org/resource/10-things-to-know-about-statistical-power/)
-   <i class="fas fa-trophy"></i> Play around with FiveThirtyEight, [“Hack Your Way To Scientific Glory”](https://projects.fivethirtyeight.com/p-hacking/)
-   <i class="fas fa-book"></i> Chapter 9 in *Impact Evaluation in Practice*[^2]
-   <i class="fas fa-book"></i> Chapter 11 in *The Effect*[^3]

## Slides

The slides for today’s lesson are available online as an HTML file. Use the buttons below to open the slides either as an interactive website or as a static PDF (for printing or storing for later). You can also click in the slides below and navigate through them with your left and right arrow keys.

{{% slide-buttons %}}

<ul class="nav nav-tabs" id="slide-tabs" role="tablist">
<li class="nav-item">
<a class="nav-link active" id="introduction-tab" data-toggle="tab" href="#introduction" role="tab" aria-controls="introduction" aria-selected="true">Introduction</a>
</li>
<li class="nav-item">
<a class="nav-link" id="construct-validity-tab" data-toggle="tab" href="#construct-validity" role="tab" aria-controls="construct-validity" aria-selected="false">Construct validity</a>
</li>
<li class="nav-item">
<a class="nav-link" id="statistical-conclusion-validity-tab" data-toggle="tab" href="#statistical-conclusion-validity" role="tab" aria-controls="statistical-conclusion-validity" aria-selected="false">Statistical conclusion validity</a>
</li>
<li class="nav-item">
<a class="nav-link" id="internal-validity-tab" data-toggle="tab" href="#internal-validity" role="tab" aria-controls="internal-validity" aria-selected="false">Internal validity</a>
</li>
<li class="nav-item">
<a class="nav-link" id="external-validity-tab" data-toggle="tab" href="#external-validity" role="tab" aria-controls="external-validity" aria-selected="false">External validity</a>
</li>
</ul>

<div id="slide-tabs" class="tab-content">

<div id="introduction" class="tab-pane fade show active" role="tabpanel" aria-labelledby="introduction-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#1">
</iframe>

</div>

</div>

<div id="construct-validity" class="tab-pane fade" role="tabpanel" aria-labelledby="construct-validity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#construct-validity">
</iframe>

</div>

</div>

<div id="statistical-conclusion-validity" class="tab-pane fade" role="tabpanel" aria-labelledby="statistical-conclusion-validity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#statistical-conclusion-validity">
</iframe>

</div>

</div>

<div id="internal-validity" class="tab-pane fade" role="tabpanel" aria-labelledby="internal-validity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#internal-validity">
</iframe>

</div>

</div>

<div id="external-validity" class="tab-pane fade" role="tabpanel" aria-labelledby="external-validity-tab">

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="/slides/06-slides.html#external-validity">
</iframe>

</div>

</div>

</div>

{{% div fyi %}}
**Fun fact**: If you type <kbd>?</kbd> (or <kbd>shift</kbd> + <kbd>/</kbd>) while going through the slides, you can see a list of special slide-specific commands.
{{% /div %}}

## Videos

Videos for each section of the lecture are [available at this YouTube playlist](https://www.youtube.com/playlist?list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ).

-   [Introduction](https://www.youtube.com/watch?v=46v8l60nQnI&list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ)
-   [Construct validity](https://www.youtube.com/watch?v=N4XYXuw_IA0&list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ)
-   [Statistical conclusion validity](https://www.youtube.com/watch?v=IziQBDzUJ6E&list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ)
-   [Internal validity](https://www.youtube.com/watch?v=ssz2DTfrGhw&list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ)
-   [External validity](https://www.youtube.com/watch?v=uK7YN6KTRT4&list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ)

You can also watch the playlist (and skip around to different sections) here:

<div class="embed-responsive embed-responsive-16by9">

<iframe class="embed-responsive-item" src="https://www.youtube.com/embed/playlist?list=PLS6tnpTr39sFJtz7egfUASfhhz6zuj7GZ" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>

</div>

## In-class stuff

Here are all the materials we’ll use in class:

-   [**Session 6 FAQ slides**](/slides/06-class.html) ([PDF](/slides/06-class.pdf))
-   [Zilch!](/resource/zilch/)
-   [<i class="fab fa-r-project"></i> Live R script](https://www.dropbox.com/s/akez7ssaiyt6um3/bayes-fun.R)
-   [<i class="fas fa-file-csv"></i> `restaurant_inspections.csv`](https://vincentarelbundock.github.io/Rdatasets/csv/causaldata/restaurant_inspections.csv)

[^1]: Guido W. Imbens, “Statistical Significance, *p*-Values, and the Reporting of Uncertainty,” *Journal of Economic Perspectives* 35, no. 3, Summer (2021): 157–74, doi:[10.1257/jep.35.3.157](https://doi.org/10.1257/jep.35.3.157).

[^2]: Paul J. Gertler et al., *Impact Evaluation in Practice*, 2nd ed. (Inter-American Development Bank; World Bank, 2016), <https://openknowledge.worldbank.org/handle/10986/25030>.

[^3]: Nick Huntington-Klein, *The Effect: An Introduction to Research Design and Causality* (Boca Raton, Florida: Chapman and Hall / CRC, 2021), <https://theeffectbook.net/>.
