docker build -t cv .
exec docker run --rm -i --net=none -v "$PWD":/data cv xelatex cv.tex