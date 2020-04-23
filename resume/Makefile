default: all

all: resume.pdf resume.html

experience = experiences.md $(shell ls experiences/*.md | sort -r)

MDFILES = header.md bio.md summary.md skills.md \
	   $(experience) education.md end.md

resume.tex:
	cat $(MDFILES) | pandoc -o resume.tex

resume.pdf: $(MDFILES)
	cat $(MDFILES) | pandoc -o resume.pdf \
		--latex-engine=xelatex

resume.html: resume.pdf
	cat $(MDFILES) | pandoc -o resume.html

.PHONY: clean
clean:
	rm -rf resume.*
