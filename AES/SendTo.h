#pragma once


class SendTo
{
public:
	SendTo();
	~SendTo();

private:
	HRESULT CreateShortCut(CString Nom_exécutable_complet, CString nom_du_Racoourcis, CString nom_sortie_complet, CString Chemin_complet, CString Espace_de_travail);
	CString Current_Dir();
	CString Sepcial_Folder(int _directory_resquest);
	void    Charge_Constante();

	CString Nom_exécutable_complet;
	CString Chemin_complet;
	CString nom_du_Racoourcis;
	CString nom_sortie_complet;
	CString Add_chemin;
	CString Back_slash, Ext_lnk, Nom_Espace_de_travail;

};

