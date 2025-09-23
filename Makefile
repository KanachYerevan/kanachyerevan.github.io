DOCKER_FOLDERS = -v $(PWD):/app -w /app
DOCKER_IMAGE = docker.io/jauderho/zola

serve:
	zola serve

build:
	rm -rf dist
	mkdir -p dist
	docker run --rm $(DOCKER_FOLDERS) $(DOCKER_IMAGE) build
	find dist -type f -print0 | xargs -0 ls -ldh
