// This file was created on March 28th 2001 by Robert Brault.
// I created this Class to be able change the Color of your Static Text.
// This is Derived from CButton.
//
// There are three functions available Currently:
// SetBkColor(COLORREF crColor)
// SetTextColor(COLORREF crColor)
//
// How To Use:
// Add three files to your project
// CColorRadioButton.cpp, CColorRadioButton.h and Color.h
// Color.h has (#define)'s for different colors (add any color you desire).
//
// Add #include "CColorRadioButton.h" to your Dialogs Header file.
// Declare an instance of CColorRadioButton for each button being modified.
// Ex. CColorRadioButton m_radio;
//
// In your OnInitDialog() add a SubclassDlgItem for each CColorStatic member variable.
// Ex. m_radio.SubclassDlgItem(IDC_ST_TEXT, this);
// In this same function initialize your color for each piece of text unless you want the default.


// CColorRadioButton.cpp : implementation file
//

#include "stdafx.h"
#include "resource.h"
#include "ColorRadioButton.h"

#ifdef _DEBUG
#define new DEBUG_NEW
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif

/////////////////////////////////////////////////////////////////////////////
// CColorRadioButton

CColorRadioButton::CColorRadioButton()
{
	m_crBkColor = ::GetSysColor(COLOR_3DFACE); // Initializing the Background Color to the system face color.
	m_crTextColor = BLACK; // Initializing the text to Black
	m_brBkgnd.CreateSolidBrush(m_crBkColor); // Create the Brush Color for the Background.

}

CColorRadioButton::~CColorRadioButton()
{
}


BEGIN_MESSAGE_MAP(CColorRadioButton, CStatic)
	//{{AFX_MSG_MAP(CColorStatic)
	ON_WM_CTLCOLOR_REFLECT()
	ON_WM_CTLCOLOR()
	//}}AFX_MSG_MAP
END_MESSAGE_MAP()

/////////////////////////////////////////////////////////////////////////////
// CColorRadioButton message handlers

HBRUSH CColorRadioButton::CtlColor(CDC* pDC, UINT nCtlColor) 
{
	HBRUSH hbr;
	hbr = (HBRUSH)m_brBkgnd; // Passing a Handle to the Brush
	pDC->SetBkColor(m_crBkColor); // Setting the Color of the Text Background to the one passed by the Dialog
	pDC->SetTextColor(m_crTextColor); // Setting the Text Color to the one Passed by the Dialog

	if (nCtlColor) nCtlColor += 0;
	
	return hbr;
}

void CColorRadioButton::SetBkColor(COLORREF crColor)
{
	m_crBkColor = crColor; // Passing the value passed by the dialog to the member varaible for Backgound Color
	m_brBkgnd.DeleteObject(); // Deleting any Previous Brush Colors if any existed.
	m_brBkgnd.CreateSolidBrush(crColor); // Creating the Brush Color For the Static Text Background
	RedrawWindow();
}

void CColorRadioButton::SetTextColor(COLORREF crColor)
{
	m_crTextColor = crColor; 
	RedrawWindow();
}

void CColorRadioButton::SetCheck(UINT Value)
{
	m_rb1Checked = Value;
	RedrawWindow();

}


UINT CColorRadioButton::GetCheck()
{

	return (m_rb1Checked); 

}

void CColorRadioButton::DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct)
{
	UINT uStyle =  Mystyle; 
	CDC* pDC = CDC::FromHandle(lpDrawItemStruct->hDC);
	CString strText;
	UINT Option = DT_RIGHT;
	CRect rcBullet(&lpDrawItemStruct->rcItem);
	rcBullet.right = rcBullet.left + rcBullet.Height();

	GetWindowText(strText);
	pDC->FillSolidRect(&lpDrawItemStruct->rcItem, m_crBkColor);
	UINT nState = DFCS_BUTTONRADIO|DFCS_ADJUSTRECT;
	if (m_rb1Checked) nState |= DFCS_CHECKED;
	pDC->DrawFrameControl(rcBullet, DFC_BUTTON, nState);
	
	if ((uStyle & BS_RIGHT) == BS_RIGHT)   Option = DT_RIGHT;
	if ((uStyle & BS_LEFT) == BS_LEFT)     Option = DT_LEFT;
	if ((uStyle & BS_CENTER) == BS_CENTER) Option = DT_CENTER;
	::SetTextColor(lpDrawItemStruct->hDC, m_crTextColor);
	::SetBkColor(lpDrawItemStruct->hDC, m_crBkColor);
	::DrawText(lpDrawItemStruct->hDC, strText, strText.GetLength(), &lpDrawItemStruct->rcItem,  Option); 

}

void CColorRadioButton::PreSubclassWindow()
{	
	CButton::PreSubclassWindow();
	Mystyle =GetButtonStyle()|  BS_OWNERDRAW;
	SetButtonStyle(Mystyle);
}
