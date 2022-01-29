tar -xvf bc-5.0.0.tar.xz
cd bc-5.0.0
CC=gcc ./configure --prefix=/usr -G -O3
make
make test
make install
cd ..
rm -Rf bc-5.0.0