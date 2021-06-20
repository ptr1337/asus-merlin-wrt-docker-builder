# asus-merlin-wrt-docker-builder
## Docker Asus Merlin WRT image builder

For easily build your image we have created a docker image. The only thing you need to install is docker and docker-compose.
You have the possibility to build the docker image yourself or download the image from docker hub.
The prebuilt docker images are available for the following architectures:

Here you find the image on the docker-hub:

[pttrr/asus-merlin-wrt-builder](https://hub.docker.com/r/pttrr/asus-merlin-wrt-builder)

## Installing docker and docker-compose

Docker and docker-compose are for following operating systems available:

* Linux (all distros)
* Mac
* Windows

You will find how to install docker and docker-compose for your operating system here:

https://docs.docker.com/get-docker/

## Usage 

- Right now ive only created a bash file which pull's the Git Repos and create the correct toolchain for the ac86u, right now i didnt tested other devices. 
- Clone the repo with: 'git clone https://github.com/ptr1337/asus-merlin-wrt-builder-docker'
- Then run the following command: 'docker-compose up -d' ; it will pull the prebuilt image with the script
- Then run 'docker exec -it asus-merlin-wrt-builder bash'
- Run the script and compile your own firmware
- If using the docker-compose.yml , you can move your built firmwares into /images which can be found in the started Directory

