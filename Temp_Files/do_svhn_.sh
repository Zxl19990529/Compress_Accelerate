#!/usr/bin/env sh
set -e

./build/tools/caffe train \
    --solver=/home/zhb/Desktop/caffe/examples/svhn/solver.prototxt \
	2>&1 | tee ./examples/svhn/Log/train_run07.log
    $@

