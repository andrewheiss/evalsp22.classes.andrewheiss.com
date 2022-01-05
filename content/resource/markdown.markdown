---
title: Using Markdown
date: "2020-01-13"
menu:
  resource:
    parent: Guides
    weight: 2
type: docs
toc: true
# output:
#   blogdown::html_page:
#       toc: TRUE
#       fig_caption: yes
---
<script src="/rmarkdown-libs/kePrint/kePrint.js"></script>
<link href="/rmarkdown-libs/lightable/lightable.css" rel="stylesheet" />

[Markdown](https://daringfireball.net/projects/markdown/) is a special kind of markup language that lets you format text with simple syntax. You can then use a converter program like [pandoc](https://pandoc.org/) to convert Markdown into whatever format you want: HTML, PDF, Word, PowerPoint, etc. ([see the full list of output types here](https://pandoc.org/MANUAL.html#option--to))

<textarea rows="1" class="invisible-text">Delete this text and start playing with Markdown here!</textarea>



<script src="/js/stackedit.min.js"></script>
<script src="/js/markdown-config.js"></script>


## Basic Markdown formatting

<table>
<colgroup>
<col width="40%" />
<col width="21%" />
<col width="38%" />
</colgroup>
<thead>
<tr class="header">
<th>Type…</th>
<th>…or…</th>
<th>…to get</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre>Some text in a paragraph.<br>
More text in the next paragraph. Always
use empty lines between paragraphs.</pre></td>
<td></td>
<td><p>Some text in a paragraph.</p>
<p>More text in the next paragraph. Always
use empty lines between paragraphs.</p></td>
</tr>
<tr class="even">
<td><code>*Italic*</code></td>
<td><code>_Italic_</code></td>
<td><em>Italic</em></td>
</tr>
<tr class="odd">
<td><code>**Bold**</code></td>
<td><code>__Bold__</code></td>
<td><strong>Bold</strong></td>
</tr>
<tr class="even">
<td><code># Heading 1</code></td>
<td></td>
<td><h1 class="smaller-h1">
Heading 1
</h1></td>
</tr>
<tr class="odd">
<td><code>## Heading 2</code></td>
<td></td>
<td><h2 class="smaller-h2">
Heading 2
</h2></td>
</tr>
<tr class="even">
<td><code>### Heading 3</code></td>
<td></td>
<td><h3 class="smaller-h3">
Heading 3
</h3></td>
</tr>
<tr class="odd">
<td>(Go up to heading level 6 with <code>######</code>)</td>
<td></td>
<td></td>
</tr>
<tr class="even">
<td><code>[Link text](http://www.example.com)</code></td>
<td></td>
<td><a href="http://www.example.com">Link text</a></td>
</tr>
<tr class="odd">
<td><code>![Image caption](/path/to/image.png)</code></td>
<td></td>
<td><img src="/img/mstile-144x144.png" title="fig:" alt="Class logo" /></td>
</tr>
<tr class="even">
<td>`<code>Inline code` with backticks</code></td>
<td></td>
<td><code>Inline code</code> with backticks</td>
</tr>
<tr class="odd">
<td><code>&gt; Blockquote</code></td>
<td></td>
<td><blockquote>
<p>Blockquote</p>
</blockquote></td>
</tr>
<tr class="even">
<td><pre>- Things in
- an unordered
- list</pre></td>
<td><pre>* Things in
* an unordered
* list</pre></td>
<td><ul>
<li>Things in</li>
<li>an unordered</li>
<li>list</li>
</ul></td>
</tr>
<tr class="odd">
<td><pre>1. Things in
2. an ordered
3. list</pre></td>
<td><pre>1) Things in
2) an ordered
3) list</pre></td>
<td><ol style="list-style-type: decimal">
<li>Things in</li>
<li>an ordered</li>
<li>list</li>
</ol></td>
</tr>
<tr class="even">
<td><pre>Horizontal line

---</pre></td>
<td><pre>Horizontal line

***</pre></td>
<td><p>Horizontal line</p>
<hr /></td>
</tr>
</tbody>
</table>

## Math

### Basic math commands

Markdown uses LaTeX to create fancy mathematical equations. There are like a billion little options and features available for math equations—you can find [helpful examples of the the most common basic commands here](http://www.malinc.se/math/latex/basiccodeen.php). In this class, these will be the most common things you'll use:

<table class="table" style="margin-left: auto; margin-right: auto;">
 <thead>
  <tr>
   <th style="text-align:left;"> Description </th>
   <th style="text-align:left;"> Command </th>
   <th style="text-align:left;"> Output </th>
  </tr>
 </thead>
<tbody>
  <tr grouplength="4"><td colspan="3" style="border-bottom: 1px solid;"><strong>Letters</strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Roman letters </td>
   <td style="text-align:left;"> <code>a b c d e f</code> </td>
   <td style="text-align:left;"> \(a\ b\ c\ d\ e\ f\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Greek letters (see <a href="https://www.overleaf.com/learn/latex/List_of_Greek_letters_and_math_symbols">this</a> for all possible letters) </td>
   <td style="text-align:left;"> <code>\alpha \beta \Gamma \gamma</code> <br> <code>\Delta \delta \epsilon</code> </td>
   <td style="text-align:left;"> \(\alpha\ \beta\ \Gamma\ \gamma\ \Delta\ \delta\ \epsilon\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Letters will automatically be italicized and treated as math variables;<br>if you want actual text in the math, use <code>\text{}</code> </td>
   <td style="text-align:left;"> Ew: <code>Treatment = \beta</code> <br>Good: <code>\text{Treatment} = \beta</code> </td>
   <td style="text-align:left;"> Ew: \(Treatment = \beta\)<br>Good: \(\text{Treatment} = \beta\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Extra spaces will automatically be removed; if you want a space, use <code>\ </code> </td>
   <td style="text-align:left;"> No space: <code>x y</code> <br> Space: <code>x\ y</code> </td>
   <td style="text-align:left;"> No space: \(x y\) <br>Space: \(x \ y\) </td>
  </tr>
  <tr grouplength="6"><td colspan="3" style="border-bottom: 1px solid;"><strong>Superscripts and subscripts</strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use <code>^</code> to make one character superscripted. </td>
   <td style="text-align:left;"> <code>x^2</code> </td>
   <td style="text-align:left;"> \(x^2\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Wrap the superscripted part in <code>{}</code> if there's more than one character </td>
   <td style="text-align:left;"> <code>x^{2+y}</code> </td>
   <td style="text-align:left;"> \(x^{2+y}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use <code>_</code> to make one character subscripted </td>
   <td style="text-align:left;"> <code>\beta_1</code> </td>
   <td style="text-align:left;"> \(\beta_1\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Wrap the subscripted part in <code>{}</code> if there's more than one character </td>
   <td style="text-align:left;"> <code>\beta_{i, t}</code> </td>
   <td style="text-align:left;"> \(\beta_{i, t}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use superscripts and subscripts simultaneously </td>
   <td style="text-align:left;"> <code>\beta_1^{\text{Treatment}}</code> </td>
   <td style="text-align:left;"> \(\beta_1^{\text{Treatment}}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> You can even nest them </td>
   <td style="text-align:left;"> <code>x^{2^{2^2}}</code> </td>
   <td style="text-align:left;"> \(x^{2^{2^2}}\) </td>
  </tr>
  <tr grouplength="9"><td colspan="3" style="border-bottom: 1px solid;"><strong>Math operations</strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Addition </td>
   <td style="text-align:left;"> <code>2 + 5 = 7</code> </td>
   <td style="text-align:left;"> \(2 + 5 = 7\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Subtraction </td>
   <td style="text-align:left;"> <code>2 - 5 = -3</code> </td>
   <td style="text-align:left;"> \(2 + 5 = -3\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Multiplication </td>
   <td style="text-align:left;"> <code>x \times y</code> <br> <code>x \cdot y</code> </td>
   <td style="text-align:left;"> \(x \times y\) <br> \(x \cdot y\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Division </td>
   <td style="text-align:left;"> <code>8 \div 2</code> </td>
   <td style="text-align:left;"> \(8 \div 2\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Fractions </td>
   <td style="text-align:left;"> <code>\frac{8}{2}</code> </td>
   <td style="text-align:left;"> \(\frac{8}{2}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Square roots; use <code>[3]</code> for other roots </td>
   <td style="text-align:left;"> <code>\sqrt{81} = 9</code> <br> <code>\sqrt[3]{27} = 3</code> </td>
   <td style="text-align:left;"> \(\sqrt{81} = 9\) <br> \(\sqrt[3]{27} = 3\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Summation; use sub/superscripts for extra details </td>
   <td style="text-align:left;"> <code>\sum x</code> <br> <code>\sum_{n=1}^{\infty} \frac{1}{n}</code> </td>
   <td style="text-align:left;"> \(\sum x\) <br> \(\sum_{n=1}^{\infty} \frac{1}{n}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Products; use sub/superscripts for extra details </td>
   <td style="text-align:left;"> <code>\prod x</code> <br> <code>\prod_{n=1}^{5} n^2</code> </td>
   <td style="text-align:left;"> \(\prod x\) <br> \(\prod_{n=1}^{5} n^2\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Integrals; use sub/superscripts for extra details </td>
   <td style="text-align:left;"> <code>\int x^2 \ dx</code> <br> <code>\int_{1}^{100} x^2 \ dx</code> </td>
   <td style="text-align:left;"> \(\int x^2 \ dx\) <br> \(\int_{1}^{100} x^2 \ dx\) </td>
  </tr>
  <tr grouplength="5"><td colspan="3" style="border-bottom: 1px solid;"><strong>Extra symbols</strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Add a bar for things like averages </td>
   <td style="text-align:left;"> <code>\bar{x}</code> </td>
   <td style="text-align:left;"> \(\bar{x}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use an overline for longer things </td>
   <td style="text-align:left;"> Ew: <code>\bar{abcdef}</code> <br> Good: <code>\overline{abcdef}</code> </td>
   <td style="text-align:left;"> Ew: \(\bar{abcdef}\) <br> Good: \(\overline{abcdef}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Add a hat for things like estimates </td>
   <td style="text-align:left;"> <code>\hat{y}</code> </td>
   <td style="text-align:left;"> \(\hat{y}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use a wide hat for longer things </td>
   <td style="text-align:left;"> Ew: <code>\hat{abcdef}</code> <br> Good: <code>\widehat{abcdef}</code> </td>
   <td style="text-align:left;"> Ew: \(\hat{abcdef}\) <br> Good: \(\widehat{abcdef}\) </td>
  </tr>
  <tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use arrows for DAG-like things </td>
   <td style="text-align:left;"> <code>Z \rightarrow Y \leftarrow X</code> </td>
   <td style="text-align:left;"> \(Z \rightarrow Y \leftarrow X\) </td>
  </tr>
  <tr grouplength="1"><td colspan="3" style="border-bottom: 1px solid;"><strong>Bonus fun</strong></td></tr>
<tr>
   <td style="text-align:left;padding-left: 2em;" indentlevel="1"> Use colors!; see <a href="https://www.overleaf.com/learn/latex/Using_colours_in_LaTeX">here</a> for more details and <a href="https://www.overleaf.com/learn/latex/Using_colours_in_LaTeX#Reference_guide">here</a> for a list of color names </td>
   <td style="text-align:left;"> <code>\color{red}{y} = \color{blue}{\beta_1 x_1}</code> </td>
   <td style="text-align:left;"> \(\color{red}{y}\ \color{black}{=}\ \color{blue}{\beta_1 x_1}\) </td>
  </tr>
</tbody>
</table>

### Using math inline

You can use math in two different ways: inline or in a display block. To use math inline, wrap it in single dollar signs, like ``\$y = mx + b\$``:

<table>
<colgroup>
<col width="52%" />
<col width="47%" />
</colgroup>
<thead>
<tr class="header">
<th>Type…</th>
<th>…to get</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><pre>Based on the DAG, the regression model for
estimating the effect of education on wages
is &dollar;\hat{y} = \beta_0 + \beta_1 x_1 + \epsilon&dollar;, or
&dollar;\text{Wages} = \beta_0 + \beta_1 \text{Education} + \epsilon&dollar;.</pre></td>
<td>Based on the DAG, the regression model for
estimating the effect of education on wages
is <span class="math inline">\(\hat{y} = \beta_0 + \beta_1 x_1 + \epsilon\)</span>, or
<span class="math inline">\(\text{Wages} = \beta_0 + \beta_1 \text{Education} + \epsilon\)</span>.</td>
</tr>
</tbody>
</table>

### Using math in a block

To put an equation on its own line in a display block, wrap it in double dollar signs, like this:

**Type…**

```text
The quadratic equation was an important part of high school math:

$$
x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
$$

But now we just use computers to solve for $x$.
```

**…to get…**

> The quadratic equation was an important part of high school math:
> 
> $$
> x = \frac{-b \pm \sqrt{b^2 - 4ac}}{2a}
> $$
> 
> But now we just use computers to solve for `\(x\)`.

---

### Dollar signs and math

Because dollar signs are used to indicate math equations, you can't just use dollar signs like normal if you're writing about actual dollars. For instance, if you write `This book costs \$5.75 and this other costs \$40`, Markdown will treat everything that comes between the dollar signs as math, like so: "This book costs $5.75 and this other costs $40". 

To get around that, put a backslash (`\`) in front of the dollar signs, so that `This book costs \\\$5.75 and this other costs \\\$40` becomes "This book costs <span>$5.75</span> and this other costs <span>$40</span>".


## Tables

There are 4 different ways to hand-create tables in Markdown—I say "hand-create" because it's normally way easier to use R to generate these things with packages like [**kableExtra**](https://cran.r-project.org/web/packages/kableExtra/vignettes/awesome_table_in_html.html) (use `kable()`) or [**pander**](https://rapporter.github.io/pander/) (use `pandoc.table()`). The two most common are simple tables and pipe tables. [You should look at the full documentation here](https://pandoc.org/MANUAL.html#tables).

**For simple tables, type…**

```text
  Right     Left     Center     Default
-------     ------ ----------   -------
     12     12        12            12
    123     123       123          123
      1     1          1             1

Table: Caption goes here
```

**…to get…**

| Right | Left |  Center | Default |
|------:|:-----|:-------:|---------|
|   12  |  12  |    12   |    12   |
|  123  |  123 |   123   |   123   |
|    1  |    1 |     1   |     1   |

Table: Caption goes here


**For pipe tables, type…**

```text
| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

Table: Caption goes here
```

**…to get…**

| Right | Left | Default | Center |
|------:|:-----|---------|:------:|
|   12  |  12  |    12   |    12  |
|  123  |  123 |   123   |   123  |
|    1  |    1 |     1   |     1  |

Table: Caption goes here


## Footnotes

There are two different ways to add footnotes ([see here for complete documentation](https://pandoc.org/MANUAL.html#footnotes)): regular and inline.

Regular notes need (1) an identifier and (2) the actual note. The identifier can be whatever you want. Some people like to use numbers like `[^1]`, but if you ever rearrange paragraphs or add notes before #1, the numbering will be wrong (in your Markdown file, not in the output; everything will be correct in the output). Because of that, I prefer to use some sort of text label:

**Type…**

```text
Here is a footnote reference[^1] and here is another [^note-on-dags].

[^1]: This is a note.

[^note-on-dags]: DAGs are neat. 

And here's more of the document.
```

**…to get…**

> Here is a footnote reference<a href="#fn1" class="footnote-ref" id="fnref1"><sup>1</sup></a> and here is another.<a href="#fn2" class="footnote-ref" id="fnref2"><sup>2</sup></a>
>
> And here's more of the document.
>
> <hr />
> 
> <div class="footnotes">
> <ol>
> <li id="fn1"><p>This is a note.<a href="#fnref1" class="footnote-back">↩︎</a></p></li>
> <li id="fn2"><p>DAGs are neat.<a href="#fnref2" class="footnote-back">↩︎</a></p></li>
> </ol>
> </div>

---

You can also use inline footnotes with `^[Text of the note goes here]`, which are often easier because you don't need to worry about identifiers:

**Type…**

```text
Causal inference is neat.^[But it can be hard too!]
```

**…to get…**

> Causal inference is neat.<a href="#fn3" class="footnote-ref" id="fnref3"><sup>1</sup></a>
>
> <hr />
> 
> <div class="footnotes">
> <ol>
> <li id="fn3"><p>But it can be hard too!<a href="#fnref3" class="footnote-back">↩︎</a></p></li>
> </ol>
> </div>

## Front matter

You can include a special section at the top of a Markdown document that contains metadata (or data about your document) like the title, date, author, etc. This section uses a special simple syntax named [YAML](https://learn.getgrav.org/16/advanced/yaml) (or "YAML Ain't Markup Language") that follows this basic outline: `setting: value for setting`. Here's an example YAML metadata section. Note that it must start and end with three dashes (`---`).

```yaml
---
title: Title of your document
date: "January 13, 2020"
author: "Your name"
---
```

You can put the values inside quotes (like the date and name in the example above), or you can leave them outside of quotes (like the title in the example above). I typically use quotes just to be safe—if the value you're using has a colon (`:`) in it, it'll confuse Markdown since it'll be something like `title: My cool title: a subtitle`, which has two colons. It's better to do this:

```yaml
---
title: "My cool title: a subtitle"
---
```

If you want to use quotes inside one of the values (e.g. your document is `An evaluation of "scare quotes"`), you can use single quotes instead:

```yaml
---
title: 'An evaluation of "scare quotes"'
---
```


## Citations

One of the most powerful features of Markdown + pandoc is the ability to automatically cite things and generate bibliographies. to use citations, you need to create a [BibTeX file](http://www.bibtex.org/) (ends in `.bib`) that contains a database of the things you want to cite. You can do this with bibliography managers designed to work with BibTeX directly (like [BibDesk](https://bibdesk.sourceforge.io/) on macOS), or you can use [Zotero](https://www.zotero.org/) (macOS and Windows) to export a `.bib` file. You can [download an example `.bib` file of all the readings from this class here](/resource/citations/).

[Complete details for using citations can be found here](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html). In brief, you need to do three things:

1. Add a `bibliography:` entry to the YAML metadata:

    ```yaml
    ---
    title: Title of your document
    date: "January 13, 2020"
    author: "Your name"
    bibliography: name_of_file.bib
    ---
    ```

2. Choose a citation style based on a CSL file. The default is Chicago author-date, but you can choose from 2,000+ [at this repository](https://github.com/citation-style-language/styles). Download the CSL file, put it in your project folder, and add an entry to the YAML metadata (or provide a URL to the online version):

    ```yaml
    ---
    title: Title of your document
    date: "January 13, 2020"
    author: "Your name"
    bibliography: name_of_file.bib
    csl: "https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl"
    ---
    ```

    Some of the most common CSLs are:
    
    - [Chicago author-date](https://raw.githubusercontent.com/citation-style-language/styles/master/chicago-author-date.csl)
    - [Chicago note-bibliography](https://raw.githubusercontent.com/citation-style-language/styles/master/chicago-note-bibliography.csl)
    - [Chicago full note-bibliography](https://raw.githubusercontent.com/citation-style-language/styles/master/chicago-fullnote-bibliography.csl) (no shortened notes or ibids)
    - [APA 7th edition](https://raw.githubusercontent.com/citation-style-language/styles/master/apa.csl)
    - [MLA 8th edition](https://raw.githubusercontent.com/citation-style-language/styles/master/modern-language-association.csl)

3. Cite things in your document. [Check the documentation for full details of how to do this](https://rmarkdown.rstudio.com/authoring_bibliographies_and_citations.html). Essentially, you use `@citationkey` inside square brackets (`[]`):

    |                                               Type…                                                |                                          …to get…                                           |
    | -------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------- |
    | `Causal inference is neat [@Rohrer:2018; @AngristPischke:2015].`                                   | Causal inference is neat (Rohrer 2018; Angrist and Pischke 2015).                           |
    | `Causal inference is neat [see @Rohrer:2018, p. 34; also @AngristPischke:2015, chapter 1].`        | Causal inference is neat (see Rohrer 2018, 34; also Angrist and Pischke 2015, chap. 1).     |
    | `Angrist and Pischke say causal inference is neat [-@AngristPischke:2015; see also @Rohrer:2018].` | Angrist and Pischke say causal inference is neat (2015; see also Rohrer 2018).              |
    | `@AngristPischke:2015 [chapter 1] say causal inference is neat, and @Rohrer:2018 agrees.`          | Angrist and Pischke (2015, chap. 1) say causal inference is neat, and Rohrer (2018) agrees. |

    After compiling, you should have a perfectly formatted bibliography added to the end of your document too:
    
    > Angrist, Joshua D., and Jörn-Steffen Pischke. 2015. *Mastering ’Metrics: The Path from Cause to Effect.* Princeton, NJ: Princeton University Press.
    > 
    > Rohrer, Julia M. 2018. “Thinking Clearly About Correlations and Causation: Graphical Causal Models for Observational Data.” *Advances in Methods and Practices in Psychological Science* 1 (1): 27–42. https://doi.org/10.1177/2515245917745629.


## Other references

These websites have additional details and examples and practice tools:

- [**CommonMark's Markdown tutorial**](https://commonmark.org/help/tutorial/): A quick interactive Markdown tutorial.
- [**Markdown tutorial**](https://www.markdowntutorial.com/): Another interactive tutorial to practice using Markdown.
- [**Markdown cheatsheet**](http://packetlife.net/media/library/16/Markdown.pdf): Useful one-page reminder of Markdown syntax.
- [**The Plain Person’s Guide to Plain Text Social Science**](http://plain-text.co/): A comprehensive explanation and tutorial about why you should write data-based reports in Markdown.
