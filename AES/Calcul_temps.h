#pragma once
#include <sys/timeb.h> 
#include "stdint.h"
#include <time.h>  

class Calcul_temps
{
public:
	Calcul_temps();
	virtual ~Calcul_temps();
	void	Start_time();
	void	Stop_time();
	uint64_t Read_time();

private :
	uint64_t Start;
	uint64_t Stop;
	uint64_t Build();
};

