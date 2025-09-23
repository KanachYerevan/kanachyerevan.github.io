serve:
	zola serve

build:
	rm -rf dist
	mkdir -p dist
	zola build
	find dist -type f -print0 | xargs -0 ls -ldh
