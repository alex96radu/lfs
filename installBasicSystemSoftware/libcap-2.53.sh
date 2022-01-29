tar -xvf libcap-2.53.tar.xz
cd libcap-2.53
sed -i '/install -m.*STA/d' libcap/Makefile
make prefix=/usr lib=lib
make test
make prefix=/usr lib=lib install
chmod -v 755 /usr/lib/lib{cap,psx}.so.2.53
cd ..
rm -Rf libcap-2.53