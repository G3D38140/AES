#pragma once
#include "stdafx.h"
#include "afx.h"

class Manipulation_Fichier
{
public:
	Manipulation_Fichier();
	~Manipulation_Fichier();
	
	BOOL    Exist_File(CString chaine);
	BOOL    Test_Extention(CString chaine, CString ext);
    CString Ajoute_Extension(CString chaine, CString ext);
	CString Supprime_Extension(CString chaine);

private:
	CString Extraction_Radical(CString chaine);

	CString Extraction_Extension(CString chaine);
	CString Extraction_Nom_complet(CString chaine);
	int		My_reverse(CString chaine, CString on_cherhe);
	CString Extraction_radical(CString chaine);

};

