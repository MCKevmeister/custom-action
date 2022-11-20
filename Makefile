KEYWORD=FIXED

run: build
	docker run --rm keybowrd-release-action $(KEYWORD)

build:
	docker build -t keybowrd-release-action .

test:
	./entrypoint.sh $(KEYWORD)
