#include "stdafx.h"
#include "MyButton.h"


CMyButton::CMyButton()
{

}


CMyButton::~CMyButton()
{
}

void CMyButton::MySetColor(COLORREF valeur)
{

	m_color = valeur;
}



void CMyButton::SeTRound(int _Id, HWND _hwnd)
{
	if (_Round == FALSE)
	{
	
	 HWND pt_w =  (HWND)::GetDlgItem(_hwnd, _Id);
	 BOOL Status = ::GetClientRect(pt_w,rcOK);
	 // ::ScreenToClient( pt_w,& rcOK);
	 int call = rcOK.Height();
	 BOOL Sat = rgnOK.CreateRoundRectRgn(rcOK.left, rcOK.top,rcOK.right, rcOK.bottom,5, 5); //ecOK.Height() /2

	 int nRet = ::SetWindowRgn(pt_w , rgnOK, TRUE);
	 _Round = TRUE;

	}
}

void CMyButton::PreSubclassWindow()
{
	CButton::PreSubclassWindow();

	ModifyStyle(0, BS_OWNERDRAW);	// make the button owner drawn
}

void CMyButton::MySetBkColor(COLORREF valeur)
{
	m_bOverControl = true;
	m_Bkcolor = valeur;
}

void CMyButton::DrawItem(LPDRAWITEMSTRUCT lpDrawItemStruct)
{

	// TODO:  Ajoutez votre code pour dessiner l'élément spécifié
	CDC* pDC =   CDC::FromHandle(lpDrawItemStruct->hDC);
	CRect rect = lpDrawItemStruct->rcItem;
	UINT state = lpDrawItemStruct->itemState;

	CString strText;
	GetWindowText(strText);

	// draw the control edges (DrawFrameControl is handy!)
	if (state & ODS_SELECTED)
		pDC->DrawFrameControl(rect, DFC_BUTTON, DFCS_BUTTONPUSH | DFCS_PUSHED);
	else
		pDC->DrawFrameControl(rect, DFC_BUTTON, DFCS_BUTTONPUSH);

	// Deflate the drawing rect by the size of the button's edges
	rect.DeflateRect(CSize(GetSystemMetrics(SM_CXEDGE), GetSystemMetrics(SM_CYEDGE)));

	// Fill the interior color if necessary
	if (m_bOverControl) pDC->FillSolidRect(rect, m_color); // yellow

													// Draw the text
	if (!strText.IsEmpty())
	{
		CSize Extent = pDC->GetTextExtent(strText);
		CPoint pt(rect.CenterPoint().x - Extent.cx / 2, rect.CenterPoint().y - Extent.cy / 2);

		if (state & ODS_SELECTED) pt.Offset(1, 1);

		int nMode = pDC->SetBkMode(TRANSPARENT);

		if (state & ODS_DISABLED)
			pDC->DrawState(pt, Extent, strText, DSS_DISABLED, TRUE, 0, (HBRUSH)NULL);
		else
			pDC->SetTextColor(m_color);
			pDC->TextOut(pt.x, pt.y, strText);

		pDC->SetBkMode(nMode);
	}

}
