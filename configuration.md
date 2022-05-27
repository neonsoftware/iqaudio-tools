## Image configuration steps

### Set iqaudio sound card as the only possible output

We want the iqaudio sound card to be the one and only sound output of the raspberry pi.

Here are the modifications to /boot/config.txt that renutralise the other possible two default audio outputs.
```
# Comment the following line. This removes analog output from sound options.
#dtparam=audio=on

# Modify this line, adding ",noaudio".
# This removes HDMI audio from the sound options.
dtoverlay=vc4-kms-v3d,noaudio
```

### Install packages

```
apt-get update && apt-get install -y gnupg2
curl -s --compressed "https://neonsoftware.github.io/iqaudio-tools/raspi/KEY.gpg" | apt-key add -
curl -s --compressed -o /etc/apt/sources.list.d/iqaudio.list "https://neonsoftware.github.io/iqaudio-tools/raspi/iqaudio.list"
apt update
```
