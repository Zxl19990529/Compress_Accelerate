#########################################################################
# File Name: doit.sh
# Author: OUC_LiuX
# mail: liuxiang@stu.ouc.edu.cn
# Created Time: Fri 27 Jul 2018 07:00:47 PM CST
#########################################################################
#!/bin/bash
./build/tools/caffe train \
	--solver=./examples/cifar10/solver.prototxt \
	--weights=./examples/cifar10/cifar10_res20_part04_iter_100000.caffemodel \
	--gpu=0 2>&1 | tee ./examples/cifar10/Log/run05.log

