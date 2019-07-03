# Build angular projects with the provided scripts and folders

Usage of the scripts:

- ./ng_new.sh **ProjectName** *options*
- ./ng_serve.sh **ProjectName** *options*
- ./ng_build.sh **ProjectName** *options*

## gitconfig and gnupg

Copy **~/.gitonfig** and **~/.gnupg/** from host system to **./overlay/home/node/**

## Project folders

Projects are created in the **./projects/** folder.

### Deploying an app

- *./ng_build **ProjectName***
- *cp Dockerfile_Example ./projects/**ProjectName**/dist/Dockerfile*
- Edit the Dockerfile: replace **ProjectName** with the name of the project
- *docker build -t="**ProjectName**:tagname" ./projects/**ProjectName**/dist/*
- *docker run -it --rm --init -p 80:80 **ProjectName**:tagname*
