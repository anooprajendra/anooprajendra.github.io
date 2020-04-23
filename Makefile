
GATSBY_PROJECT=gatsby-starter-hello-world

.PHONY: build install clean


build: resume gatsby

install: build
	mkdir -p pages
	mv resume/resume.pdf pages/
	mv resume/resume.html pages/
	(				\
	cd $(GATSBY_PROJECT)/public;	\
	find . -type f | cpio -pudv ../../pages; \
	)

clean:
	make -C resume clean
	rm -rf $(GATSBY_PROJECT)/public

.PHONY: resume
resume:
	make -C resume all

.PHONY: gatsby
gatsby:
	(				\
		cd $(GATSBY_PROJECT); 	\
		gatsby build;		\
	)
