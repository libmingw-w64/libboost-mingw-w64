#!/bin/bash
# Tienipia <tienipia@gmail.com>
# https://github.com/libmingw-w64/mingw-w64-boost.git

SCRIPT_DIR=$(dirname "$(readlink -f "$0")")
BOOST_ROOT=$SCRIPT_DIR/boost

cat > $BOOST_ROOT/user-config.jam << EOF
using gcc : mingw64 : x86_64-w64-mingw32-g++
        :
        <rc>x86_64-w64-mingw32-windres
        <archiver>x86_64-w64-mingw32-ar
;
EOF

mkdir -p $SCRIPT_DIR/mingw-w64-boost
cd $BOOST_ROOT
./bootstrap.sh
./b2 --user-config=./user-config.jam --prefix=$SCRIPT_DIR/mingw-w64-boost target-os=windows address-model=64 variant=release install

