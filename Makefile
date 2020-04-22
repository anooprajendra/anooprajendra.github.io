.PHONY: build install clean

build: 
	make -C resume all

install:
	mkdir -p pages
	mv resume/resume.pdf pages/
	mv resume/resume.html pages/

clean:
	make -C resume clean
