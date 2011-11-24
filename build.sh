#!/bin/bash

cmake -DCMAKE_BUILD_TYPE=linux-x86_64 || exit $?
make $@ || exit $?
cmake -DCMAKE_BUILD_TYPE=linux-x86 || exit $?
make $@ || exit $?
cmake -DCMAKE_BUILD_TYPE=windows-x86-cross || exit $?
make $@ || exit $?

rm -rf build/warpig.pk3
cd build
zip warpig.pk3 cg* ui*

# allow to download that shit
chmod +x warpig.pk3
