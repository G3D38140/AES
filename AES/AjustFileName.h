#pragma once


class AjustFileName
{
public:
	AjustFileName();
	~AjustFileName();
	CString		Do(CString File);
	char *		Do_Buffer(char *buffer);

private:

	CString		Supprime_Extension(CString chaine);
	CString		Get_Extension(CString chaine);
	BOOL		FileExist(CString File);
	void		SortStringArray(CStringArray &csa, BOOL bDescending);
	CString		BuildName(CString File);
	void		Conversion(char *destination, CString chaine);
};

