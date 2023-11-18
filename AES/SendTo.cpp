#include "stdafx.h"
#include "resource.h"
#include "objbase.h"
#include "shlobj.h"
#include "SendTo.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

void SendTo::Charge_Constante()
{

	wchar_t buffer[MAX_PATH];
	Back_slash = _T("\\");
	GetModuleFileName(0, buffer, MAX_PATH);
	Nom_exécutable_complet = buffer;
	Ext_lnk = _T(".lnk");
}

SendTo::SendTo()
{
	CString Local,Local_1;
	Charge_Constante();

	nom_du_Racoourcis = AfxGetAppName();
	Chemin_complet = Current_Dir() + Back_slash;
	nom_sortie_complet = _T("\"") + Sepcial_Folder(CSIDL_SENDTO) + Back_slash + AfxGetAppName() + Ext_lnk + _T("\"");
	CreateShortCut(Nom_exécutable_complet, nom_du_Racoourcis, Sepcial_Folder(CSIDL_SENDTO) + Back_slash + AfxGetAppName() + Ext_lnk, nom_sortie_complet, Nom_exécutable_complet.Left(Nom_exécutable_complet.ReverseFind('\\')));


}

SendTo::~SendTo()
{
}

CString SendTo::Sepcial_Folder(int _directory_resquest)
{
	
	TCHAR szPath[MAX_PATH] =_T("");

	SHGetFolderPath(NULL, _directory_resquest, NULL, 0, szPath);

	CString chaine(szPath);
	return (chaine);

}

CString SendTo::Current_Dir()
{
	CString Chaine;

	::GetCurrentDirectory(MAX_PATH, Chaine.GetBuffer(MAX_PATH));
	Chaine.ReleaseBuffer();
	return (Chaine);

}

HRESULT SendTo::CreateShortCut(CString Nom_exécutable_complet, CString nom_du_Racoourcis, CString nom_sortie_complet, CString Chemin_complet,CString Espace_de_travail)
{
	HRESULT hres;
	IShellLink* pShellLink = NULL;
	IPersistFile *pPersistFile;

	hres = CoInitialize(NULL);
	if (!SUCCEEDED(hres))
	{
		AfxMessageBox(_T("Erreur CoCreateInstance"), MB_OK);
		return 1;
	}

	hres = CoCreateInstance(CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER, IID_IShellLink, (void**)&pShellLink);
	if (SUCCEEDED(hres))
	{ 
		hres = pShellLink->SetPath(Nom_exécutable_complet);  // Path to the object we are referring to
		ASSERT(hres == S_OK);
		hres = pShellLink->SetArguments(_T(""));
		ASSERT(hres == S_OK);
		hres = pShellLink->SetWorkingDirectory(Espace_de_travail);
		ASSERT(hres == S_OK);
		hres = pShellLink->SetDescription(nom_du_Racoourcis);
		ASSERT(hres == S_OK);
		hres = pShellLink->SetIconLocation(Nom_exécutable_complet, 0);
		ASSERT(hres == S_OK);
		hres = pShellLink->QueryInterface(IID_IPersistFile, (void**)&pPersistFile);

		if (SUCCEEDED(hres))
		{
			hres = pPersistFile->Save(nom_sortie_complet, TRUE);

			if (hres != S_OK)
			{
				AfxMessageBox(_T("Erreur de parametres"), MB_OK);
			}
			pPersistFile->Release();
		}
		else
		{
			AfxMessageBox(_T("Erreur de création"), MB_OK);
			return 2;
		}
		pShellLink->Release();
	}
	else
	{
		AfxMessageBox(_T("Erreur CoCreateInstance"), MB_OK);
		return 1;
	}

	return (hres);
}
