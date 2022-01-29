tar -xvf autoconf-2.71.tar.xz
cd autoconf-2.71
./configure --prefix=/usr
make
make check
make install
cd ..
rm -Rf autoconf-2.71