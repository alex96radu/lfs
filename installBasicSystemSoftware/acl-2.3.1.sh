tar -xvf acl-2.3.1.tar.xz
cd acl-2.3.1
./configure --prefix=/usr         \
            --disable-static      \
            --docdir=/usr/share/doc/acl-2.3.1
make
make install
cd ..
rm -Rf acl-2.3.1