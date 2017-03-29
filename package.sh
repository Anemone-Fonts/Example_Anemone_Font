echo Creating New .deb’s

# list all packages you want to create with the follow format 

# dpkg-deb -Zlzma -b raw/[package-name] deb/

dpkg-deb -Zlzma -b raw/Example_Anemone_Font deb/
