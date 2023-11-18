#pragma once
#include "stdint.h"
#include "Manipulation_Fichier.h"
#include "C_AES_Decode.h"
#include "C_AES_Encode.h"
#include "C_Password.h"

class Analyse_back_groung
{
public:
	Analyse_back_groung();
	~Analyse_back_groung();
	BOOL Run(LPTSTR *pt_chaine, int Count);
	bool					Traitement_fichier(CString chaine);	
	uint64_t				Calcul;

private:


	CStringArray			liste_fichier;
	Manipulation_Fichier	*pt_fichier;
	C_AES_Encode			*pt_encode;
	C_AES_Decode			*pt_decode;
	C_Password				*pt_pass;
	CString					ext;
};

