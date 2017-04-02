# cv
This is a fork of the friggeri-cv repository, which no longer exists. Latex dependencies are maintained through a docker image.

# Improvements / Changes
 - Dockerized latex resume based off of the friggeri
 - Formatted to US Letter paper

# To Run
You will need the proper Helvetica Neue fonts in the path, which can be found online. Execute this command to generate the cv and a cv.pdf will hopefully appear.
```
./dockercmd.sh xelatex cv.tex
```

# Example
![Image of CV](/sample.png)

# License
CC BY-NC-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/)

## TODO
 - The header doesn't appear on first run and takes an additional run to fix.
 - Fix docker image tag / hard coded image id
 - Remove hard coded Helvetica Neue font references, explore alternative OpenFonts such as roboto, lato, or raleway. Current font looks a little blurry.
 - Slim down the latex dependencies in the docker container (currently @4gb)
 - Printing looks off