#pragma once
#include "wincrypt.h"
#include "C_Error_Message.h"

class C_AES_Decode
{
public:
	C_AES_Decode();
	~C_AES_Decode();
	bool MyDecryptFile(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword);
	bool MyEncryptFile_huff(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword);

private:
	C_Error_Message *pt_Erreur;
	CString Mess;
	HCRYPTPROV hCryptProv ;
	HCRYPTKEY hKey  = 0;
	HCRYPTHASH hHash = 0 ;
	DWORD size_cluster = 0;
};

