#########################################################################
# File Name: doit.sh
# Author: OUC_LiuX
# mail: liuxiang@stu.ouc.edu.cn
# Created Time: Fri 27 Jul 2018 07:00:47 PM CST
#########################################################################
#!/bin/bash
./build/tools/caffe train \
	--solver=./examples/mnist/lenet_solver.prototxt \
	--weights=./examples/mnist/lenet_part06_iter_10000.caffemodel \
	--gpu=0 \
	2>&1 | tee ./examples/mnist/Log/run07.log
