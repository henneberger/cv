#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-cv:local}"
docker build -t "${IMAGE_NAME}" .

if [ "$#" -eq 0 ]; then
  set -- latexmk -xelatex -interaction=nonstopmode -halt-on-error cv.tex
fi

exec docker run --rm -i --net=none -v "$PWD":/data "${IMAGE_NAME}" "$@"
