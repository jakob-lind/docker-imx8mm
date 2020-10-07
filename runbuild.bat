@echo off
docker run -it --rm --mount volume-driver=vieux/sshfs,src=imx8mm,target=/root/poky docker-imx8mm ./build.sh

