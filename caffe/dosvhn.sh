#########################################################################
# File Name: doit.sh
# Author: OUC_LiuX
# mail: liuxiang@stu.ouc.edu.cn
# Created Time: Fri 27 Jul 2018 07:00:47 PM CST
#########################################################################
#!/bin/bash
./build/tools/caffe train \
	--solver=./examples/svhn/solver.prototxt \
	--weights=./examples/svhn/svhn_part0_iter_70000.caffemodel \
	--gpu=0 \
	2>&1 | tee ./examples/svhn/Log/run01.log
