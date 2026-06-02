#!/usr/bin/env bash
set -euo pipefail

PDF_SOURCE="${1:-cv.pdf}"

rm -f sample.png sample-*.png

# Generate one preview image per PDF page. Keep sample.png as an alias for page 1.
if command -v magick >/dev/null 2>&1; then
  magick -verbose -density 200 "${PDF_SOURCE}" -quality 200 -sharpen 1.0 -scene 1 sample-%d.png
else
  convert -verbose -density 200 "${PDF_SOURCE}" -quality 200 -sharpen 1.0 -scene 1 sample-%d.png
fi

cp sample-1.png sample.png
