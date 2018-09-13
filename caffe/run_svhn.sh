#########################################################################
# File Name: run_com.sh
# Author: OUC_LiuX
# mail: liuxiang@stu.ouc.edu.cn
# Created Time: Fri 27 Jul 2018 06:51:21 PM CST
#########################################################################
#!/bin/bash

./dosvhn.sh

sed -i s/0.300/0.500/g ./src/caffe/blob.cpp
sed -i s/part01/part02/g ./examples/svhn/solver.prototxt
sed -i s/part0/part01/g ./dosvhn.sh
sed -i s/run01/run02/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i "92s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "93s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "96s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "97s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/0.500/0.600/g ./src/caffe/blob.cpp
sed -i s/part02/part03/g ./examples/svhn/solver.prototxt
sed -i s/part01/part02/g ./dosvhn.sh
sed -i s/run02/run03/g ./dosvhn.sh
make all -j
./dosvhn.sh


sed -i s/0.600/0.800/g ./src/caffe/blob.cpp
sed -i s/part03/part04/g ./examples/svhn/solver.prototxt
sed -i s/part02/part03/g ./dosvhn.sh
sed -i s/run03/run04/g ./dosvhn.sh
sed -i "97s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "96s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "93s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "92s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dosvhn.sh

sed -i "92s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "93s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "96s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "97s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/0.800/0.900/g ./src/caffe/blob.cpp
sed -i s/part04/part05/g ./examples/svhn/solver.prototxt
sed -i s/part03/part04/g ./dosvhn.sh
sed -i s/run04/run05/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i s/0.900/0.980/g ./src/caffe/blob.cpp
sed -i s/part05/part06/g ./examples/svhn/solver.prototxt
sed -i s/part04/part05/g ./dosvhn.sh
sed -i s/run05/run06/g ./dosvhn.sh
sed -i "97s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "96s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "93s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "92s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dosvhn.sh

sed -i s/0.980/1.000/g ./src/caffe/blob.cpp
sed -i s/part06/part07/g ./examples/svhn/solver.prototxt
sed -i s/part05/part06/g ./dosvhn.sh
sed -i s/run06/run07/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i "92s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "93s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "96s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "97s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part07/part08/g ./examples/svhn/solver.prototxt
sed -i s/part06/part07/g ./dosvhn.sh
sed -i s/run07/run08/g ./dosvhn.sh
make all -j
./dosvhn.sh


"""
sed -i s/0.700/0.800/g ./src/caffe/blob.cpp
sed -i s/part08/part09/g ./examples/svhn/solver.prototxt
sed -i s/part07/part08/g ./dosvhn.sh
sed -i s/run08/run09/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i "92s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "93s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "96s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "97s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part09/part10/g ./examples/svhn/solver.prototxt
sed -i s/part08/part09/g ./dosvhn.sh
sed -i s/run09/run10/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i s/0.800/0.850/g ./src/caffe/blob.cpp
sed -i s/part10/part11/g ./examples/svhn/solver.prototxt
sed -i s/part09/part10/g ./dosvhn.sh
sed -i s/run10/run11/g ./dosvhn.sh
sed -i "97s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "96s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "93s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "92s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dosvhn.sh

sed -i s/0.850/0.900/g ./src/caffe/blob.cpp
sed -i s/part11/part12/g ./examples/svhn/solver.prototxt
sed -i s/part10/part11/g ./dosvhn.sh
sed -i s/run11/run12/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i s/0.900/0.930/g ./src/caffe/blob.cpp
sed -i s/part12/part13/g ./examples/svhn/solver.prototxt
sed -i s/part11/part12/g ./dosvhn.sh
sed -i s/run12/run13/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i s/0.930/0.960/g ./src/caffe/blob.cpp
sed -i s/part13/part14/g ./examples/svhn/solver.prototxt
sed -i s/part12/part13/g ./dosvhn.sh
sed -i s/run13/run14/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i "92s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "93s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "96s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "97s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part14/part15/g ./examples/svhn/solver.prototxt
sed -i s/part13/part14/g ./dosvhn.sh
sed -i s/run14/run15/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i s/0.960/0.980/g ./src/caffe/blob.cpp
sed -i s/part15/part16/g ./examples/svhn/solver.prototxt
sed -i s/part14/part15/g ./dosvhn.sh
sed -i s/run15/run16/g ./dosvhn.sh
sed -i "97s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "96s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "93s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "92s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dosvhn.sh

sed -i s/0.980/1.000/g ./src/caffe/blob.cpp
sed -i s/part16/part17/g ./examples/svhn/solver.prototxt
sed -i s/part15/part16/g ./dosvhn.sh
sed -i s/run16/run17/g ./dosvhn.sh
make all -j
./dosvhn.sh

sed -i "92s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "93s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "96s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "97s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part17/part18/g ./examples/svhn/solver.prototxt
sed -i s/part16/part17/g ./dosvhn.sh
sed -i s/run17/run18/g ./dosvhn.sh
make all -j
./dosvhn.sh
"""
