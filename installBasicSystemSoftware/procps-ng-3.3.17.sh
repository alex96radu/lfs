tar -xvf procps-ng-3.3.17.tar.xz
cd procps-ng-3.3.17
./configure --prefix=/usr                            \
            --docdir=/usr/share/doc/procps-ng-3.3.17 \
            --disable-static                         \
            --disable-kill
make
make check
make install
cd ..
rm -Rf procps-ng-3.3.17