#include "stdafx.h"
#include "resource.h"		// symboles principaux
#include "wincrypt.h"
#include "C_AES_Decode.h"
#include "Cluster_Size.h"
#include "code_huffman.h"

#pragma comment (lib, "advapi32")

C_AES_Decode::C_AES_Decode()
{
	pt_Erreur = new C_Error_Message;
	CryptAcquireContext(&hCryptProv, NULL, MS_ENHANCED_PROV, PROV_RSA_FULL, 0);

}


C_AES_Decode::~C_AES_Decode()
{
	delete pt_Erreur;

}

bool C_AES_Decode::MyEncryptFile_huff(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword)
{
	simple_Huffman* pt_huff = new simple_Huffman;

	pt_huff->CompressFile((char*)pszSourceFile, ("fff"));

	delete pt_huff;
	DeleteFile((LPCWSTR)"fff");

	return(MyDecryptFile((LPTSTR)("fff"), pszDestinationFile, pszPassword));

}


//-------------------------------------------------------------------
// Code for the function MyDecryptFile called by main.
//-------------------------------------------------------------------
// Parameters passed are:
//  pszSource, the name of the input file, an encrypted file.
//  pszDestination, the name of the output, a plaintext file to be 
//   created.
//  pszPassword, either NULL if a password is not to be used or the 
//   string that is the password.
bool C_AES_Decode::MyDecryptFile(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword)
{
	//---------------------------------------------------------------
	// Declare and initialize local variables.
	bool fReturn = false;
	HANDLE hSourceFile = INVALID_HANDLE_VALUE;
	HANDLE hDestinationFile = INVALID_HANDLE_VALUE;
	DWORD dwCount;
	PBYTE pbBuffer = NULL;
	DWORD dwBlockLen;
	DWORD dwBufferLen;

	hSourceFile = CreateFile(pszSourceFile, FILE_READ_DATA, FILE_SHARE_READ, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);

	if (INVALID_HANDLE_VALUE == hSourceFile)
	{
		BOOL status;
		status = Mess.LoadString(IDS_STRING132);
		pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		goto Exit_MyDecryptFile;
	}

	hDestinationFile = CreateFile(pszDestinationFile, FILE_WRITE_DATA, FILE_SHARE_READ, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
	
	if (INVALID_HANDLE_VALUE == hDestinationFile)
	{
		BOOL status;
		status = Mess.LoadString(IDS_STRING134);
		pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		goto Exit_MyDecryptFile;
	}

	if (!pszPassword || !pszPassword[0])
	{

		DWORD dwKeyBlobLen;
		PBYTE pbKeyBlob = NULL;
		BOOL Status = ReadFile(hSourceFile, &dwKeyBlobLen, sizeof(DWORD), &dwCount, NULL);
		
		(pbKeyBlob = (PBYTE)malloc(dwKeyBlobLen));
	
		Status = ReadFile(hSourceFile, pbKeyBlob, dwKeyBlobLen, &dwCount, NULL);
	
		CryptImportKey(hCryptProv, pbKeyBlob, dwKeyBlobLen, 0, 0, &hKey);

		if (pbKeyBlob)
		{
			free(pbKeyBlob);
		}
	}
	else
	{
			// here
		CryptCreateHash(hCryptProv, _Hash, 0, 0, &hHash);
		CryptHashData(hHash, (BYTE *)pszPassword, lstrlen(pszPassword), 0);
		CryptDeriveKey(hCryptProv, ENCRYPT_ALGORITHM, hHash, KEYLENGTH, &hKey);
	
	}
	dwBlockLen = 1000 - 1000 % ENCRYPT_BLOCK_SIZE;
	dwBufferLen = dwBlockLen;
	pbBuffer = (PBYTE)malloc(dwBufferLen);

	bool fEOF = false;
	do
	{
		BOOL Status =ReadFile(hSourceFile, pbBuffer, dwBlockLen, &dwCount, NULL);
	
		if (dwCount < dwBlockLen)
		{
			fEOF = TRUE;
		}
		CryptDecrypt(hKey, 0, fEOF, 0, pbBuffer, &dwCount);
	
		WriteFile(hDestinationFile,pbBuffer,dwCount,&dwCount,NULL);
	
	} while (!fEOF);
	fReturn = true;

Exit_MyDecryptFile:

	if (pbBuffer)
	{
		free(pbBuffer);
	}
	if (hSourceFile)
	{
		CloseHandle(hSourceFile);
	}
	if (hDestinationFile)
	{
		CloseHandle(hDestinationFile);
	}
	if (hHash)
	{
		if (!(CryptDestroyHash(hHash)))
		{
			BOOL status;
			status = Mess.LoadString(IDS_STRING148);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		}
		hHash = NULL;
	}
	if (hKey)
	{
		if (!(CryptDestroyKey(hKey)))
		{
			BOOL status = Mess.LoadString(IDS_STRING149);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		}
	}
	if (hCryptProv)
	{
		if (!(CryptReleaseContext(hCryptProv, 0)))
		{
			BOOL status = Mess.LoadString(IDS_STRING150);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		}
	}
	return fReturn;
}
