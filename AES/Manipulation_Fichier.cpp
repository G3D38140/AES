#pragma once
#include "stdafx.h"
#include "afx.h"
#include "Shlwapi.h"
#include "Manipulation_Fichier.h"

#pragma comment (lib,"Shlwapi.lib")

Manipulation_Fichier::Manipulation_Fichier()
{
}


Manipulation_Fichier::~Manipulation_Fichier()
{
}

CString Manipulation_Fichier::Extraction_radical(CString chaine)
{
	CString local = chaine.Left((chaine.ReverseFind((wchar_t)'\\')));
	return (local);

}

BOOL Manipulation_Fichier::Exist_File(CString chaine)
{
	return (PathFileExists(chaine));
}

// nom 		: C:\\WINDOWS\\SYSTEM.INI
// return  	: SYSTEM.INI 
CString Manipulation_Fichier::Extraction_Nom_complet(CString chaine)
{
	CString local_string;
	CFile sysFile;

	sysFile.Open(chaine, CFile::modeRead);
	local_string = sysFile.GetFileName();
	sysFile.Close();
	return (local_string);

}
// nom 		: C:\\WINDOWS\\SYSTEM.INI
// return  	: INI
CString Manipulation_Fichier::Extraction_Extension(CString chaine)
{

	CString local;
	
	int lg_total = chaine.GetLength();
	int lg_point = chaine.ReverseFind((wchar_t)'.') + 1;
	int lg_ext = lg_total - lg_point;

	local = chaine.Mid(lg_point, lg_ext);
	return (local);
}

// nom 		: C:\\WINDOWS\\SYSTEM.INI
// return  	: true si l'extention est INI
BOOL Manipulation_Fichier::Test_Extention(CString chaine, CString ext)
{

	CString local_chaine;

	local_chaine = Extraction_Extension(chaine);

	if (local_chaine.MakeLower() == ext.MakeLower())
	{
		return TRUE;
	}
	else
	{
		return FALSE;
	}

}

// nom 		: C:\\WINDOWS\\SYSTEM.INI
// return  	: SYSTEM
CString Manipulation_Fichier::Extraction_Radical(CString chaine)
{

	CString local_string;
	CFile sysFile(chaine, CFile::modeRead);

	local_string = sysFile.GetFileTitle();
	sysFile.Close();
	return (local_string);

}

// nom 		: C:\\WINDOWS\\SYSTEM.INI
// return  	: SYSTEM.ext
CString Manipulation_Fichier::Ajoute_Extension(CString chaine, CString ext)
{
	CString local = chaine + "." + ext;
	return (local);
}

CString Manipulation_Fichier::Supprime_Extension(CString chaine)
{
	CString local  = chaine.Left(chaine.ReverseFind((wchar_t)'.'));
	return (local);

}