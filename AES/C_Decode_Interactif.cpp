#include "stdafx.h"
#include "stdint.h"
#include "resource.h"		// symboles principaux
#include "C_Decode_Interactif.h"
#include"C_AES_Decode.h"
#include "AjustFileName.h"
#include "Calcul_temps.h"



C_Decode_Interactif::C_Decode_Interactif()
{
	pt_decode = new C_AES_Decode;
	pt_pass = new C_Password;
	pt_Erreur = new C_Error_Message;
	pt_fichier = new Manipulation_Fichier;
}


C_Decode_Interactif::~C_Decode_Interactif()
{
	delete pt_decode;
	delete pt_pass;
	delete pt_Erreur;
	delete pt_fichier;
}

CString C_Decode_Interactif::Current_Dir()
{
	CString Chaine;

	::GetCurrentDirectory(MAX_PATH, Chaine.GetBuffer(MAX_PATH));
	Chaine.ReleaseBuffer();
	return (Chaine);

}

bool C_Decode_Interactif::Open_Save(LPTSTR File)
{
	CString OpenFilter;

	BOOL status = Mess.LoadString(IDS_STRING186);
	OpenFilter = Mess;
	status = Mess.LoadString(IDS_STRING187);
	OpenFilter += Mess;

	CFileDialog FileOpenDialog(FALSE,NULL,File,OFN_FILEMUSTEXIST | OFN_HIDEREADONLY | OFN_PATHMUSTEXIST,OpenFilter, AfxGetMainWnd());
	

	CString local_string = Current_Dir();

	FileOpenDialog.m_ofn.lpstrInitialDir = local_string;


	status = Mess.LoadString(IDS_STRING188);
	FileOpenDialog.m_ofn.lpstrTitle = Mess;

	if (FileOpenDialog.DoModal() == IDOK)
	{
		pszDestination = FileOpenDialog.m_ofn.lpstrFile;
		return true;
	}
	return false;
}


bool C_Decode_Interactif::Open_File(LPTSTR File)
{
	CString OpenFilter;
	CString local_File(File);

	BOOL status = Mess.LoadString(IDS_STRING189);
	OpenFilter = Mess;
	status = Mess.LoadString(IDS_STRING187);
	OpenFilter += Mess;

	CFileDialog FileOpenDialog(
		TRUE,
		NULL,
		local_File,
		OFN_FILEMUSTEXIST | OFN_HIDEREADONLY | OFN_PATHMUSTEXIST,
		OpenFilter,                       // filter
		AfxGetMainWnd());               // the parent window 

	CString local_string = Current_Dir();

	FileOpenDialog.m_ofn.lpstrInitialDir = local_string;

	status = Mess.LoadString(IDS_STRING188);
	FileOpenDialog.m_ofn.lpstrTitle = Mess;

	if (FileOpenDialog.DoModal() == IDOK)
	{
		pszSource = FileOpenDialog.m_ofn.lpstrFile;
		return true;
	}
	return false;

}

bool C_Decode_Interactif::Go()
{

	AjustFileName *pt_Ajust = new AjustFileName;

	// Call EncryptFile to do the actual encryption.
	BOOL status = Mess.LoadString(IDS_STRING182);

	if (Open_File(Mess.GetBuffer()) == true)
	{
		CString tt = pt_fichier->Supprime_Extension(pszSource);
		status =  Mess.LoadString(IDS_STRING206);
		CString  Local = pt_fichier->Ajoute_Extension (pt_fichier->Supprime_Extension(pszSource),Mess);
		Calcul_temps *pt_time = new Calcul_temps;
		pt_time->Start_time();
		if (pt_decode->MyDecryptFile(pszSource.GetBuffer(), pt_Ajust->Do(Local).GetBuffer(), pt_pass->Get_Ressource_huff(IDR_MYFILE).GetBuffer()))
		{
			pt_time->Stop_time();
			Calcul = pt_time->Read_time();
			delete pt_time;
			delete pt_Ajust;
			return true;
		}
		else
		{
			pt_time->Stop_time();
			status = Mess.LoadString(IDS_STRING185);
			pt_Erreur->MyHandleError(Mess.GetBuffer(), GetLastError());
			delete pt_Ajust;
			delete pt_time;
			return false;
		}
	}
	delete pt_Ajust;
	return false;
}