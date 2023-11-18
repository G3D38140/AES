
// AES.h : fichier d'en-tête principal pour l'application PROJECT_NAME
//

#pragma once

#ifndef __AFXWIN_H__
	#error "incluez 'stdafx.h' avant d'inclure ce fichier pour PCH"
#endif

#include "resource.h"		// symboles principaux


// CAESApp :
// Consultez AES.cpp pour l'implémentation de cette classe
//

class CAESApp : public CWinApp
{
private:
	BOOL SendTo_App();
	BOOL Maj_Base_de_register();
	BOOL Interactif();
	BOOL Status = NULL;


public:
	CAESApp();


// Substitutions
public:
	virtual BOOL InitInstance();
// Implémentation

	DECLARE_MESSAGE_MAP()
};

extern CAESApp theApp;