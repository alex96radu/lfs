tar -xvf file-5.40.tar.gz
cd file-5.40
./configure --prefix=/usr
make
make check
make install
cd ..
rm -Rf file-5.40