tar -xvf tar-1.34.tar.xz
cd tar-1.34
FORCE_UNSAFE_CONFIGURE=1  \
./configure --prefix=/usr
make
make check
make install
make -C doc install-html docdir=/usr/share/doc/tar-1.34
cd ..
rm -Rf tar-1.34