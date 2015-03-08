# Docker Par4all

Par4All is an automatic parallelizing and optimizing compiler (workbench) for C and Fortran sequential programs.
For more information visit http://www.par4all.org/

This repository contains Dockerfile to build an evironment for running Par4all on Ubuntu.

## Build Par4all
Clone git repository and build an image:
```
> git clone https://github.com/vrann/docker-par4all.git
> docker build -t par4all docker-par4all/
```
OR easier option is to pull pre-built image from the Docker Hub:
```
> docker pull vrann/par4all
```

## Run Par4all:
0. Check user guide about docker volumes to see limitations on the Mac/Windows https://docs.docker.com/userguide/dockervolumes/
1. Create a new directory. It will contain source code for parallelisation. Let's say it is called /Users/path/to/sources. Move all sources there. 
2. Run docker container and map a volume "/sources" to the created directory:
```
> docker run -v /Users/path/to/sources:/sources -it par4all
```

Content of the created directory on the host machine will be available from inside container by /sources path. Now everything is ready to execute Par4all. As far as container was run in interactive mode, user shell is running inside container. Execute "p4a" command -- it is entry point to parallelization programm. 

In order to have access to the output of paralelization later on the host system, point output-dir to the same /sources directory.
```
> p4a [options] /sources/file --output-dir=/sources/output 
```
