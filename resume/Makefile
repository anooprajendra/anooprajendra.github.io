default: all

all: resume.pdf resume.html

experience = experiences.md $(shell ls experiences/*.md | sort -r)

MDFILES = header.md bio.md summary.md skills.md \
	   $(experience) education.md end.md

resume.tex:
	cat $(MDFILES) | pandoc -o resume.tex

resume.pdf:
ifeq ($(shell lsb_release -c -s), focal)
LATEX_ENG=--pdf-engine=xelatex
else
LATEX_ENG=--latex-engine=xelatex
endif

resume.pdf: $(MDFILES)
	cat $(MDFILES) | pandoc -o resume.pdf $(LATEX_ENG)

resume.html: resume.pdf
	cat $(MDFILES) | pandoc -o resume.html

.PHONY: clean
clean:
	rm -rf resume.*
