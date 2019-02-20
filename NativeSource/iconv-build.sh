# toolchains path
export NDK_STANDALONE_TOOLCHAIN=/Users/luciuszhang/development/workspaces/toolchanins/arm-darwin-14
# product path
export ICONV_PREFIX=/Users/luciuszhang/development/workspaces/android/QuickCode/IntQRDeocder/NativeLibraries/iconv
# iconv source code path
export ICONV_PROJECT=iconv

# env
export CC=$NDK_STANDALONE_TOOLCHAIN/bin/arm-linux-androideabi-gcc
export LDFLAGS="-L$NDK_STANDALONE_TOOLCHAIN/lib -L$NDK_STANDALONE_TOOLCHAIN/sysroot/usr/lib"
export CFLAGS="-I$NDK_STANDALONE_TOOLCHAIN/include -L$NDK_STANDALONE_TOOLCHAIN/sysroot/usr/include"
export RANLIB=$NDK_STANDALONE_TOOLCHAIN/bin/arm-linux-androideabi-ranlib
export AR=$NDK_STANDALONE_TOOLCHAIN/bin/arm-linux-androideabi-ar
export STRIP=$NDK_STANDALONE_TOOLCHAIN/bin/arm-linux-androideabi-strip

cd $ICONV_PROJECT

./configure \
--prefix=$ICONV_PREFIX \
--build=arm-linux \
--enable-static=yes \
--enable-shared=yes \
--host=arm-linux-androideabi \
--with-aix-soname=both \
--with-aix-soname=svr4 \
--with-sysroot=$NDK_STANDALONE_TOOLCHAIN/sysroot \
--with-gnu-ld=$NDK_STANDALONE_TOOLCHAIN/bin/arm-linux-androideabi-ld

make clean
make -j4
make install