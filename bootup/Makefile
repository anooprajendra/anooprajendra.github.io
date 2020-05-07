NPM_MODULES = gatsby react react-dom
NPM_GLOBAL_MODULES = gatsby-cli

.PHONY: $(NPM_MODULES) $(NPM_GLOBAL_MODULES)

$(NPM_MODULES):
	npm install $@

$(NPM_GLOBAL_MODULES):
	npm install -g $@

.phony: bootstrap build install clean

bootstrap: $(NPM_MODULES) $(NPM_GLOBAL_MODULES)

build:
	gatsby build

install: build

clean:

all: build

default: build
