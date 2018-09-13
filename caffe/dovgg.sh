#########################################################################
# File Name: doit.sh
# Author: OUC_LiuX
# mail: liuxiang@stu.ouc.edu.cn
# Created Time: Fri 27 Jul 2018 07:00:47 PM CST
#########################################################################
#!/bin/bash
./build/tools/caffe train \
	--solver=./examples/vgg/solver.prototxt \
	--weights=./examples/vgg/vgg_part01_iter_64000.caffemodel \
	--gpu=0 2>&1 | tee ./examples/vgg/Log/run02.log

