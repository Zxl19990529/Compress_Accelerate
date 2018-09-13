/************************************************************************
 	> File_Name: include/caffe/util/power2.hpp
	> Author: OUC_LiuX
	> Mail: liuxiang@stu.ouc.edu.cn
	> Created Time: Fri 18 May 2018 04:09:36 PM CST
 ************************************************************************/

#include "caffe/util/math_functions.hpp"
#include "caffe/common.hpp"

#ifndef __POWER2_H__
#define __POWER2_H__

struct PAIR{
	double weight, mask;
};

template< typename Dtype>
PAIR weightQuantify0( Dtype, double, double);

#endif
