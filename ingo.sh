#!/bin/sh
if [ ! -z "$PKG_CONFIG_PATH" ]
then PKG_CONFIG_PATH=":$PKG_CONFIG_PATH"
fi
PKG_CONFIG_PATH="/home/ingo/install/lxqt/lib64/pkgconfig$PKG_CONFIG_PATH" \
LIB_SUFFIX=64 \
LXQT_PREFIX="/home/ingo/install/lxqt" \
LXQT_JOB_NUM=2 \
DO_INSTALL_ROOT=1 \
	./build_all_cmake_projects.sh
status=$?
if [ ! $status -eq 0 ]
then
	echo "build via ./ingo.sh failed." 1>&2
fi
exit $status
# LIB_SUFFIX=64 LXQT_PREFIX=/home/ingo/install/lxqt LXQT_JOB_NUM=2 DO_INSTALL_ROOT=1 ./build_all_cmake_projects.sh
