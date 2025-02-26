#!/bin/bash

# shitty kernel reeeee

#PREFIX="$(pwd)"
PREFIX="/tmp/optane"

#CLANG="greenforce"
CLANG="clang"


#rm -rf out
#mkdir out
#rm -rf error.log
#make O=out clean 
#make mrproper

# Build

CLANG_DIR=${PREFIX}/${CLANG}
export PATH="$CLANG_DIR/bin:$PATH"

echo $PATH

make O=out ARCH=arm64 ../../../mojito_defconfig

make -j24 ARCH=arm64 SUBARCH=arm64 O=out \
        CC="ccache clang"\
        AR="llvm-ar" \
	NM="llvm-nm" \
	LD="ld.lld -S" \
	OBJCOPY="llvm-objcopy" \
	OBJDUMP="llvm-objdump" \
	STRIP="llvm-strip" \
        CLANG_TRIPLE="aarch64-linux-gnu-" \
    	CROSS_COMPILE="aarch64-linux-gnu-" \
    	CROSS_COMPILE_ARM32="arm-linux-gnueabi-" \
    	CROSS_COMPILE_COMPAT="arm-linux-gnueabi-" \
    	LLVM=1 \
    	LLVM_IAS=1 \
    	INSTALL_MOD_STRIP=1 \
	KBUILD_BUILD_USER="$(git rev-parse --short HEAD | cut -c1-7)" \
	KBUILD_BUILD_HOST="$(git symbolic-ref --short HEAD)" \
	KBUILD_BUILD_FEATURES="source: https://github.com/backslashxx/mojito_krenol //"
	
	
ccache -s

# fp asimd evtstrm aes pmull sha1 sha2 crc32 atomics fphp asimdhp cpuid asimdrdm lrcpc dcpop asimddp
# for i in $(ls patches/) ; do patch -Np1 < patches/$i ; done
