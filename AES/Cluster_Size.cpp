#include "stdafx.h"
#include "Cluster_Size.h"


#ifdef _DEBUG
#define new DEBUG_NEW
#endif

Cluster_Size::Cluster_Size()
{
}


Cluster_Size::~Cluster_Size()
{
}


CString Cluster_Size::GetContainingFolder(CString &file)
{
	CFileFind fileFind;
	fileFind.FindFile(file);
	fileFind.FindNextFile();
	return fileFind.GetRoot();
}

DWORD Cluster_Size::Get_Current_Size_Disk_Cluster()
{
	DWORD lpSectorsPerCluster;
	DWORD lpBytesPerSector;
	DWORD lpNumberOfFreeClusters;
	DWORD lpTotalNumberOfClusters;
	CString Chaine;
	wchar_t buffer[MAX_PATH];

	// wchar_t buffer[MAX_PATH];
	GetModuleFileName(0, buffer, MAX_PATH);  // Chaine.GetBuffer()
	Chaine = buffer;
	Chaine = GetContainingFolder(Chaine);
	Chaine.SetAt(3, 0x00);
	GetDiskFreeSpace(Chaine, &lpSectorsPerCluster, &lpBytesPerSector, &lpNumberOfFreeClusters, &lpTotalNumberOfClusters);
	return (lpSectorsPerCluster * lpBytesPerSector);
}


DWORD	Cluster_Size::Getx2()
{
	return (2 * Get_Current_Size_Disk_Cluster());
}

DWORD	Cluster_Size::Getx4()
{
	return (4 * Get_Current_Size_Disk_Cluster());
}
DWORD	Cluster_Size::Getx8()
{
	return (8 * Get_Current_Size_Disk_Cluster());
}

DWORD	Cluster_Size::Get()
{
	return (Get_Current_Size_Disk_Cluster());
}