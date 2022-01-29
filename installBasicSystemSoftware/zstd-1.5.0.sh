tar -xvf zstd-1.5.0.tar.gz
cd zstd-1.5.0
make
make check
make prefix=/usr install
rm -v /usr/lib/libzstd.a
cd ..
rm -Rf zstd-1.5.0