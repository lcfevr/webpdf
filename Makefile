git_version = $$(git branch 2>/dev/null | sed -e '/^[^*]/d'-e's/* \(.*\)/\1/')
npm_bin= `npm bin`

all: test
install:
	@npm install
travis: build-docker
jshint:
	@${npm_bin}/jshint .
start: install
	./bin/webpdf
build-docker:
	docker build . -t="webpdf"
docker-run-dev:
	docker run -it -p 8080:8080 --entrypoint=/bin/bash webpdf
docker-run:
	docker run -it -p 8080:8080 webpdf
.PHONY: test
