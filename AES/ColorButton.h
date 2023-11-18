// This file was created on March 28th 2001. By Robert Brault
//
//

#if !defined(AFX_COLORBUTTON_H__714C19E7_EA25_42DF_928A_51AC901B813D__INCLUDED_)
#define AFX_COLORBUTTON_H__714C19E7_EA25_42DF_928A_51AC901B813D__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000
// ColorButton.h : header file
//
#include "color.h"

/////////////////////////////////////////////////////////////////////////////
// CColorStatic window

class CColorButton : public CButton
{
// Construction
public:
	void SetTextColor(COLORREF crColor); // This Function is to set the Color for the Text.
	void SetBkColor(COLORREF crColor); // This Function is to set the BackGround Color for the Text.
	CColorButton();
	void PreSubclassWindow();

// Overrides
	// ClassWizard generated virtual function overrides
	//{{AFX_VIRTUAL(CColorButton)
	//}}AFX_VIRTUAL

	virtual ~CColorButton();

	// Generated message map functions
protected:
	//{{AFX_MSG(CColorStatic)

	CBrush m_brBkgnd; // Holds Brush Color for the Static Text
	COLORREF m_crBkColor; // Holds the Background Color for the Text
	COLORREF m_crTextColor; // Holds the Color for the Text
	
	afx_msg HBRUSH CtlColor(CDC* pDC, UINT nCtlColor);
	//}}AFX_MSG

	DECLARE_MESSAGE_MAP()
};

/////////////////////////////////////////////////////////////////////////////

//{{AFX_INSERT_LOCATION}}
// Microsoft Visual C++ will insert additional declarations immediately before the previous line.

#endif // !defined(AFX_COLORSTATIC_H__614C19E7_EA25_42DF_928A_51AC901B813D__INCLUDED_)
