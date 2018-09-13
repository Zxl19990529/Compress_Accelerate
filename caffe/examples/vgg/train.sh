#!/bin/bash
LOG=./examples/vgg/Log/train_vgg_`date +%Y-%m-%d-%H-%M-%S`.log
./build/tools/caffe train \
	--solver=./examples/vgg/solver.prototxt \
	--gpu=0 \
	2>&1 | tee ./examples/vgg/Log/run00.log
