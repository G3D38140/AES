	 //  https://jeffpar.github.io/kbarchive/kb/115/Q115087/
	 // CFileDialogEx.cpp:  file
     // 
     // CFileDialogEx.cpp : implementation file
     // 
     #include "stdafx.h"
	 #include <dlgs.h>
     #include <afxdlgs.h>
     #include "CFileDialogEx.h"

     #ifdef _DEBUG
     #undef THIS_FILE
     static char BASED_CODE THIS_FILE[] = __FILE__;
     #endif



#define BACKGROUNG_COLOR  RGB(0, 0, 255)

     ////////////////////////////////////////////////////////////////////// 
     // CFileDialogEx dialog

     CFileDialogEx::CFileDialogEx(CWnd* pParent /*=NULL*/)
         : CFileDialog(TRUE, NULL, NULL, OFN_HIDEREADONLY)
     {
         //{{AFX_DATA_INIT(CFileDialogEx)
             // NOTE: the ClassWizard will add member initialization here
         //}}AFX_DATA_INIT
     }

     
     CFileDialogEx::CFileDialogEx(int sens,CString  value, CString  File, int tstus, CString OpenFilter, CWnd * h_win)
         : CFileDialog(sens,value, File,  tstus,  OpenFilter,  h_win)
     {
         //{{AFX_DATA_INIT(CFileDialogEx)
             // NOTE: the ClassWizard will add member initialization here
         //}}AFX_DATA_INIT
     }
     
     void CFileDialogEx::DoDataExchange(CDataExchange* pDX)
     {
         CDialog::DoDataExchange(pDX);
         //{{AFX_DATA_MAP(CFileDialogEx)
             // NOTE: the ClassWizard will add DDX and DDV calls here
         //}}AFX_DATA_MAP
     }

     BEGIN_MESSAGE_MAP(CFileDialogEx, CFileDialog)
         //{{AFX_MSG_MAP(CFileDialogEx)
         ON_WM_CTLCOLOR()
         ON_WM_ERASEBKGND()
         //ON_CTLCOLORDLG()

         //}}AFX_MSG_MAP
     END_MESSAGE_MAP()

     ////////////////////////////////////////////////////////////////////// 
     // CFileDialogEx message handlers
     BOOL CFileDialogEx::OnEraseBkgnd(CDC* pDC)
     {
         pDC->SetBkColor(RGB(0, 0, 255));
         return TRUE;
     }

     HBRUSH CFileDialogEx::OnCtlColor(CDC* pDC, CWnd* pWnd, UINT nCtlColor)
     {
         m_pBkBrush.CreateSolidBrush(BACKGROUNG_COLOR);
         switch (nCtlColor) {

         case CTLCOLOR_STATIC:
         {
             // Set the static text to white on blue.
             pDC->SetBkColor(RGB(0, 0, 255));
             return (m_pBkBrush);
         }
         case CTLCOLOR_DLG:
             return (HBRUSH)(m_pBkBrush.GetSafeHandle());

         default:
              return CFileDialog::OnCtlColor(pDC, pWnd, nCtlColor);
         }
     }
