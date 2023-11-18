#pragma once

class C_Error_Message
{
public:
	
	void Print_Message(CString psz);
	void MyHandleError(LPTSTR psz, int nErrorNumber);

private:
	CString Mess;

};

