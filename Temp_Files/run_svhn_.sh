#########################################################################
# File Name: run_com_.sh
# Author: Zhang Heartbright
# mail: zhangxinliang_mit@163.com
# Created Time: 2018.9.17
#########################################################################
#!/bin/bash

sh ./do_svhn_.sh

sed -i s/part01/part02/g ./examples/svhn/solver.prototxt
sed -i s/part0/part01/g ./do_svhn_.sh
sed -i s/run01/run02/g ./do_svhn_.sh
make all -j
sh ./do_svhn_.sh

sed -i s/part02/part03/g ./examples/svhn/solver.prototxt
sed -i s/part01/part02/g ./do_svhn_.sh
sed -i s/run02/run03/g ./do_svhn_.sh
make all -j
sh ./do_svhn_.sh

sed -i s/part03/part04/g ./examples/svhn/solver.prototxt
sed -i s/part02/part03/g ./do_svhn_.sh
sed -i s/run03/run04/g ./do_svhn_.sh
make all -j
sh ./do_svhn_.sh

sed -i s/part04/part05/g ./examples/svhn/solver.prototxt
sed -i s/part03/part04/g ./do_svhn_.sh
sed -i s/run04/run05/g ./do_svhn_.sh
make all -j
sh ./do_svhn_.sh

sed -i s/part05/part06/g ./examples/svhn/solver.prototxt
sed -i s/part04/part05/g ./do_svhn_.sh
sed -i s/run05/run06/g ./do_svhn_.sh
make all -j
sh ./do_svhn_.sh

sed -i s/part06/part07/g ./examples/svhn/solver.prototxt
sed -i s/part05/part06/g ./do_svhn_.sh
sed -i s/run06/run07/g ./do_svhn_.sh
make all -j
sh ./do_svhn_.sh

