docker build -t resume/latex .
exec docker run --rm -i --net=none -v "$PWD":/data resume/latex "$@"