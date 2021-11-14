```{r, load_refs, include=FALSE, cache=FALSE}

library(RefManageR)
BibOptions(check.entries = FALSE,
           bib.style = "authoryear",
           cite.style = "alphabetic",
           style = "markdown",
           hyperlink = FALSE,
           dashed = FALSE)
myBib <- ReadBib("myBib.bib", check = FALSE)

```
extra_css <- list(
  ".small" = list(font-size = 90%),
  ".big" =   list(font-size = 1.5rem,
                  color: blue),
  ".large" = list(font-size = 120%),
  ".Large" = list(font-size = 144%),
  ".full-width" = list(
    display = "flex",
    width = "100%",
    flex = "1 1 auto"
  )
)






xaringanExtra::use_logo(
  image_url = "https://raw.githubusercontent.com/rstudio/hex-stickers/master/PNG/xaringan.png",
  link_url = "http://slides.yihui.name/xaringan",
  position = xaringanExtra::css_position(top = "1em", right = "1em")
)


width = "310px",
height = "90px",



Bibliography and citations - yihui/xaringan Wiki

It is possible to cite sources from a .bib file using the RefManageR package.

Setup the BibOptions at the beginning of your slides. Here is an example:
  
  ```{r, load_refs, include=FALSE, cache=FALSE}
library(RefManageR)
BibOptions(check.entries = FALSE,
           bib.style = "authoryear",
           cite.style = "alphabetic",
           style = "markdown",
           hyperlink = FALSE,
           dashed = FALSE)
myBib <- ReadBib("./myBib.bib", check = FALSE)
```

Now you can cite any entry from your .bib file inline using Citet(), Citep(), AutoCite(), etc. (see RefManageR for more information).

In order to automatically generate your bibliography, use the PrintBibliography() function inside a knitr chunk in the slide where you would like the references to appear. The function will search the entire .Rmd document for your citations and include them in the output. Here is an example:
  
  # References
  
  ```{r refs, echo=FALSE, results="asis"}
PrintBibliography(myBib)
```

As of RefManageR version 1.1.0 you can restrict the output using the start and end arguments. This is useful if your .Rmd file includes too many citations to fit in a single slide.

PrintBibliography(bib, start = 1, end = 7)

-----
  
  
  
  
  
  
  It is possible to cite sources from a .bib file using the RefManageR package.

Setup the BibOptions at the beginning of your slides. Here is an example:
  
  ```{r, load_refs, include=FALSE, cache=FALSE}
library(RefManageR)
BibOptions(check.entries = FALSE,
           bib.style = "authoryear",
           cite.style = "alphabetic",
           style = "markdown",
           hyperlink = FALSE,
           dashed = FALSE)
myBib <- ReadBib("./myBib.bib", check = FALSE)
```

Now you can cite any entry from your .bib file inline using Citet(), Citep(), AutoCite(), etc. (see RefManageR for more information).

In order to automatically generate your bibliography, use the PrintBibliography() function inside a knitr chunk in the slide where you would like the references to appear. The function will search the entire .Rmd document for your citations and include them in the output. Here is an example:
  
  # References
  
  ```{r refs, echo=FALSE, results="asis"}
PrintBibliography(myBib)
```

As of RefManageR version 1.1.0 you can restrict the output using the start and end arguments. This is useful if your .Rmd file includes too many citations to fit in a single slide.

PrintBibliography(bib, start = 1, end = 7)

