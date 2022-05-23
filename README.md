# iqaudio-tools
Debian packages for the iqaudio DAQ and DAQ+ tools

# Install

```
apt-get update && apt-get install -y gnupg2
curl -s --compressed "https://neonsoftware.github.io/iqaudio-tools/raspi/KEY.gpg" | apt-key add -
curl -s --compressed -o /etc/apt/sources.list.d/iqaudio.list "https://neonsoftware.github.io/iqaudio-tools/raspi/iqaudio.list"
apt update
```
