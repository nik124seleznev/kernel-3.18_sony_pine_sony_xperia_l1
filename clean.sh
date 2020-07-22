#!/bin/bash
cd /home/nik-kst/Android/kernel/kernel-3.18
rm -rf /home/nik-kst/Android/kernel/kernel-3.18/out
export ARCH=arm64
export SUBARCH=arm64
export CROSS_COMPILE=/home/nik-kst/Android/t-alps-p0.mp2-V3.162/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-
make clean
make mrproper
