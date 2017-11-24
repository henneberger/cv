./dockercmd.sh xelatex cv.tex
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