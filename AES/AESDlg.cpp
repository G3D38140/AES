
// AESDlg.cpp : fichier d'impl�mentation
//

#include "stdafx.h"
#include "AES.h"
#include "AESDlg.h"
#include "Color.h"
#include "afxdialogex.h"
#include "C_Decode_Interactif.h"
#include "C_Encode_Interactif.h"
#include "Analyse_back_groung.h"
#include "ColorStatic.h"
#include "MYbutton.h"
#include "ColorRadioButton.h"
#include "ColorStatic.h"
#include "ColorStatic.h"

// #include "AjustFileName.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#endif

// bo�te de dialogue CAESDlg

CAESDlg::CAESDlg(CWnd* pParent /*=NULL*/)
	: CDialogEx(CAESDlg::IDD, pParent)
{
	m_hIcon = AfxGetApp()->LoadIcon(IDR_MAINFRAME);
}

void CAESDlg::DoDataExchange(CDataExchange* pDX)
{
	CDialogEx::DoDataExchange(pDX);
}

BEGIN_MESSAGE_MAP(CAESDlg, CDialogEx)
	ON_WM_PAINT()
	ON_WM_QUERYDRAGICON()
	ON_BN_CLICKED(IDOK, &CAESDlg::OnBnClickedOk)
	ON_BN_CLICKED(IDCANCEL, &CAESDlg::OnBnClickedCancel)
	ON_BN_CLICKED(IDC_RADIO1, &CAESDlg::OnBnClickedRadio1)
	ON_BN_CLICKED(IDC_RADIO2, &CAESDlg::OnBnClickedRadio2)
	ON_WM_DROPFILES()
END_MESSAGE_MAP()


// gestionnaires de messages pour CAESDlg

BOOL CAESDlg::OnInitDialog()
{
	CDialogEx::OnInitDialog();

	// D�finir l'ic�ne de cette bo�te de dialogue.  L'infrastructure effectue cela automatiquement
	//  lorsque la fen�tre principale de l'application n'est pas une bo�te de dialogue
	SetIcon(m_hIcon, TRUE);			// D�finir une grande ic�ne
	SetIcon(m_hIcon, FALSE);		// D�finir une petite ic�ne
	ChangeWindowMessageFilter(WM_DROPFILES, MSGFLT_ADD);
	DragAcceptFiles(TRUE);
	// TODO: ajoutez ici une initialisation suppl�mentaire
	// Boutton encode par d�faut
	Ordre = _Encode;

	m_text.SubclassDlgItem(IDC_STATIC, this);
	m_chk.MySetColor(GREEN);
	m_chk.SubclassDlgItem(IDOK, this);
	m_chk.SeTRound( IDOK, GetSafeHwnd());  // l� l�

	m_radio_0.SubclassDlgItem(IDC_RADIO1, this);
	m_radio_0.SetTextColor(GREEN);
	m_radio_0.SetBkColor(BACKGROUND);
	m_radio_0.SetCheck(BST_CHECKED);

	m_radio_1.SubclassDlgItem(IDC_RADIO2, this);
	m_radio_1.SetTextColor(RED);
	m_radio_1.SetBkColor(BACKGROUND);
	m_radio_1.SetCheck(BST_UNCHECKED);
	SetBackgroundColor(BACKGROUND);

	ColorButton_1(Ordre);
	Calcul = 0;
	Affichage(Calcul);

	return TRUE;  // retourne TRUE, sauf si vous avez d�fini le focus sur un contr�le
}

void CAESDlg::ColorButton_1(int LOrdre)
{
	CString Mess;
	BOOL Satus;

	if (LOrdre == _Encode)
	{
		m_chk.MySetColor(GREEN);	
		Satus = Mess.LoadString(IDS_STRING180);
	}
	else
	{
		m_chk.MySetColor(RED);
		Satus =Mess.LoadString(IDS_STRING181);
	}
	SetDlgItemText(IDOK, Mess);
}

// Si vous ajoutez un bouton R�duire � votre bo�te de dialogue, vous devez utiliser le code ci-dessous
//  pour dessiner l'ic�ne.  Pour les applications MFC utilisant le mod�le Document/Vue,
//  cela est fait automatiquement par l'infrastructure.

afx_msg void CAESDlg::OnPaint()
{

	if (IsIconic())
	{
		CPaintDC dc(this); // contexte de p�riph�rique pour la peinture

		SendMessage(WM_ICONERASEBKGND, reinterpret_cast<WPARAM>(dc.GetSafeHdc()), 0);

		// Centrer l'ic�ne dans le rectangle client
		int cxIcon = GetSystemMetrics(SM_CXICON);
		int cyIcon = GetSystemMetrics(SM_CYICON);
		CRect rect;
		GetClientRect(&rect);
		int x = (rect.Width() - cxIcon + 1) / 2;
		int y = (rect.Height() - cyIcon + 1) / 2;

		// Dessiner l'ic�ne
		dc.DrawIcon(x, y, m_hIcon);
	}
	else
	{
		CDialogEx::OnPaint();
	}

}

// Le syst�me appelle cette fonction pour obtenir le curseur � afficher lorsque l'utilisateur fait glisser
//  la fen�tre r�duite.
HCURSOR CAESDlg::OnQueryDragIcon()
{
	return static_cast<HCURSOR>(m_hIcon);
}

void CAESDlg::OnBnClickedOk()
{
	// TODO: ajoutez ici le code de votre gestionnaire de notification de contr�le
	if (Ordre == _Encode)
	{
	   // Lancement en interactif de l'encodage
		C_Encode_Interactif *pt_encode = new C_Encode_Interactif;
		pt_encode->Go();
		Calcul = pt_encode->Calcul;
		delete pt_encode;

	}
	else
	{
		// Lancement en interactif de l'D�codage
		C_Decode_Interactif *pt_decode = new C_Decode_Interactif;
		pt_decode->Go();
		Calcul = pt_decode->Calcul;
		delete pt_decode;
	}
	
	Affichage(Calcul);

}

void CAESDlg::Affichage(uint64_t How_Time)
{
	CString Mess = _T("");

	if (Ordre == _Encode)
	{
		m_text.SetTextColor(GREEN);
	}
	else
	{
		m_text.SetTextColor(RED);
	}
	Mess.Format(_T("Duration : %llu ms"), How_Time);
	SetDlgItemText(IDC_STATIC, Mess);
}

void CAESDlg::OnBnClickedCancel()
{
	// TODO: ajoutez ici le code de votre gestionnaire de notification de contr�le
	CDialogEx::OnCancel();
}


void CAESDlg::OnBnClickedRadio1()
{
	if (m_radio_1.GetCheck() == TRUE)
	{
		m_radio_0.SetCheck(true);
		m_radio_1.SetCheck(false);
		SetBackgroundColor(BACKGROUND);
		m_radio_0.SetBkColor(BACKGROUND);
		m_radio_1.SetBkColor(BACKGROUND);
		Ordre = _Encode;
		ColorButton_1(Ordre);
		Affichage(Calcul);
	}
}

void CAESDlg::OnBnClickedRadio2()
{
	{
		m_radio_0.SetCheck(false);
		m_radio_1.SetCheck(true);
		SetBackgroundColor(BACKGROUND_1);
		m_radio_0.SetBkColor(BACKGROUND_1);
		m_radio_1.SetBkColor(BACKGROUND_1);
		Ordre = _Decode;
		ColorButton_1(Ordre);
		Affichage(Calcul);
	}
}


void CAESDlg::OnDropFiles(HDROP hDropInfo)
{
	// TODO: ajoutez ici le code de votre gestionnaire de messages et/ou les param�tres par d�faut des appels

	UINT i;	
	Analyse_back_groung *pt_traitement = new Analyse_back_groung;
	
	UINT nFiles = ::DragQueryFile(hDropInfo, (UINT)-1, NULL, 0);

	for (i = 0; i < nFiles; i++)
	{
		TCHAR szFileName[_MAX_PATH] =_T("");

		::DragQueryFile(hDropInfo, i, szFileName, _MAX_PATH);
		CString chaine(szFileName);
		pt_traitement->Traitement_fichier(chaine);
		Affichage(pt_traitement->Calcul);
	} 

	delete pt_traitement;
	::DragFinish(hDropInfo);
}
