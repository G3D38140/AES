// This file was created on March 28th 2001. By Robert Brault
//
//

#if !defined(AFX_COLORBUTTON_H__714C19E7_EA25_42DF_928A_51AC901B813D__INCLUDED_)
#define AFX_COLORBUTTON_H__714C19E7_EA25_42DF_928A_51AC901B813D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ColorRadio.h : header file
//
#include "color.h"

/////////////////////////////////////////////////////////////////////////////
// ColorRadio window

class CColorRadioButton : public CButton
{
// Construction
public:
	void SetTextColor(COLORREF crColor); // This Function is to set the Color for the Text.
	void SetBkColor(COLORREF crColor); // This Function is to set the BackGround Color for the Text.
	void SetCheck(UINT Value);
	UINT GetCheck();
	CColorRadioButton();
	void PreSubclassWindow();
	virtual void DrawItem(LPDRAWITEMSTRUCT /*lpDrawItemStruct*/);

	DWORD Mystyle = NULL;

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(ColorRadio)
	//}}AFX_VIRTUAL

	virtual ~CColorRadioButton();

	// Generated message map functions
protected:
	//{{AFX_MSG(CColorStatic)

	CBrush m_brBkgnd; // Holds Brush Color for the Static Text
	COLORREF m_crBkColor = RGB(0, 0, 0); // Holds the Background Color for the Text
	COLORREF m_crTextColor = RGB(0, 0, 0); // Holds the Color for the Text
	BOOL  m_rb1Checked = TRUE;
	afx_msg HBRUSH CtlColor(CDC* pDC, UINT nCtlColor);
	UINT Value_Check;
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_COLORSTATIC_H__614C19E7_EA25_42DF_928A_51AC901B813D__INCLUDED_)
