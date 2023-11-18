#pragma once
class Cluster_Size
{
public:

	Cluster_Size();
	~Cluster_Size();
	DWORD		Get();
	DWORD		Getx2();
	DWORD		Getx4();
	DWORD		Getx8();

private :

	CString		GetContainingFolder(CString &file);
	DWORD		Get_Current_Size_Disk_Cluster();

};

