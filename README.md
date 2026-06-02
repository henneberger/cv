# cv
## [Resume PDF](./cv.pdf)

This is a fork of the friggeri-cv repository, which no longer exists. Latex dependencies are maintained through a docker image.

# Improvements / Changes
 - Dockerized latex resume based off of the friggeri
 - Formatted to US Letter paper

# Build (Reliable)
Prerequisite: Docker.

Build the PDF in a repeatable containerized environment:
```bash
make build
```

This command:
- Builds the local image from `Dockerfile`
- Runs `latexmk` with XeLaTeX (multi-pass) so references/header rendering converge reliably
- Produces `cv.pdf` in the repository root

Alternative:
```bash
./compile_container.sh
```

# Example
Generate preview images for every page after building the PDF:
```bash
./update_samples.sh
```

![CV page 1](/sample-1.png)
![CV page 2](/sample-2.png)

# License
CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)

## TODO
 - Evaluate open font alternatives (e.g. Roboto, Lato, Raleway) and tune rendering quality.
 - Slim down the latex dependencies in the docker container (currently large).
 - Printing looks off
