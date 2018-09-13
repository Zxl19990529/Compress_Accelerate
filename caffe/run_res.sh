#########################################################################
# File Name: run_com.sh
# Author: OUC_LiuX
# mail: liuxiang@stu.ouc.edu.cn
# Created Time: Fri 27 Jul 2018 06:51:21 PM CST
#########################################################################
#!/bin/bash

./dovgg.sh
cp ./examples/vgg/Log/run08.log /data/vgg_run08.log
cp ./examples/vgg/vgg_part08_iter_64000.caffemodel /data



sed -i s/1.000/0.300/g ./src/caffe/blob.cpp
make all -j
./dores.sh
cp ./examples/cifar10/Log/run01.log /data/
cp ./examples/cifar10/cifar10_res20_part01_iter_100000.caffemodel /data/

sed -i s/0.300/0.500/g ./src/caffe/blob.cpp
sed -i s/part01/part02/g ./examples/cifar10/solver.prototxt
sed -i s/part0/part01/g ./dores.sh
sed -i s/run01/run02/g ./dores.sh
sed -i "44s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "43s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "40s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "39s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dores.sh
cp ./examples/cifar10/Log/run02.log /data/
cp ./examples/cifar10/cifar10_res20_part02_iter_100000.caffemodel /data/

sed -i "39s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "40s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "43s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "44s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/0.500/0.600/g ./src/caffe/blob.cpp
sed -i s/part02/part03/g ./examples/cifar10/solver.prototxt
sed -i s/part01/part02/g ./dores.sh
sed -i s/run02/run03/g ./dores.sh
make all -j
./dores.sh
cp ./examples/cifar10/Log/run03.log /data/
cp ./examples/cifar10/cifar10_res20_part03_iter_100000.caffemodel /data/


sed -i s/0.600/0.800/g ./src/caffe/blob.cpp
sed -i s/part03/part04/g ./examples/cifar10/solver.prototxt
sed -i s/part02/part03/g ./dores.sh
sed -i s/run03/run04/g ./dores.sh
sed -i "44s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "43s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "40s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "39s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dores.sh
cp ./examples/cifar10/Log/run04.log /data/
cp ./examples/cifar10/cifar10_res20_part04_iter_100000.caffemodel /data/

sed -i "39s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "40s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "43s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "44s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/0.800/0.900/g ./src/caffe/blob.cpp
sed -i s/part04/part05/g ./examples/cifar10/solver.prototxt
sed -i s/part03/part04/g ./dores.sh
sed -i s/run04/run05/g ./dores.sh
make all -j
./dores.sh
cp ./examples/cifar10/Log/run05.log /data/
cp ./examples/cifar10/cifar10_res20_part05_iter_100000.caffemodel /data/

sed -i s/0.900/0.980/g ./src/caffe/blob.cpp
sed -i s/part05/part06/g ./examples/cifar10/solver.prototxt
sed -i s/part04/part05/g ./dores.sh
sed -i s/run05/run06/g ./dores.sh
sed -i "44s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "43s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "40s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "39s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dores.sh
cp ./examples/cifar10/Log/run06.log /data/
cp ./examples/cifar10/cifar10_res20_part06_iter_100000.caffemodel /data/

sed -i s/0.980/1.000/g ./src/caffe/blob.cpp
sed -i s/part06/part07/g ./examples/cifar10/solver.prototxt
sed -i s/part05/part06/g ./dores.sh
sed -i s/run06/run07/g ./dores.sh
make all -j
./dores.sh
cp ./examples/cifar10/Log/run07.log /data/
cp ./examples/cifar10/cifar10_res20_part07_iter_100000.caffemodel /data/


sed -i "39s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "40s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "43s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "44s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part07/part08/g ./examples/cifar10/solver.prototxt
sed -i s/part06/part07/g ./dores.sh
sed -i s/run07/run08/g ./dores.sh
make all -j
./dores.sh
cp ./examples/cifar10/Log/run08.log /data/
cp ./examples/cifar10/cifar10_res20_part08_iter_100000.caffemodel /data/

"""
sed -i s/0.700/0.800/g ./src/caffe/blob.cpp
sed -i s/part08/part09/g ./examples/cifar10/solver.prototxt
sed -i s/part07/part08/g ./dores.sh
sed -i s/run08/run09/g ./dores.sh
make all -j
./dores.sh

sed -i "39s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "40s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "43s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "44s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part09/part10/g ./examples/cifar10/solver.prototxt
sed -i s/part08/part09/g ./dores.sh
sed -i s/run09/run10/g ./dores.sh
make all -j
./dores.sh

sed -i s/0.800/0.850/g ./src/caffe/blob.cpp
sed -i s/part10/part11/g ./examples/cifar10/solver.prototxt
sed -i s/part09/part10/g ./dores.sh
sed -i s/run10/run11/g ./dores.sh
sed -i "44s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "43s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "40s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "39s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dores.sh

sed -i s/0.850/0.900/g ./src/caffe/blob.cpp
sed -i s/part11/part12/g ./examples/cifar10/solver.prototxt
sed -i s/part10/part11/g ./dores.sh
sed -i s/run11/run12/g ./dores.sh
make all -j
./dores.sh

sed -i s/0.900/0.400/g ./src/caffe/blob.cpp
sed -i s/part12/part13/g ./examples/cifar10/solver.prototxt
sed -i s/part11/part12/g ./dores.sh
sed -i s/run12/run13/g ./dores.sh
make all -j
./dores.sh

sed -i s/0.400/0.430/g ./src/caffe/blob.cpp
sed -i s/part13/part14/g ./examples/cifar10/solver.prototxt
sed -i s/part12/part13/g ./dores.sh
sed -i s/run13/run14/g ./dores.sh
make all -j
./dores.sh

sed -i "39s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "40s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "43s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "44s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part14/part15/g ./examples/cifar10/solver.prototxt
sed -i s/part13/part14/g ./dores.sh
sed -i s/run14/run15/g ./dores.sh
make all -j
./dores.sh

sed -i s/0.430/0.980/g ./src/caffe/blob.cpp
sed -i s/part15/part16/g ./examples/cifar10/solver.prototxt
sed -i s/part14/part15/g ./dores.sh
sed -i s/run15/run16/g ./dores.sh
sed -i "44s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "43s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "40s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "39s/\/\//\;/g" ./src/caffe/util/power2.cpp
make all -j
./dores.sh

sed -i s/0.980/1.000/g ./src/caffe/blob.cpp
sed -i s/part16/part17/g ./examples/cifar10/solver.prototxt
sed -i s/part15/part16/g ./dores.sh
sed -i s/run16/run17/g ./dores.sh
make all -j
./dores.sh

sed -i "39s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "40s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i "43s/\;/\/\//g" ./src/caffe/util/power2.cpp
sed -i "44s/\/\//\;/g" ./src/caffe/util/power2.cpp
sed -i s/part17/part18/g ./examples/cifar10/solver.prototxt
sed -i s/part16/part17/g ./dores.sh
sed -i s/run17/run18/g ./dores.sh
make all -j
./dores.sh
"""
