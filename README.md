# mingw-w64-boost

Cross-compiled boost with mingw-w64 for Linux.

## Build

#### 1. Clone Sources
    git clone https://github.com/libmingw-w64/libboost-mingw-w64.git
    cd libboost-mingw-w64
    git submodule update --init --recursive

#### 2. Install required dependencies (for Debian/Ubuntu)
    sudo apt install -y libz-mingw-w64-dev build-essential gcc g++ cmake \
    	binutils-mingw-w64 gcc-mingw-w64-x86-64 g++-mingw-w64-x86-64 gcc-mingw-w64-i686 g++-mingw-w64-i686

#### 3. Build
    # Simplly run bash script
    ./build.debian.sh

## Install

libboost-*.a files and headers are located in `libboost-mingw-w64` directories in source root.

#### Install libraries into root system (for Debian/Ubuntu)
    sudo cp -R <PATH_TO_SOURCE>/libboost-mingw-w64/lib /usr/x86_64-w64-mingw32/lib
    sudo cp -R <PATH_TO_SOURCE>/libboost-mingw-w64/include/boost /usr/x86_64-w64-mingw32/include
Make sure `<PATH_TO_SOURCE>` must be modified to your environment.

## Tested Environment
- Debian 10 (Buster)
- Ubuntu 20.04.3 LTS
