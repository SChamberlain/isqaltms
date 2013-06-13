all: manuscript manuscript2

manuscript: manuscript.md
	pandoc --from=markdown_phpextra -H margins.sty -V fontsize=11pt --bibliography refs.bib manuscript.md -o manuscript.pdf

manuscript2: manuscript2.md
	pandoc -H margins.sty -V fontsize=12pt --bibliography refs.bib manuscript2.md -o manuscript2.pdf

fromrmd: manuscript_rmd2.md
	Rscript -e 'library(knitr); setwd("~/github/sac/isqaltms/"); knit("manuscript_rmd.Rmd")'
	sed '1,2d' manuscript_rmd.md > manuscript_rmd2.md
	# sed '/opts_chunk/d' manuscript_rmd.md > manuscript_rmd2.md
	# pandoc --from=markdown_phpextra -H margins.sty -V fontsize=11pt --bibliography refs.bib manuscript_rmd2.md -o manuscript.pdf
	# pandoc --from=markdown_phpextra -H margins.sty -V fontsize=11pt manuscript_rmd2.md -o manuscript.pdf
	pandoc -H margins.sty -V fontsize=10pt --bibliography refs.bib manuscript_rmd2.md -o manuscript.pdf

2tex: isq_ms.Rnw
	Rscript -e 'library(knitr); setwd("~/github/sac/isqaltms/"); knit("isq_ms.Rnw")'
	# pandoc -H margins.sty -V fontsize=11pt --bibliography refs.bib isq_ms.tex -o isq_ms.pdf

tex2doc: isq_ms.tex
	pandoc --bibliography refs.bib -V fontsize=12pt -s isq_ms.tex -o isq_ms.docx

2md: isq_ms.tex
	pandoc --bibliography refs.bib -V fontsize=12pt -s isq_ms.tex -o isq_ms.md

md2doc: isq_ms.md
	pandoc --bibliography refs.bib -V fontsize=12pt -s isq_ms.md -o isq_ms.docx