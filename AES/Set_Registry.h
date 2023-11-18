#pragma once

class Set_Registry
{
public:
	Set_Registry();
	~Set_Registry();


private:

	CString		Key_shell_command, Key_shell_command_value, Key_shell_command_data;
	CString     Key_shell_command1, Key_shell_command2, Key_shell_command3, Key_shell_command4;
	CString	    Key_Shell_association,Key_Shell_association_value,Mess;

	CString		Current_Dir();
	void		Go();
};

