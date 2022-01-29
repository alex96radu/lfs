tar -xvf patch-2.7.6.tar.xz
cd patch-2.7.6
./configure --prefix=/usr
make
make check
make install
cd ..
rm -Rf patch-2.7.6