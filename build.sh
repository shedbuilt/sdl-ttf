#!/bin/bash
./configure --prefix=/usr \
            --build=$SHED_NATIVE_TARGET \
            --disable-static && \
make -j $SHED_NUMJOBS && \
make DESTDIR="$SHED_FAKEROOT" install