#include "stdafx.h"
#include "stdint.h"
#include <sys/timeb.h>  
#include <time.h>  
#include "Calcul_temps.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif


Calcul_temps::Calcul_temps()
{

	Start = Stop = 0;
}

void Calcul_temps::Start_time()
{
	Start = Build();
}

void Calcul_temps::Stop_time()
{
	Stop =  Build();
}

uint64_t Calcul_temps::Read_time()
{
	return (Stop - Start);
}

uint64_t Calcul_temps::Build()
{

	struct _timeb timebuffer;
	errno_t erreur = _ftime_s(&timebuffer);
	return (uint64_t)(((timebuffer.time * 1000) + timebuffer.millitm));

}

Calcul_temps::~Calcul_temps()
{

}
