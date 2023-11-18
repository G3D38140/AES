#pragma once
#include "wincrypt.h"
#include "C_Error_Message.h"

class C_AES_Encode
{
public:
	C_AES_Encode();
	~C_AES_Encode();
	
		bool MyEncryptFile(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword);
		bool MyEncryptFile_huff(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword);

private: 
		C_Error_Message *pt_Erreur;
		CString Mess;
		HCRYPTPROV hCryptProv = NULL;
		HCRYPTKEY hKey = NULL;
		DWORD size_cluster = 0;
};

