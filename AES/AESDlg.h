
// AESDlg.h : fichier d'en-tête
//

#pragma once
#include "stdint.h"
#include "ColorStatic.h"
#include "MYbutton.h"
#include "ColorRadioButton.h"

enum Commande { _Encode, _Decode };

// boîte de dialogue CAESDlg
class CAESDlg : public CDialogEx
{
// Construction
public:
	CAESDlg(CWnd* pParent = NULL);	// constructeur standard

// Données de boîte de dialogue
	enum { IDD = IDD_AES_DIALOG };

	protected:
	virtual void DoDataExchange(CDataExchange* pDX);	// Prise en charge de DDX/DDV


// Implémentation
protected:
	HICON m_hIcon;
	int   Ordre = _Encode;
	CString Mess;
	uint64_t Calcul;

	// Fonctions générées de la table des messages
	virtual BOOL OnInitDialog();
	afx_msg void OnPaint();
	void		ColorButton_1(int LOrdre);
	afx_msg HCURSOR OnQueryDragIcon();
	DECLARE_MESSAGE_MAP()
public:
	afx_msg void OnBnClickedOk();
	afx_msg void OnBnClickedCancel();
	afx_msg void OnBnClickedRadio1();
	afx_msg void OnBnClickedRadio2();
	afx_msg void OnDropFiles(HDROP hDropInfo);
	CMyButton	 m_chk;
	CColorRadioButton m_radio_0, m_radio_1;
	CColorStatic m_text;
	void	Affichage(uint64_t How_Time);
};
