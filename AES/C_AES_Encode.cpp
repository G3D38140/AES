#include "stdafx.h"
#include "resource.h"		// symboles principaux
#include "wincrypt.h"
#include "C_AES_Encode.h"
#include "Cluster_Size.h"
#include "code_huffman.h"

#pragma comment (lib, "advapi32")

C_AES_Encode::C_AES_Encode()

{
	pt_Erreur = new C_Error_Message;
	CryptAcquireContext(&hCryptProv, NULL, MS_ENHANCED_PROV, PROV_RSA_FULL, 0);

}


C_AES_Encode::~C_AES_Encode()
{
	delete pt_Erreur;

}

bool C_AES_Encode::MyEncryptFile_huff(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword)
{
	simple_Huffman *pt_huff = new simple_Huffman;

	pt_huff->CompressFile((char*)pszSourceFile, ("fff"));
	delete pt_huff;

	DeleteFile((LPCWSTR)"fff");
	return(MyEncryptFile((LPTSTR)("fff"), pszDestinationFile, pszPassword));


}

//-------------------------------------------------------------------
// Code for the function MyEncryptFile called by main.
//-------------------------------------------------------------------
// Parameters passed are:
//  pszSource, the name of the input, a plaintext file.
//  pszDestination, the name of the output, an encrypted file to be 
//   created.
//  pszPassword, either NULL if a password is not to be used or the 
//   string that is the password.
bool C_AES_Encode::MyEncryptFile(LPTSTR pszSourceFile, LPTSTR pszDestinationFile, LPTSTR pszPassword)
{
	//---------------------------------------------------------------
	// Declare and initialize local variables.
	bool fReturn = false;
	HANDLE hSourceFile = INVALID_HANDLE_VALUE;
	HANDLE hDestinationFile = INVALID_HANDLE_VALUE;
	HCRYPTKEY hXchgKey = NULL;
	HCRYPTHASH hHash = NULL;
	PBYTE pbKeyBlob = NULL;
	DWORD dwKeyBlobLen = 0;
	PBYTE pbBuffer = NULL;
	DWORD dwBlockLen;
	DWORD dwBufferLen;
	DWORD dwCount;

	//---------------------------------------------------------------
	// Open the source file. 
	hSourceFile = CreateFile(
		pszSourceFile,
		FILE_READ_DATA,
		FILE_SHARE_READ,
		NULL,
		OPEN_EXISTING,
		FILE_ATTRIBUTE_NORMAL,
		NULL);

	if (INVALID_HANDLE_VALUE == hSourceFile)
	{
		BOOL status = Mess.LoadString(IDS_STRING132);
		pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		goto Exit_MyEncryptFile;
	}
	//---------------------------------------------------------------
	// =====> A VOIR DE PLUS PRES au lieu OPEN_ALWAYS de on peut metre CREATE_ALWAYS
	//
	// Open the destination file. 
	hDestinationFile = CreateFile(
		pszDestinationFile,
		FILE_WRITE_DATA,
		FILE_SHARE_READ,
		NULL,
		CREATE_ALWAYS,
		FILE_ATTRIBUTE_NORMAL,
		NULL);

	if (INVALID_HANDLE_VALUE == hDestinationFile)
	{
		BOOL status = Mess.LoadString(IDS_STRING133);
		pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		goto Exit_MyEncryptFile;
	}
	//---------------------------------------------------------------
	// Get the handle to the default provider. 

	//---------------------------------------------------------------
	// Create the session key.
	if (!pszPassword || !pszPassword[0])
	{
		//-----------------------------------------------------------
		// No password was passed.
		// Encrypt the file with a random session key, and write the 
		// key to a file. 

		//-----------------------------------------------------------
		// Create a random session key. 
		if (CryptGenKey(hCryptProv, ENCRYPT_ALGORITHM, KEYLENGTH | CRYPT_EXPORTABLE, &hKey))
		{
#ifdef _DEBUG
			Mess.LoadString(IDS_STRING152);
			pt_Erreur->Print_Message(Mess);
#endif
		}
		else
		{
			BOOL status = Mess.LoadString(IDS_STRING153);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
			goto Exit_MyEncryptFile;
		}
		//-----------------------------------------------------------
		// Get the handle to the exchange public key. 
		if (CryptGetUserKey(hCryptProv, AT_KEYEXCHANGE, &hXchgKey))
		{
#ifdef _DEBUG
			BOOL status =Mess.LoadString(IDS_STRING154);
			pt_Erreur->Print_Message(Mess);
#endif
		}
		else
		{
			if (NTE_NO_KEY == GetLastError())
			{
				// No exchange key exists. Try to create one.
				if (!CryptGenKey(hCryptProv, AT_KEYEXCHANGE, CRYPT_EXPORTABLE, &hXchgKey))
				{
					BOOL status = Mess.LoadString(IDS_STRING155);
					pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
					goto Exit_MyEncryptFile;
				}
			}
			else
			{
				BOOL status = Mess.LoadString(IDS_STRING156);
				pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
				goto Exit_MyEncryptFile;
			}
		}
		//-----------------------------------------------------------
		// Determine size of the key BLOB, and allocate memory. 
		if (CryptExportKey(hKey, hXchgKey, SIMPLEBLOB, 0, NULL, &dwKeyBlobLen))
		{
#ifdef _DEBUG
			CString Local_string;
			BOOL status = Mess.LoadString(IDS_STRING157);
			Local_string.Format(Mess, dwKeyBlobLen);
			pt_Erreur->Print_Message(Local_string);
#endif
		}
		else
		{
			BOOL status = Mess.LoadString(IDS_STRING158);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
			goto Exit_MyEncryptFile;
		}

		if (pbKeyBlob = (BYTE *)malloc(dwKeyBlobLen))
		{
#ifdef _DEBUG
			BOOL status =Mess.LoadString(IDS_STRING159);
			pt_Erreur->Print_Message(Mess);
#endif
		}
		else
		{
			BOOL status = Mess.LoadString(IDS_STRING160);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), E_OUTOFMEMORY);
			goto Exit_MyEncryptFile;
		}
		//-----------------------------------------------------------
		// Encrypt and export the session key into a simple key 
		// BLOB. 
		if (CryptExportKey(hKey, hXchgKey, SIMPLEBLOB, 0, pbKeyBlob, &dwKeyBlobLen))
		{
#ifdef _DEBUG
			BOOL status =Mess.LoadString(IDS_STRING161);
			pt_Erreur->Print_Message(Mess);
#endif
		}
		else
		{
			BOOL status = Mess.LoadString(IDS_STRING162);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
			goto Exit_MyEncryptFile;
		}
		//-----------------------------------------------------------
		// Release the key exchange key handle. 
		if (hXchgKey)
		{
			if (!(CryptDestroyKey(hXchgKey)))
			{
				BOOL status = Mess.LoadString(IDS_STRING163);
				pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
				goto Exit_MyEncryptFile;
			}

			hXchgKey = 0;
		}
		//-----------------------------------------------------------
		// Write the size of the key BLOB to the destination file. 
		if (!WriteFile(hDestinationFile, &dwKeyBlobLen, sizeof(DWORD), &dwCount, NULL))
		{
			BOOL status = Mess.LoadString(IDS_STRING164);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
			goto Exit_MyEncryptFile;
		}
		else
		{
#ifdef _DEBUG
			BOOL status =Mess.LoadString(IDS_STRING165);
			pt_Erreur->Print_Message(Mess);
#endif
		}

		//-----------------------------------------------------------
		// Write the key BLOB to the destination file. 
		if (!WriteFile(hDestinationFile, pbKeyBlob, dwKeyBlobLen, &dwCount, NULL))
		{
			BOOL status = Mess.LoadString(IDS_STRING166);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
			goto Exit_MyEncryptFile;
		}
		else
		{
#ifdef _DEBUG
			Mess.LoadString(IDS_STRING167);
			pt_Erreur->Print_Message(Mess);
#endif
		}

		// Free memory.
		free(pbKeyBlob);
	}
	else
	{
		//-----------------------------------------------------------
		// The file will be encrypted with a session key derived 
		// from a password.
		// The session key will be recreated when the file is 
		// decrypted only if the password used to create the key is 
		// available. 

		//-----------------------------------------------------------
		// Create a hash object. 
		CryptCreateHash(hCryptProv, _Hash, 0, 0, &hHash);
		
		//-----------------------------------------------------------
		// Hash the password. 
		CryptHashData(hHash, (BYTE *)pszPassword, lstrlen(pszPassword), 0);

		//-----------------------------------------------------------
		// Derive a session key from the hash object. 
		CryptDeriveKey(hCryptProv, ENCRYPT_ALGORITHM, hHash, KEYLENGTH, &hKey);

	}
	//---------------------------------------------------------------
	// The session key is now ready. If it is not a key derived from 
	// a  password, the session key encrypted with the private key 
	// has been written to the destination file.

	//---------------------------------------------------------------
	// Determine the number of bytes to encrypt at a time. 
	// This must be a multiple of ENCRYPT_BLOCK_SIZE.
	// ENCRYPT_BLOCK_SIZE is set by a #define statement.
	dwBlockLen = 1000 - 1000 % ENCRYPT_BLOCK_SIZE;
	//---------------------------------------------------------------
	// Determine the block size. If a block cipher is used, 
	// it must have room for an extra block. 
	if (ENCRYPT_BLOCK_SIZE > 1)
	{
		dwBufferLen = dwBlockLen + ENCRYPT_BLOCK_SIZE;
	}
	else
	{
		dwBufferLen = dwBlockLen;
	}
	//---------------------------------------------------------------
	// Allocate memory. 
	pbBuffer = (BYTE *)malloc(dwBufferLen);
	//---------------------------------------------------------------
	// In a do loop, encrypt the source file, 
	// and write to the source file. 
	bool fEOF = FALSE;
	do
	{
		//-----------------------------------------------------------
		// Read up to dwBlockLen bytes from the source file. 
		BOOL Status = ReadFile(hSourceFile, pbBuffer, dwBlockLen, &dwCount, NULL);

		if (dwCount < dwBlockLen)
		{
			fEOF = TRUE;
		}
		//-----------------------------------------------------------
		// Encrypt data. 
		CryptEncrypt(hKey, NULL, fEOF, 0, pbBuffer, &dwCount, dwBufferLen);
	
		//-----------------------------------------------------------
		// Write the encrypted data to the destination file. 
		WriteFile(hDestinationFile, pbBuffer, dwCount, &dwCount, NULL);

		//-----------------------------------------------------------
		// End the do loop when the last block of the source file 
		// has been read, encrypted, and written to the destination 
		// file.
	} while (!fEOF);

	fReturn = true;

Exit_MyEncryptFile:
	//---------------------------------------------------------------
	// Close files.
	if (hSourceFile)
	{
		CloseHandle(hSourceFile);
	}
	if (hDestinationFile)
	{
		CloseHandle(hDestinationFile);
	}
	//---------------------------------------------------------------
	// Free memory. 
	if (pbBuffer)
	{
		free(pbBuffer);
	}
	//-----------------------------------------------------------
	// Release the hash object. 
	if (hHash)
	{
		if (!(CryptDestroyHash(hHash)))
		{
			BOOL status = Mess.LoadString(IDS_STRING163);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		}

		hHash = NULL;
	}
	//---------------------------------------------------------------
	// Release the session key. 
	if (hKey)
	{
		if (!(CryptDestroyKey(hKey)))
		{
			BOOL status = Mess.LoadString(IDS_STRING177);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		}
	}
	//---------------------------------------------------------------
	// Release the provider handle. 
	if (hCryptProv)
	{
		if (!(CryptReleaseContext(hCryptProv, 0)))
		{
			BOOL status = Mess.LoadString(IDS_STRING178);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
		}
	}
	return fReturn;
} // End Encryptfile.
