SYSADMIN_DIR := ./out/sysadmin
DEVELOPER_DIR := ./out/developer

.PHONY: all clean sysadmin developer

all: clean sysadmin developer

sysadmin:
	mkdir -p $(SYSADMIN_DIR)
	latexmk -pdf -interaction=nonstopmode \
		-outdir=$(SYSADMIN_DIR) \
		-jobname=CV-sysadmin \
		"-pdflatex=pdflatex -interaction=nonstopmode \
		%O \"\\def\\cvtype{sysadmin}\\input{%S}\"" \
		CV.tex

developer:
	mkdir -p $(DEVELOPER_DIR)
	latexmk -pdf -interaction=nonstopmode \
		-outdir=$(DEVELOPER_DIR) \
		-jobname=CV-developer \
		"-pdflatex=pdflatex -interaction=nonstopmode \
		%O \"\\def\\cvtype{developer}\\input{%S}\"" \
		CV.tex

clean:
	rm -rf out/* $(EXEC)

