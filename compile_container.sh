#!/usr/bin/env bash
set -euo pipefail

IMAGE_NAME="${IMAGE_NAME:-cv:local}"
TEX_SOURCE="${1:-cv.tex}"

docker build -t "${IMAGE_NAME}" .
docker run --rm -i --net=none -v "$PWD":/data "${IMAGE_NAME}" \
  latexmk -xelatex -interaction=nonstopmode -halt-on-error "${TEX_SOURCE}"
