# cv
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
![Image of CV](/sample.png)
# License
CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)

## TODO
 - The header doesn't appear on first run and takes an additional run to fix.
 - Remove hard coded Helvetica Neue font references, explore alternative OpenFonts such as roboto, lato, or raleway. Current font looks a little blurry.
 - Slim down the latex dependencies in the docker container (currently @4gb)
 - Printing looks off
