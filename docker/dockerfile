# Use ubuntu xenial as a parent image
FROM ubuntu:xenial

RUN apt-get update

RUN apt-get install curl -y

RUN apt-get install make gcc g++ libx11-dev libxt-dev libgl1-mesa-dev libglu1-mesa-dev libfontconfig-dev libxrender-dev libncurses5-dev -y

RUN apt-get install libgstreamer-plugins-base0.10-dev -y

# Download slicer4.8.1

RUN SLICER_URL="download.slicer.org/bitstream/738960" && \
  curl -v -s -L $SLICER_URL | tar xz -C /tmp && \
  mv /tmp/Slicer* /opt/slicer

# Add Slicer to the path
RUN echo "PATH=${PATH}:/opt/slicer/" >> ~/.bashrc
RUN export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/slicer/lib/Slicer-4.8/cli-modules/
# add src
ADD ./src /src


