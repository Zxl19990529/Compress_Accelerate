# coding: UTF-8
import sys
reload(sys)
sys.setdefaultencoding('utf8')

import subprocess
import os
import commands

for i in range(1,8):
	cmd_1="./plot_training_log.py"
	cmd_2="train_loss_vs_iters/loss_run0"+str(i)+".png"
	cmd_3="run0"+str(i)+".log"
	cmd=cmd_1+' 6'+' '+cmd_2+' '+cmd_3
	#subprocess.call(cmd,shell=True)
	print(cmd)

