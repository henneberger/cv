docker build -t cv .
exec docker run --rm -i --net=none -v "$PWD":/data cv xelatex cv.tex
mv cv.pdf sample.pdf

convert           \
   -verbose       \
   -density 200   \
   -trim          \
    sample.pdf    \
   -quality 200   \
   -flatten       \
   -sharpen 0x1.0 \
    sample.png