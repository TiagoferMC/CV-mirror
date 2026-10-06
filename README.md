# Tiago Fernandes' CV

This repo contains the LaTex files and build script for my Curriculum Vitae/
Résumé.

It utilizes pdflatex and latexmk to produce multiple CVs, each optimized
for a specific job position.

# Usage
To produce the CVs, just run `make` or specify a target.

Current supported targets are `developer` and `sysadmin`.

The final files will be placed in `./out/<target>` and be called
`CV-<target>.pdf`

