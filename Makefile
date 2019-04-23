all: Rmd

MD_FILE_LIST=index.md $(wildcard [0-9][0-9]*.md)

RMD_FILE_LIST=$(patsubst %.md,%.Rmd,$(MD_FILE_LIST))

%.Rmd: %.md
	rm -f *.Rmd;  ln -sf $^ $@

Rmd: $(RMD_FILE_LIST)

html:
	Rscript -e "rmarkdown::render_site(output_format = 'bookdown::gitbook', encoding = 'UTF-8')"

pdf:
	Rscript -e "rmarkdown::render_site(output_format = 'bookdown::pdf_book', encoding = 'UTF-8')"