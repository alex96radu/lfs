tar -xvf sysvinit-2.99.tar.xz
cd sysvinit-2.99
patch -Np1 -i ../sysvinit-2.99-consolidated-1.patch
make
make install
cd ..
rm -Rf sysvinit-2.99