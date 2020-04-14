default: all

all: resume.pdf resume.html

experience = experiences.md $(shell ls experiences/*.md | sort -r)

MDFILES = header.md bio.md summary.md skills.md \
	   $(experience) education.md end.md


.PHONY: resume.pdf
resume.pdf:
	cat $(MDFILES) | pandoc -o resume.pdf \
		--latex-engine=xelatex

.PHONY: resume.html
resume.html:
	cat $(MDFILES) | pandoc -o resume.html

.PHONY: clean
clean:
	rm -rf resume.pdf
