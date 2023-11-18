#pragma once

#include "stdint.h"
#include "C_AES_Decode.h"
#include"C_Password.h"
#include "C_Error_Message.h"
#include "Manipulation_Fichier.h"

class C_Decode_Interactif
{
public:
	C_Decode_Interactif();
	~C_Decode_Interactif();
	bool Go();
	uint64_t				Calcul;

private:

	bool					Open_File(LPTSTR File);
	bool					Open_Save(LPTSTR File);
	CString					Current_Dir();
	CString					pszDestination, pszSource, pszPassword;
	C_AES_Decode			*pt_decode;
	C_Password				*pt_pass;
	C_Error_Message			*pt_Erreur;
	Manipulation_Fichier	*pt_fichier;
	CString					Mess;
};

