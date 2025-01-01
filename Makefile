DOCKER_FOLDERS = -v $(PWD):/srv/jekyll

build:
	mkdir -p .cache
	docker run --rm $(DOCKER_FOLDERS) -e JEKYLL_ROOTLESS=1 -e JEKYLL_ENV=production docker.io/jekyll/jekyll jekyll build
	find dist -type f | xargs ls -ldh

shell:
	mkdir -p .cache
	docker run -ti --rm $(DOCKER_FOLDERS) -e JEKYLL_ROOTLESS=1 docker.io/jekyll/jekyll bash

serve:
	mkdir -p .cache
	docker run -ti --net host --rm $(DOCKER_FOLDERS) -e JEKYLL_ROOTLESS=1 docker.io/jekyll/jekyll jekyll serve --watch
