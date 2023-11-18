#pragma once
#include "stdint.h"
#include "C_AES_Decode.h"
#include"C_Password.h"
#include "C_Error_Message.h"
#include "C_AES_Encode.h"
#include "Manipulation_Fichier.h"

class C_Encode_Interactif
{
public:
	C_Encode_Interactif();
	~C_Encode_Interactif();
	bool Go();
	uint64_t				Calcul;

private:
	bool					Open_File(LPTSTR File);
	bool					Open_Save(LPTSTR File);
	CString					Current_Dir();
	CString					pszDestination, pszSource, pszPassword, Mess;
	C_AES_Encode			*pt_encode;
	C_Password				*pt_pass ;
	C_Error_Message			*pt_Erreur;
	Manipulation_Fichier	*pt_fichier;

};

