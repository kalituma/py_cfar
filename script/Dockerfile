FROM ubuntu:16.04
WORKDIR /home
RUN apt-get update && \
    apt-get install -y software-properties-common && \
    add-apt-repository ppa:deadsnakes/ppa && \
    apt-get update && \
    apt-get install -y \
        python3.7-dev libavcodec-dev libavformat-dev libswscale-dev libgsl-dev \
        libgstreamer-plugins-base1.0-dev libgstreamer1.0-dev libgtk-3-dev libopenexr-dev \
        libpng-dev libjpeg-dev libtiff-dev libwebp-dev git wget cmake vim && \
    wget https://bootstrap.pypa.io/get-pip.py && \
    python3.7 get-pip.py && \
    pip3 install numpy matplotlib scikit-image && \
    wget https://github.com/opencv/opencv/archive/refs/tags/3.4.4.tar.gz && \
    tar -xvf 3.4.4.tar.gz && rm 3.4.4.tar.gz
WORKDIR /home/opencv-3.4.4
RUN mkdir BUILD && cd BUILD && cmake -DPYTHON_DEFAULT_EXECUTABLE=python3.7 .. && make -j4 && make install