#!/bin/bash
cd /home/nik-kst/Android/kernel/kernel-3.18
rm -rf /home/nik-kst/Android/kernel/kernel-3.18/out
mkdir /home/nik-kst/Android/kernel/kernel-3.18/out
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/nik-kst/Android/t-alps-p0.mp2-V3.162/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make clean
make mrproper
make O=out TARGET_ARCH=arm64 pine_defconfig
make -j4 O=out TARGET_ARCH=arm64 2>&1 | tee out/build_pine.log
