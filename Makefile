IMAGE_NAME ?= cv:local
TEX_SOURCE ?= cv.tex
PDF_OUTPUT ?= $(TEX_SOURCE:.tex=.pdf)

.PHONY: build docker-image clean

build: docker-image
	docker run --rm -i --net=none -v "$$PWD":/data $(IMAGE_NAME) \
		latexmk -xelatex -interaction=nonstopmode -halt-on-error $(TEX_SOURCE)

docker-image:
	docker build -t $(IMAGE_NAME) .

clean:
	docker run --rm -i --net=none -v "$$PWD":/data $(IMAGE_NAME) \
		latexmk -C $(TEX_SOURCE)
	rm -f $(PDF_OUTPUT)
