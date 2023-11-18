#include "stdafx.h"
#include "resource.h"
#include "C_Error_Message.h"

#ifdef _DEBUG
void C_Error_Message::Print_Message(CString psz)
{
	Mess.LoadString(IDS_STRING193);
	MessageBox(NULL, psz, Mess, MB_OK);
}
#endif

void C_Error_Message::MyHandleError(LPTSTR psz, int nErrorNumber)
{
	CString COMP;
	BOOL status = Mess.LoadString(IDS_STRING194);
	COMP.Format(Mess, psz, nErrorNumber);
	status = Mess.LoadString(IDS_STRING195);
	MessageBox(NULL, COMP, Mess, MB_OK);
}
