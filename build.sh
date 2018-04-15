#!/bin/bash
./configure --prefix=/usr \
            --build=$SHED_NATIVE_TARGET \
            --disable-static && \
make -j $SHED_NUM_JOBS && \
make DESTDIR="$SHED_FAKE_ROOT" install