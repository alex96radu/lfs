tar -xvf diffutils-3.8.tar.xz
cd diffutils-3.8
./configure --prefix=/usr
make
make check
make install
cd ..
rm -Rf diffutils-3.8