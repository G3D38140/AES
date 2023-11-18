#include "stdafx.h"
#include "AjustFileName.h"



#ifdef _DEBUG
#define new DEBUG_NEW
#endif


int CompareDescending(const void *a, const void *b);
int CompareAscending(const void *a, const void *b);
CStringArray  List;

AjustFileName::AjustFileName()
{
	List.RemoveAll();
}


AjustFileName::~AjustFileName()
{
}

CString AjustFileName::Supprime_Extension(CString chaine)
{
	int index = chaine.Find((wchar_t)'.');

	CString local = chaine.Left(index);
	return (local);
}

CString AjustFileName::Get_Extension(CString chaine)
{
	int index = chaine.ReverseFind((wchar_t)'.');
	CString local = chaine.Right(chaine.GetLength()- (index +1));
	return (local);
}

BOOL AjustFileName::FileExist(CString File)
{

	CFile file_object;
	BOOL  status = file_object.Open(File.GetBuffer(), CFile::modeRead);
	
	if (status == FALSE) return (FALSE);
	
	file_object.Close();
	return (TRUE);
}

int CompareAscending(const void *a, const void *b)
{
	CString *pA = (CString*)a;
	CString *pB = (CString*)b;
	return (pA->Compare(*pB));
}

int CompareDescending(const void *a, const void *b)
{
	CString *pA = (CString*)a;
	CString *pB = (CString*)b;
	return (-1 * (pA->Compare(*pB)));
}

void AjustFileName::SortStringArray(CStringArray &csa, BOOL bDescending)
{
	int iArraySize = csa.GetSize();
	if (iArraySize <= 0)
		return;

	int iCSSize = sizeof(CString*);
	void* pArrayStart = (void *)&csa[0];

	if (bDescending)
		qsort(pArrayStart, iArraySize, iCSSize, CompareDescending);
	else
		qsort(pArrayStart, iArraySize, iCSSize, CompareAscending);
}

char * AjustFileName::Do_Buffer(char *buffer)
{
	CString local(buffer);
	local = Do(local);
	Conversion(buffer, local);
	return (buffer);
}

void AjustFileName::Conversion(char *destination, CString chaine)
{
	const size_t newsizew = (chaine.GetLength() + 1) * 2;
	char *nstringw = new char[newsizew];
	size_t convertedCharsw = 0;
	*destination = 0x00;
	wcstombs_s(&convertedCharsw, nstringw, newsizew, chaine, _TRUNCATE);
	sprintf(destination, "%s", nstringw);
	delete[] nstringw;
}

CString AjustFileName::Do(CString File)
{
	BOOL bWorking = FALSE;
	CFileFind finder;
	CString NewFile;
	CString radical = Supprime_Extension(File);
	CString Ext = Get_Extension(File);


	if (FileExist(File) == TRUE)
	{
		NewFile.Format(_T("%s*.%s"), radical, Ext);
		bWorking = finder.FindFile(NewFile);
		while (bWorking)
		{		
			bWorking = finder.FindNextFile();
			CString local = finder.GetFilePath();
			List.Add(local);
	
		}

		int index = List.GetSize();
		if (index == 1)
		{
			if (File != (radical + _T("(1).") + Ext))
			{
				NewFile.Format(_T("%s(1).%s"), radical, Ext);
				return(NewFile);
			}
		}
		else
		{
			SortStringArray(List, FALSE);
			return (BuildName(List.GetAt(index - 2)));
		}
	}
	return (File);
}

CString AjustFileName::BuildName(CString File)
{
	CString NewFile;
	int index_0 = File.ReverseFind((wchar_t)')');
	int index_1 = File.ReverseFind((wchar_t)'(');
	CString End_of_File = File.Right(File.GetLength() - (index_0 + 1));
	CString Begin_of_File = File.Left(index_1);
	CString Index = File.Mid(index_1+1, index_0 - index_1-1);
	int cpt = _wtoi(Index);
	cpt++;
	NewFile.Format(_T("%s(%d)%s"), Begin_of_File, cpt, End_of_File);
	return (NewFile);
}