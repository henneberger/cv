#!/usr/bin/env bash
set -euo pipefail

mv cv.pdf sample.pdf

# Generate a single preview image from the first page.
if command -v magick >/dev/null 2>&1; then
  magick -verbose -density 200 "sample.pdf[0]" -quality 200 -sharpen 1.0 sample.png
else
  convert -verbose -density 200 "sample.pdf[0]" -quality 200 -sharpen 1.0 sample.png
fi

rm -f sample-*.png
