#include "stdafx.h"
#include "stdint.h"
#include "resource.h"
#include "Analyse_back_groung.h"
#include "Manipulation_Fichier.h"
#include "C_AES_Decode.h"
#include "C_AES_Encode.h"
#include "C_Password.h"
#include "AjustFileName.h"
#include "Calcul_temps.h"

Analyse_back_groung::Analyse_back_groung()
{
	pt_fichier = new Manipulation_Fichier;
    pt_encode  = new C_AES_Encode;
	pt_decode = new C_AES_Decode;
	pt_pass = new C_Password;
	BOOL status = ext.LoadString(IDS_STRING130);

}


Analyse_back_groung::~Analyse_back_groung()
{
	delete pt_fichier;
	delete pt_encode;
	delete pt_decode;
	delete pt_pass;

}

BOOL Analyse_back_groung::Run(LPTSTR *pt_chaine, int Count)
{

	if (Count == 1) return (FALSE);

	// Au moins 1 parametres passé
	for (int i = 1; i < Count; i++)
	{

	 // le premier parametre n'est pas mémorisé
	// Car il contient le chemin complet ainsi que le nom du programme
	liste_fichier.Add(pt_chaine[i]);

	}

	for (int i = 0; i < liste_fichier.GetSize(); i++)
	  {
	   Traitement_fichier(liste_fichier.GetAt(i));
	  }

	liste_fichier.RemoveAll();

     return (TRUE);
	
}

bool Analyse_back_groung::Traitement_fichier(CString chaine)
{
	
	if (pt_fichier->Test_Extention(chaine, ext) == TRUE)
	{
	    // Le fichier est a décoder
		AjustFileName *pt_Ajust = new AjustFileName;
		CString Mess;
		BOOL Status;

		Status = Mess.LoadString(IDS_STRING206);
		CString Local = pt_fichier ->Ajoute_Extension(pt_fichier->Supprime_Extension(chaine), Mess);
		Calcul_temps *pt_time = new Calcul_temps;
		pt_time->Start_time();
		pt_decode->MyDecryptFile(chaine.GetBuffer(), pt_Ajust->Do(Local).GetBuffer(), (pt_pass->Get_Ressource_huff(IDR_MYFILE)).GetBuffer());
		pt_time->Stop_time();
		Calcul = pt_time->Read_time();
		delete pt_Ajust;
	}
	else
	{
	    // le fichier est à encoder
		AjustFileName *pt_Ajust = new AjustFileName;
		CString Local = pt_fichier->Ajoute_Extension(pt_fichier->Supprime_Extension(chaine), ext);
		Calcul_temps *pt_time = new Calcul_temps;
		pt_time->Start_time();
		pt_encode->MyEncryptFile(chaine.GetBuffer(), pt_Ajust->Do(Local).GetBuffer(), (pt_pass->Get_Ressource_huff(IDR_MYFILE)).GetBuffer());
		pt_time->Stop_time();
		Calcul = pt_time->Read_time();
		delete pt_Ajust;
	}
	
	return true;
}