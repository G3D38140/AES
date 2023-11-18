#pragma once

#include "afxwin.h"

class CMyButton : public CButton
{
public:

	CMyButton();
	~CMyButton();
	virtual void DrawItem(LPDRAWITEMSTRUCT /*lpDrawItemStruct*/);
	void CMyButton::MySetColor(COLORREF valeur);
	void CMyButton::MySetBkColor(COLORREF valeur);
	void CMyButton::SeTRound(int _Id, HWND _hwnd);

private:

	void CMyButton::PreSubclassWindow();

	COLORREF  m_color = 0;
	COLORREF  m_Bkcolor= 0;
	bool m_bOverControl = false;
	CRect    rcOK;
	CRgn     rgnOK;
	BOOL	_Round = FALSE;

};

