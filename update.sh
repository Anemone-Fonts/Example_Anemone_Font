echo Creating New .deb packages
./package.sh

# -- expect this to fail if you haven't created them previously --
echo Removing Old Compressed Packages File
rm -r Packages
rm -r Packages.bz2
rm -r Packages.gz
# --

# -- Will scan the current directory and all sub directories for .deb files --
echo Creating New Packages file
dpkg-scanpackages -m . /dev/null > Packages
# -- Also will require installing 'dpkg-scanpackages' via homebrew if on macOS/OS X --

echo Compressing New Packages List
Bzip2 -fks Packages
gzip -c Packages > Packages.gz
