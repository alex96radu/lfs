tar -xvf make-4.3.tar.gz
cd make-4.3
./configure --prefix=/usr
make
make check
make install
cd ..
rm -Rf make-4.3