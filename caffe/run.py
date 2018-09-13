import os


print "First partition and run"

os.system("sed -i \"s/(count_\*1.0)/(count_\*0.2)/g\" ./src/caffe/blob.cpp") 
os.system("make all -j8")
os.system("sed -i \"s/part4/part1/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("sed -i \"s/lenet_part3_iter_4000.caffemodel/lenet_part0_iter_4000.caffemodel/g\" ./examples/mnist/train_lenet.sh")
# os.system("sed -i \"s/max_iter: 60000/max_iter: 4000/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("nohup sh ./examples/mnist/train_lenet.sh >./examples/mnist/Log/run01.log 2>&1")


print "Second partition and run"

os.system("sed -i \"s/(count_\*0.2)/(count_\*0.5)/g\" ./src/caffe/blob.cpp") 
os.system("make all -j8")
os.system("sed -i \"s/part1/part2/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("sed -i \"s/lenet_part0_iter_4000.caffemodel/lenet_part1_iter_4000.caffemodel/g\" ./examples/mnist/train_lenet.sh")
# os.system("sed -i \"s/max_iter: 60000/max_iter: 4000/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("nohup sh ./examples/mnist/train_lenet.sh >./examples/mnist/Log/run02.log 2>&1")


print "Third partition and run"

os.system("sed -i \"s/(count_\*0.5)/(count_\*0.8)/g\" ./src/caffe/blob.cpp") 
os.system("make all -j8")
os.system("sed -i \"s/part2/part3/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("sed -i \"s/lenet_part1_iter_4000.caffemodel/lenet_part2_iter_4000.caffemodel/g\" ./examples/mnist/train_lenet.sh")
# os.system("sed -i \"s/max_iter: 60000/max_iter: 4000/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("nohup sh ./examples/mnist/train_lenet.sh >./examples/mnist/Log/run03.log 2>&1")


print "Fourth partition and run"

os.system("sed -i \"s/(count_\*0.8)/(count_\*1.0)/g\" ./src/caffe/blob.cpp") 
os.system("make all -j8")
os.system("sed -i \"s/part3/part4/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("sed -i \"s/lenet_part2_iter_4000.caffemodel/lenet_part3_iter_4000.caffemodel/g\" ./examples/mnist/train_lenet.sh")
# os.system("sed -i \"s/max_iter: 60000/max_iter: 4000/g\" ./examples/mnist/lenet_solver.prototxt")
os.system("nohup sh ./examples/mnist/train_lenet.sh >./examples/mnist/Log/run04.log 2>&1")
