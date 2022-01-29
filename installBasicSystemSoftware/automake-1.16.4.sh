tar -xvf automake-1.16.4.tar.xz
cd automake-1.16.4
./configure --prefix=/usr --docdir=/usr/share/doc/automake-1.16.4
make
make -j4 check
make install
cd ..
rm -Rf automake-1.16.4