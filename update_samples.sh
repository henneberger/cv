./dockercmd.sh xelatex cv.tex
mv cv.pdf sample.pdf
sips -s format png sample.pdf --out sample.png