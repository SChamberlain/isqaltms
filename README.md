isqaltms manuscript
==================

If you want to read this paper, click on `isq_ms_latest.pdf` and then "view raw", or just click [here](https://github.com/SChamberlain/isqaltms/blob/master/isq_ms_latest.pdf?raw=true).

If you want to comment on it go to the [Issues tab](https://github.com/schamberlain/isqaltms/issues?page=1&state=open) and write something.


Manuscript for a special issue in [Information Standards Quarterly](http://www.niso.org/publications/isq/). 

This manuscript is written from the viewpoint of consuming altmetrics APIs, vs. building/deploying them.

To compile, from the command line:

+ edit 'isq_ms.Rnw'
+ run in terminal: `Rscript -e 'library(knitr); setwd("~/github/sac/isqaltms/"); knit("isq_ms.Rnw")'`
+ I then use Texpad OSX app to view and compile to pdf