tar -xvf zlib-1.2.11.tar.xz
cd zlib-1.2.11
./configure --prefix=/usr
make
make check
make install
rm -fv /usr/lib/libz.a
cd ..
rm -Rf zlib-1.2.11