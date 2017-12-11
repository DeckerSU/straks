#!/bin/bash

STRAKS_ROOT=$(pwd)

# Pick some path to install BDB to, here we create a directory within the straks directory
BDB_PREFIX="${STRAKS_ROOT}/db4"

# Configure Core to use our own-built instance of BDB
cd $STRAKS_ROOT
#./configure LDFLAGS="-L${BDB_PREFIX}/lib/" CPPFLAGS="-I${BDB_PREFIX}/include/"
CONFIG_SITE=/home/build/straks/depends/x86_64-w64-mingw32/share/config.site ./configure LDFLAGS="-L${BDB_PREFIX}/lib/" CPPFLAGS="-I${BDB_PREFIX}/include/" --prefix=/
