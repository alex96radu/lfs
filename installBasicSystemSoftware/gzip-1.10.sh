tar -xvf gzip-1.10.tar.xz
cd gzip-1.10
./configure --prefix=/usr
make
make check
make install
cd ..
rm -Rf gzip-1.10