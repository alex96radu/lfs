tar -xvf binutils-2.37.tar.xz
cd binutils-2.37
expect -c "spawn ls"
patch -Np1 -i ../binutils-2.37-upstream_fix-1.patch
sed -i '63d' etc/texi2pod.pl
find -name \*.1 -delete
mkdir -v build
cd       build
../configure --prefix=/usr       \
             --enable-gold       \
             --enable-ld=default \
             --enable-plugins    \
             --enable-shared     \
             --disable-werror    \
             --enable-64-bit-bfd \
             --with-system-zlib
make tooldir=/usr
make -k check
make tooldir=/usr install -j1
rm -fv /usr/lib/lib{bfd,ctf,ctf-nobfd,opcodes}.a
cd ..
rm -Rf binutils-2.37