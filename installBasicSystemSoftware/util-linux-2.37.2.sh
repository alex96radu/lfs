tar -xvf util-linux-2.37.2.tar.xz
cd util-linux-2.37.2
./configure ADJTIME_PATH=/var/lib/hwclock/adjtime   \
            --libdir=/usr/lib    \
            --docdir=/usr/share/doc/util-linux-2.37.2 \
            --disable-chfn-chsh  \
            --disable-login      \
            --disable-nologin    \
            --disable-su         \
            --disable-setpriv    \
            --disable-runuser    \
            --disable-pylibmount \
            --disable-static     \
            --without-python     \
            --without-systemd    \
            --without-systemdsystemunitdir \
            runstatedir=/run
make
#bash tests/run.sh --srcdir=$PWD --builddir=$PWD
rm tests/ts/lsns/ioctl_ns
chown -Rv tester .
su tester -c "make -k check"
make install
cd ..
rm -Rf util-linux-2.37.2