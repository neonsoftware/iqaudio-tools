# iqaudio-tools
Debian packages for the iqaudio DAQ and DAQ+ tools

# User Guide

## Install

1) install a standard raspbian OS on the raspberry pi
2) Execute the following lines:
```
apt-get update && apt-get install -y gnupg2
curl -s --compressed "https://neonsoftware.github.io/iqaudio-tools/raspi/KEY.gpg" | apt-key add -
curl -s --compressed -o /etc/apt/sources.list.d/iqaudio.list "https://neonsoftware.github.io/iqaudio-tools/raspi/iqaudio.list"
apt update
sudo apt install iqaudio-tools
```

# Developer Guide

## Build the debian package

```
cd iqaudio-rotary-volume
mkdir -p build
cd build
cmake ..
cpack
```

## Update the debian repository

```
cd raspi
./clean.sh
mv ../iqaudio-rotary-volume/build/*.deb .
./package.sh
```
