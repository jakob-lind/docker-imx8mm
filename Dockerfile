FROM ubuntu:18.04
RUN apt -y update
RUN apt -y full-upgrade
RUN apt -y install locales locales-all gawk curl git-core git-lfs diffstat unzip texinfo build-essential chrpath libsdl1.2-dev xterm gperf bison gcc-multilib g++-multilib repo wget cpio dos2unix
RUN apt -y autoremove
ENV LANG=en_US.UTF-8  
ENV LANGUAGE=en_US:en  
ENV LC_ALL=en_US.UTF-8
RUN locale-gen "en_US.UTF-8"
ENV MACHINE=mcm-imx8m-mini
ENV SDKMACHINE=i686-mingw32
RUN git config --global user.name "RaySafe Builder"
RUN git config --global user.email "noreply@raysafe.com"
RUN git config --global color.ui false
WORKDIR /root/poky
RUN repo init -u https://github.com/jakob-lind/boot2qt-imx8mm-manifest.git -m v5.15.1.xml
RUN repo sync

