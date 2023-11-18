#pragma once
#include "stdafx.h"
#include "resource.h"
#include "Registry.h"
#include "Set_Registry.h"


Set_Registry::Set_Registry()
{
	 Mess.Empty();
	 Mess.LoadString(IDS_STRING196);
	 Key_shell_command = Mess; // "Software\\Classes\\My AES"

	 Mess.Empty();
	 Mess.LoadString(IDS_STRING201);
	 Key_shell_command1 = Mess; // "Software\\Classes\\My AES\\shell"

	 Mess.Empty();
	 Mess.LoadString(IDS_STRING202);
	 Key_shell_command2 = Mess; // "Software\\Classes\\My AES\\shell\\open"
	
	 Mess.Empty();
	 Mess.LoadString(IDS_STRING203);
	 Key_shell_command3 = Mess; // "Software\\Classes\\My AES\\shell\\open\\command"

	 Mess.Empty();
	 Mess.LoadString(IDS_STRING197);  // "@"
	 Key_shell_command_value = Mess;

	 Mess.Empty();
	 Mess.LoadString(IDS_STRING200);
	 Key_shell_command_data = Current_Dir() + Mess; // "c:\\path\\to\\"AES.exe \\ %1\\

	 Mess.Empty();
	 Mess.LoadString(IDS_STRING204);
	 Key_Shell_association = Mess;    // "Software\\Classes\\.yltr"

	 Mess.Empty();
	 Mess.LoadString(IDS_STRING205); // "My AES"
	 Key_Shell_association_value = Mess;

	 // Work
	 Go();
   
}


Set_Registry::~Set_Registry()
{
	

}

CString Set_Registry::Current_Dir()
{
	CString Chaine;

	::GetCurrentDirectory(MAX_PATH, Chaine.GetBuffer(MAX_PATH));
	Chaine.ReleaseBuffer();
	return (Chaine + _T("\\"));

}

void Set_Registry::Go()
{
	CRegistry	*pt_reg = new CRegistry(HKEY_CURRENT_USER);


	if (pt_reg->VerifyKey(HKEY_CURRENT_USER, Key_shell_command) == FALSE) // Key_shell_command
	{
		// La clé n'existe pas on la crée
		pt_reg->CreateKey(HKEY_CURRENT_USER, Key_shell_command); 
		pt_reg->CreateKey(HKEY_CURRENT_USER, Key_shell_command1);
		pt_reg->CreateKey(HKEY_CURRENT_USER, Key_shell_command2);
		pt_reg->CreateKey(HKEY_CURRENT_USER, Key_shell_command3);

		// On met la valeur
		if (pt_reg->Open(HKEY_CURRENT_USER, Key_shell_command3) == TRUE)
		{
		 pt_reg->Write(Key_shell_command_value, Key_shell_command_data); 
		 pt_reg->Close();
		}
	}
	else
	{
		// Rafraichie la valeur de la clée
		if (pt_reg->Open(HKEY_CURRENT_USER, Key_shell_command3) == TRUE)
		{
			pt_reg->Write(Key_shell_command_value, Key_shell_command_data); 
			pt_reg->Close();
		}
	}

	// Travail sur le key de shell-association
	if (pt_reg->VerifyKey(HKEY_CURRENT_USER, Key_Shell_association) == TRUE)
	{
		// La clé n'existe pas on la crée
		pt_reg->CreateKey(HKEY_CURRENT_USER, Key_Shell_association);
		// On met la valeur
		if (pt_reg->Open(HKEY_CURRENT_USER, Key_Shell_association) == TRUE)
		{
			pt_reg->Write(Key_shell_command_value, Key_Shell_association_value);
			pt_reg->Close();
		}
	}
	
	delete pt_reg;

}