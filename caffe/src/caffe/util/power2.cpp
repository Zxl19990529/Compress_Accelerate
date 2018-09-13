#include <iostream>
#include <cstdlib>
#include <cmath>
#include <ctime>
using namespace std;

#include "caffe/util/power2.hpp"

#define clip(x) max(0.0, min(1.0, ( 1.0 + x) / 2.0 ) )

template < typename Dtype>
PAIR weightQuantify0( Dtype weight, double underbound, double upperbound){
	PAIR a;
	if( std::fabs( weight) <= underbound){
		a.weight = 0.0;
		a.mask = 0.0;
		return a;
	}
	
	int flag = 0;
	if(weight > 0) flag = 1;
	else if( weight < 0) flag = -1;
	int i = 0;
	double answer = upperbound;
	for ( i = -32; i < 16; i ++)
		if( pow(2, i) > upperbound){
			answer = pow(2, i) * flag;
			break;
		}
	
	if( std::fabs(weight) > upperbound){
		a.weight = answer;
		a.mask = 0.0;
		return a;
	}	
;
	if( std::fabs(weight) > underbound && std::fabs(weight) <= upperbound ){
		if( std::fabs( weight) >= answer/2.0){
			;a.mask = 1.00; a.weight = weight;
			//a.weight = answer// a.mask = 0.0//
		}
		else {
			;a.mask = 1.00; a.weight = weight;
			//a.weight = 0.0// a.mask = 0.0//
		}
	}
;
	return a;
} 

			//weight = sqrt( abs( weight)) > answer ? answer :sqrt( std::fabs(weight)) * flag//
			//weight = pow( weight, 2) * flag//
template PAIR weightQuantify0<double>( double, double, double);
template PAIR weightQuantify0<float>(float, double, double);
template PAIR weightQuantify0<int>(int, double, double);
template PAIR weightQuantify0<unsigned int>( unsigned int, double, double);
