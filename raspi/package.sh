dpkg-scanpackages --multiversion . > Packages
gzip -k -f Packages
apt-ftparchive release . > Release
gpg --default-key "dev@neonsw.com" -abs -o - Release > Release.gpg
gpg --default-key "dev@neonsw.com" --clearsign -o - Release > InRelease
