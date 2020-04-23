GATSBY_PROJECT=bootup

.PHONY: build install clean


build: resume $(GATSBY_PROJECT)

install: build
	mkdir -p pages
	cp resume/resume.pdf pages/
	cp resume/resume.html pages/
	( cd $(GATSBY_PROJECT)/public && find . -type f | cpio -pudv ../../pages )

clean:
	make -C resume clean
	make -C $(GATSBY_PROJECT) clean
	rm -rf pages

.PHONY: resume $(GATSBY_PROJECT)
resume $(GATSBY_PROJECT):
	make -C $@ all
