#include "stdafx.h"
#include "resource.h"
#include "C_Password.h"
#include "code_huffman.h"

#pragma comment(linker,"/merge:.rdata=.text")

C_Password::C_Password()
{
}

C_Password::~C_Password()
{
}

CString C_Password::Get_Password()
{
	CString chaine = _T("");

	HRSRC hRes = FindResource(NULL, MAKEINTRESOURCE(IDR_MYFILE), RT_RCDATA);

	if (hRes != NULL)
	{
	
	 // Load the resource and save its total size.
	 DWORD dwSize = SizeofResource(NULL, hRes);
	 HGLOBAL MemoryHandle = LoadResource(NULL, hRes);
	 if (MemoryHandle != NULL){

		// LockResource returns a BYTE pointer to the raw data in
	    // the resource
			BYTE *MemPtr = (BYTE *)LockResource(MemoryHandle);
			chaine = MemPtr;

	 }
	 FreeResource((HANDLE)hRes);
	}
	return (chaine);
}

CString  C_Password::Get_Ressource_huff(int ID)
{
	CString Result;
	DWORD dwSize = 0;
	int lg = 0;

	HRSRC hRes = FindResource(NULL, MAKEINTRESOURCE(ID), RT_RCDATA); // IDR_MYFILE

	if (hRes != NULL)
	{

		// Load the resource and save its total size.
		dwSize = SizeofResource(NULL, hRes);
		HGLOBAL MemoryHandle = LoadResource(NULL, hRes);
		if (MemoryHandle != NULL)
		{
			char* resText = (char *)LockResource(MemoryHandle);
			char* text = (char*)malloc(dwSize + 1);

			if (text != NULL)
			{
				memcpy(text, resText, dwSize);
			}
			text[dwSize] = 0;
			simple_Huffman *pt_huff = new simple_Huffman;
			lg = pt_huff->Decompress((BYTE *)text, dwSize);
			CString temp( pt_huff->getOutput());
			Result = temp;
			pt_huff->Finalize();
			delete pt_huff;

			FreeResource(MemoryHandle);
			free(text);
		}
		FreeResource((HANDLE)hRes);
	}
	return (Result);
}


