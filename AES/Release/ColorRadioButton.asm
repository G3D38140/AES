; Listing generated by Microsoft (R) Optimizing Compiler Version 19.23.28106.4 

	TITLE	i:\projets\aes\aes\aes\colorradiobutton.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

PUBLIC	??_R2CColorRadioButton@@8			; CColorRadioButton::`RTTI Base Class Array'
PUBLIC	??_R1A@?0A@EA@CColorRadioButton@@8		; CColorRadioButton::`RTTI Base Class Descriptor at (0,-1,0,64)'
PUBLIC	??_R3CColorRadioButton@@8			; CColorRadioButton::`RTTI Class Hierarchy Descriptor'
PUBLIC	??_R0?AVCColorRadioButton@@@8			; CColorRadioButton `RTTI Type Descriptor'
PUBLIC	??_R4CColorRadioButton@@6B@			; CColorRadioButton::`RTTI Complete Object Locator'
PUBLIC	??_7CColorRadioButton@@6B@			; CColorRadioButton::`vftable'
EXTRN	__imp__GetWindowLongW@8:PROC
EXTRN	__imp__DrawTextW@20:PROC
EXTRN	__imp__SetTextColor@8:PROC
EXTRN	__imp__DrawFrameControl@16:PROC
EXTRN	?GetExStyle@CWnd@@QBEKXZ:PROC			; CWnd::GetExStyle
EXTRN	?FillSolidRect@CDC@@QAEXPBUtagRECT@@K@Z:PROC	; CDC::FillSolidRect
EXTRN	?GetWindowTextW@CWnd@@QBEXAAV?$CStringT@_WV?$StrTraitMFC@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@@Z:PROC ; CWnd::GetWindowTextW
EXTRN	__imp__CopyRect@8:PROC
EXTRN	?FromHandle@CDC@@SGPAV1@PAUHDC__@@@Z:PROC	; CDC::FromHandle
EXTRN	?OnCtlColor@CWnd@@IAEPAUHBRUSH__@@PAVCDC@@PAV1@I@Z:PROC ; CWnd::OnCtlColor
;	COMDAT ??_7CColorRadioButton@@6B@
CONST	SEGMENT
??_7CColorRadioButton@@6B@ DD FLAT:??_R4CColorRadioButton@@6B@ ; CColorRadioButton::`vftable'
	DD	FLAT:?GetRuntimeClass@CButton@@UBEPAUCRuntimeClass@@XZ
	DD	FLAT:??_ECColorRadioButton@@UAEPAXI@Z
	DD	FLAT:?Serialize@CObject@@UAEXAAVCArchive@@@Z
	DD	FLAT:?OnCmdMsg@CCmdTarget@@UAEHIHPAXPAUAFX_CMDHANDLERINFO@@@Z
	DD	FLAT:?OnFinalRelease@CWnd@@UAEXXZ
	DD	FLAT:?IsInvokeAllowed@CCmdTarget@@UAEHJ@Z
	DD	FLAT:?GetDispatchIID@CCmdTarget@@UAEHPAU_GUID@@@Z
	DD	FLAT:?GetTypeInfoCount@CCmdTarget@@UAEIXZ
	DD	FLAT:?GetTypeLibCache@CCmdTarget@@UAEPAVCTypeLibCache@@XZ
	DD	FLAT:?GetTypeLib@CCmdTarget@@UAEJKPAPAUITypeLib@@@Z
	DD	FLAT:?GetMessageMap@CColorRadioButton@@MBEPBUAFX_MSGMAP@@XZ
	DD	FLAT:?GetCommandMap@CCmdTarget@@MBEPBUAFX_OLECMDMAP@@XZ
	DD	FLAT:?GetDispatchMap@CCmdTarget@@MBEPBUAFX_DISPMAP@@XZ
	DD	FLAT:?GetConnectionMap@CCmdTarget@@MBEPBUAFX_CONNECTIONMAP@@XZ
	DD	FLAT:?GetInterfaceMap@CWnd@@MBEPBUAFX_INTERFACEMAP@@XZ
	DD	FLAT:?GetEventSinkMap@CCmdTarget@@MBEPBUAFX_EVENTSINKMAP@@XZ
	DD	FLAT:?OnCreateAggregates@CCmdTarget@@UAEHXZ
	DD	FLAT:?GetInterfaceHook@CCmdTarget@@UAEPAUIUnknown@@PBX@Z
	DD	FLAT:?GetExtraConnectionPoints@CCmdTarget@@MAEHPAVCPtrArray@@@Z
	DD	FLAT:?GetConnectionHook@CCmdTarget@@MAEPAUIConnectionPoint@@ABU_GUID@@@Z
	DD	FLAT:?PreSubclassWindow@CColorRadioButton@@UAEXXZ
	DD	FLAT:?Create@CWnd@@UAEHPB_W0KABUtagRECT@@PAV1@IPAUCCreateContext@@@Z
	DD	FLAT:?CreateEx@CWnd@@UAEHKPB_W0KABUtagRECT@@PAV1@IPAX@Z
	DD	FLAT:?CreateEx@CWnd@@UAEHKPB_W0KHHHHPAUHWND__@@PAUHMENU__@@PAX@Z
	DD	FLAT:?DestroyWindow@CWnd@@UAEHXZ
	DD	FLAT:?PreCreateWindow@CWnd@@UAEHAAUtagCREATESTRUCTW@@@Z
	DD	FLAT:?CalcWindowRect@CWnd@@UAEXPAUtagRECT@@I@Z
	DD	FLAT:?GetMenu@CWnd@@UBEPAVCMenu@@XZ
	DD	FLAT:?SetMenu@CWnd@@UAEHPAVCMenu@@@Z
	DD	FLAT:?OnToolHitTest@CWnd@@UBEHVCPoint@@PAUtagTOOLINFOW@@@Z
	DD	FLAT:?GetScrollBarCtrl@CWnd@@UBEPAVCScrollBar@@H@Z
	DD	FLAT:?WinHelpW@CWnd@@UAEXKI@Z
	DD	FLAT:?HtmlHelpW@CWnd@@UAEXKI@Z
	DD	FLAT:?WinHelpInternal@CWnd@@UAEXKI@Z
	DD	FLAT:?ContinueModal@CWnd@@UAEHXZ
	DD	FLAT:?EndModalLoop@CWnd@@UAEXH@Z
	DD	FLAT:?OnDrawIconicThumbnailOrLivePreview@CWnd@@UAEXAAVCDC@@VCRect@@VCSize@@HAAH@Z
	DD	FLAT:?EnsureStdObj@CWnd@@UAEJXZ
	DD	FLAT:?get_accParent@CWnd@@UAEJPAPAUIDispatch@@@Z
	DD	FLAT:?get_accChildCount@CWnd@@UAEJPAJ@Z
	DD	FLAT:?get_accChild@CWnd@@UAEJUtagVARIANT@@PAPAUIDispatch@@@Z
	DD	FLAT:?get_accName@CWnd@@UAEJUtagVARIANT@@PAPA_W@Z
	DD	FLAT:?get_accValue@CWnd@@UAEJUtagVARIANT@@PAPA_W@Z
	DD	FLAT:?get_accDescription@CWnd@@UAEJUtagVARIANT@@PAPA_W@Z
	DD	FLAT:?get_accRole@CWnd@@UAEJUtagVARIANT@@PAU2@@Z
	DD	FLAT:?get_accState@CWnd@@UAEJUtagVARIANT@@PAU2@@Z
	DD	FLAT:?get_accHelp@CWnd@@UAEJUtagVARIANT@@PAPA_W@Z
	DD	FLAT:?get_accHelpTopic@CWnd@@UAEJPAPA_WUtagVARIANT@@PAJ@Z
	DD	FLAT:?get_accKeyboardShortcut@CWnd@@UAEJUtagVARIANT@@PAPA_W@Z
	DD	FLAT:?get_accFocus@CWnd@@UAEJPAUtagVARIANT@@@Z
	DD	FLAT:?get_accSelection@CWnd@@UAEJPAUtagVARIANT@@@Z
	DD	FLAT:?get_accDefaultAction@CWnd@@UAEJUtagVARIANT@@PAPA_W@Z
	DD	FLAT:?accSelect@CWnd@@UAEJJUtagVARIANT@@@Z
	DD	FLAT:?accLocation@CWnd@@UAEJPAJ000UtagVARIANT@@@Z
	DD	FLAT:?accNavigate@CWnd@@UAEJJUtagVARIANT@@PAU2@@Z
	DD	FLAT:?accHitTest@CWnd@@UAEJJJPAUtagVARIANT@@@Z
	DD	FLAT:?accDoDefaultAction@CWnd@@UAEJUtagVARIANT@@@Z
	DD	FLAT:?put_accName@CWnd@@UAEJUtagVARIANT@@PA_W@Z
	DD	FLAT:?put_accValue@CWnd@@UAEJUtagVARIANT@@PA_W@Z
	DD	FLAT:?SetProxy@CWnd@@UAEJPAUIAccessibleProxy@@@Z
	DD	FLAT:?CreateAccessibleProxy@CWnd@@UAEJIJPAJ@Z
	DD	FLAT:?OnCommand@CWnd@@MAEHIJ@Z
	DD	FLAT:?OnNotify@CWnd@@MAEHIJPAJ@Z
	DD	FLAT:?GetSuperWndProcAddr@CWnd@@MAEPAP6GJPAUHWND__@@IIJ@ZXZ
	DD	FLAT:?DoDataExchange@CWnd@@MAEXPAVCDataExchange@@@Z
	DD	FLAT:?BeginModalState@CWnd@@UAEXXZ
	DD	FLAT:?EndModalState@CWnd@@UAEXXZ
	DD	FLAT:?PreTranslateMessage@CWnd@@UAEHPAUtagMSG@@@Z
	DD	FLAT:?OnAmbientProperty@CWnd@@UAEHPAVCOleControlSite@@JPAUtagVARIANT@@@Z
	DD	FLAT:?WindowProc@CWnd@@MAEJIIJ@Z
	DD	FLAT:?OnWndMsg@CWnd@@MAEHIIJPAJ@Z
	DD	FLAT:?DefWindowProcW@CWnd@@MAEJIIJ@Z
	DD	FLAT:?PostNcDestroy@CWnd@@MAEXXZ
	DD	FLAT:?OnChildNotify@CButton@@MAEHIIJPAJ@Z
	DD	FLAT:?OnTouchInputs@CWnd@@MAEHIPAUtagTOUCHINPUT@@@Z
	DD	FLAT:?OnTouchInput@CWnd@@MAEHVCPoint@@HHPAUtagTOUCHINPUT@@@Z
	DD	FLAT:?GetGestureStatus@CWnd@@MAEKVCPoint@@@Z
	DD	FLAT:?OnGestureZoom@CWnd@@MAEHVCPoint@@J@Z
	DD	FLAT:?OnGesturePan@CWnd@@MAEHVCPoint@@0@Z
	DD	FLAT:?OnGestureRotate@CWnd@@MAEHVCPoint@@N@Z
	DD	FLAT:?OnGestureTwoFingerTap@CWnd@@MAEHVCPoint@@@Z
	DD	FLAT:?OnGesturePressAndTap@CWnd@@MAEHVCPoint@@J@Z
	DD	FLAT:?ResizeDynamicLayout@CWnd@@MAEXXZ
	DD	FLAT:?CheckAutoCenter@CWnd@@UAEHXZ
	DD	FLAT:?IsFrameWnd@CWnd@@UBEHXZ
	DD	FLAT:?CreateControlContainer@CWnd@@MAEHPAPAVCOleControlContainer@@@Z
	DD	FLAT:?CreateControlSite@CWnd@@MAEHPAVCOleControlContainer@@PAPAVCOleControlSite@@IABU_GUID@@@Z
	DD	FLAT:?SetOccDialogInfo@CWnd@@MAEHPAU_AFX_OCC_DIALOG_INFO@@@Z
	DD	FLAT:?GetOccDialogInfo@CWnd@@MAEPAU_AFX_OCC_DIALOG_INFO@@XZ
	DD	FLAT:?Create@CButton@@UAEHPB_WKABUtagRECT@@PAVCWnd@@I@Z
	DD	FLAT:?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z
CONST	ENDS
;	COMDAT ?_messageEntries@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4QBUAFX_MSGMAP_ENTRY@@B
CONST	SEGMENT
?_messageEntries@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4QBUAFX_MSGMAP_ENTRY@@B DD 0bc19H ; `CColorRadioButton::GetThisMessageMap'::`2'::_messageEntries
	DD	00H
	DD	00H
	DD	00H
	DD	09H
	DD	FLAT:?CtlColor@CColorRadioButton@@IAEPAUHBRUSH__@@PAVCDC@@I@Z
	DD	019H
	DD	00H
	DD	00H
	DD	00H
	DD	08H
	DD	FLAT:?OnCtlColor@CWnd@@IAEPAUHBRUSH__@@PAVCDC@@PAV1@I@Z
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
	DD	00H
CONST	ENDS
;	COMDAT ?messageMap@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4U3@B
CONST	SEGMENT
?messageMap@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4U3@B DD FLAT:?GetThisMessageMap@CWnd@@KGPBUAFX_MSGMAP@@XZ ; `CColorRadioButton::GetThisMessageMap'::`2'::messageMap
	DD	FLAT:?_messageEntries@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4QBUAFX_MSGMAP_ENTRY@@B
CONST	ENDS
;	COMDAT ??_R4CColorRadioButton@@6B@
rdata$r	SEGMENT
??_R4CColorRadioButton@@6B@ DD 00H			; CColorRadioButton::`RTTI Complete Object Locator'
	DD	00H
	DD	00H
	DD	FLAT:??_R0?AVCColorRadioButton@@@8
	DD	FLAT:??_R3CColorRadioButton@@8
rdata$r	ENDS
;	COMDAT ??_R0?AVCColorRadioButton@@@8
data$r	SEGMENT
??_R0?AVCColorRadioButton@@@8 DD FLAT:??_7type_info@@6B@ ; CColorRadioButton `RTTI Type Descriptor'
	DD	00H
	DB	'.?AVCColorRadioButton@@', 00H
data$r	ENDS
;	COMDAT ??_R3CColorRadioButton@@8
rdata$r	SEGMENT
??_R3CColorRadioButton@@8 DD 00H			; CColorRadioButton::`RTTI Class Hierarchy Descriptor'
	DD	00H
	DD	05H
	DD	FLAT:??_R2CColorRadioButton@@8
rdata$r	ENDS
;	COMDAT ??_R1A@?0A@EA@CColorRadioButton@@8
rdata$r	SEGMENT
??_R1A@?0A@EA@CColorRadioButton@@8 DD FLAT:??_R0?AVCColorRadioButton@@@8 ; CColorRadioButton::`RTTI Base Class Descriptor at (0,-1,0,64)'
	DD	04H
	DD	00H
	DD	0ffffffffH
	DD	00H
	DD	040H
	DD	FLAT:??_R3CColorRadioButton@@8
rdata$r	ENDS
;	COMDAT ??_R2CColorRadioButton@@8
rdata$r	SEGMENT
??_R2CColorRadioButton@@8 DD FLAT:??_R1A@?0A@EA@CColorRadioButton@@8 ; CColorRadioButton::`RTTI Base Class Array'
	DD	FLAT:??_R1A@?0A@EA@CButton@@8
	DD	FLAT:??_R1A@?0A@EA@CWnd@@8
	DD	FLAT:??_R1A@?0A@EA@CCmdTarget@@8
	DD	FLAT:??_R1A@?0A@EA@CObject@@8
PUBLIC	??0CRect@@QAE@PBUtagRECT@@@Z			; CRect::CRect
PUBLIC	?DrawFrameControl@CDC@@QAEHPAUtagRECT@@II@Z	; CDC::DrawFrameControl
PUBLIC	??BCRect@@QAEPAUtagRECT@@XZ			; CRect::operator tagRECT *
PUBLIC	?GetButtonStyle@CButton@@QBEIXZ			; CButton::GetButtonStyle
PUBLIC	?SetButtonStyle@CButton@@QAEXIH@Z		; CButton::SetButtonStyle
PUBLIC	?PreSubclassWindow@CColorRadioButton@@UAEXXZ	; CColorRadioButton::PreSubclassWindow
PUBLIC	?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z ; CColorRadioButton::DrawItem
PUBLIC	?CtlColor@CColorRadioButton@@IAEPAUHBRUSH__@@PAVCDC@@I@Z ; CColorRadioButton::CtlColor
PUBLIC	?GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ ; CColorRadioButton::GetThisMessageMap
PUBLIC	?GetMessageMap@CColorRadioButton@@MBEPBUAFX_MSGMAP@@XZ ; CColorRadioButton::GetMessageMap
PUBLIC	??_GCColorRadioButton@@UAEPAXI@Z		; CColorRadioButton::`scalar deleting destructor'
PUBLIC	??0CColorRadioButton@@QAE@XZ			; CColorRadioButton::CColorRadioButton
PUBLIC	?SetTextColor@CColorRadioButton@@QAEXK@Z	; CColorRadioButton::SetTextColor
PUBLIC	?SetCheck@CColorRadioButton@@QAEXI@Z		; CColorRadioButton::SetCheck
PUBLIC	?GetCheck@CColorRadioButton@@QAEIXZ		; CColorRadioButton::GetCheck
PUBLIC	??1CColorRadioButton@@UAE@XZ			; CColorRadioButton::~CColorRadioButton
EXTRN	??_ECColorRadioButton@@UAEPAXI@Z:PROC		; CColorRadioButton::`vector deleting destructor'
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$??0CColorRadioButton@@QAE@XZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??0CColorRadioButton@@QAE@XZ$0
	DD	00H
	DD	FLAT:__unwindfunclet$??0CColorRadioButton@@QAE@XZ$1
__ehfuncinfo$??0CColorRadioButton@@QAE@XZ DD 019930522H
	DD	02H
	DD	FLAT:__unwindtable$??0CColorRadioButton@@QAE@XZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
xdata$x	ENDS
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z DD 0ffffffffH
	DD	FLAT:__unwindfunclet$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z$0
__ehfuncinfo$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ??1CColorRadioButton@@UAE@XZ
_TEXT	SEGMENT
??1CColorRadioButton@@UAE@XZ PROC			; CColorRadioButton::~CColorRadioButton, COMDAT
; _this$ = ecx

; 48   : {

	push	esi
	mov	esi, ecx

; 49   : }

	lea	ecx, DWORD PTR [esi+132]
	mov	DWORD PTR [esi], OFFSET ??_7CColorRadioButton@@6B@
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 130  : 	{ }

	mov	DWORD PTR [ecx], OFFSET ??_7CBrush@@6B@
	call	??1CGdiObject@@UAE@XZ			; CGdiObject::~CGdiObject
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 49   : }

	mov	ecx, esi
	pop	esi
	jmp	??1CButton@@UAE@XZ			; CButton::~CButton
??1CColorRadioButton@@UAE@XZ ENDP			; CColorRadioButton::~CColorRadioButton
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?GetCheck@CColorRadioButton@@QAEIXZ
_TEXT	SEGMENT
?GetCheck@CColorRadioButton@@QAEIXZ PROC		; CColorRadioButton::GetCheck, COMDAT
; _this$ = ecx

; 98   : 
; 99   : 	return (m_rb1Checked); 

	mov	eax, DWORD PTR [ecx+148]

; 100  : 
; 101  : }

	ret	0
?GetCheck@CColorRadioButton@@QAEIXZ ENDP		; CColorRadioButton::GetCheck
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?SetCheck@CColorRadioButton@@QAEXI@Z
_TEXT	SEGMENT
_Value$ = 8						; size = 4
?SetCheck@CColorRadioButton@@QAEXI@Z PROC		; CColorRadioButton::SetCheck, COMDAT
; _this$ = ecx

; 89   : {

	push	ebp
	mov	ebp, esp

; 90   : 	m_rb1Checked = Value;

	mov	eax, DWORD PTR _Value$[ebp]
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 142  : 	{ ASSERT(::IsWindow(m_hWnd)); return ::RedrawWindow(m_hWnd, lpRectUpdate, (HRGN)prgnUpdate->GetSafeHandle(), flags); }

	push	261					; 00000105H
	push	0
	push	0
	push	DWORD PTR [ecx+32]
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 90   : 	m_rb1Checked = Value;

	mov	DWORD PTR [ecx+148], eax
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 142  : 	{ ASSERT(::IsWindow(m_hWnd)); return ::RedrawWindow(m_hWnd, lpRectUpdate, (HRGN)prgnUpdate->GetSafeHandle(), flags); }

	call	DWORD PTR __imp__RedrawWindow@16
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 93   : }

	pop	ebp
	ret	4
?SetCheck@CColorRadioButton@@QAEXI@Z ENDP		; CColorRadioButton::SetCheck
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?SetTextColor@CColorRadioButton@@QAEXK@Z
_TEXT	SEGMENT
_crColor$ = 8						; size = 4
?SetTextColor@CColorRadioButton@@QAEXK@Z PROC		; CColorRadioButton::SetTextColor, COMDAT
; _this$ = ecx

; 83   : {

	push	ebp
	mov	ebp, esp

; 84   : 	m_crTextColor = crColor; 

	mov	eax, DWORD PTR _crColor$[ebp]
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 142  : 	{ ASSERT(::IsWindow(m_hWnd)); return ::RedrawWindow(m_hWnd, lpRectUpdate, (HRGN)prgnUpdate->GetSafeHandle(), flags); }

	push	261					; 00000105H
	push	0
	push	0
	push	DWORD PTR [ecx+32]
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 84   : 	m_crTextColor = crColor; 

	mov	DWORD PTR [ecx+144], eax
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 142  : 	{ ASSERT(::IsWindow(m_hWnd)); return ::RedrawWindow(m_hWnd, lpRectUpdate, (HRGN)prgnUpdate->GetSafeHandle(), flags); }

	call	DWORD PTR __imp__RedrawWindow@16
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 86   : }

	pop	ebp
	ret	4
?SetTextColor@CColorRadioButton@@QAEXK@Z ENDP		; CColorRadioButton::SetTextColor
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File I:\Projets\AES\AES\AES\ColorRadioButton.h
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ??0CColorRadioButton@@QAE@XZ
_TEXT	SEGMENT
_this$ = -16						; size = 4
__$EHRec$ = -12						; size = 12
??0CColorRadioButton@@QAE@XZ PROC			; CColorRadioButton::CColorRadioButton, COMDAT
; _this$ = ecx

; 40   : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??0CColorRadioButton@@QAE@XZ
	mov	eax, DWORD PTR fs:0
	push	eax
	push	ecx
	push	esi
	push	edi
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	edi, ecx
	mov	DWORD PTR _this$[ebp], edi
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 622  : 	{ }

	call	??0CWnd@@QAE@XZ				; CWnd::CWnd
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 40   : {

	mov	DWORD PTR __$EHRec$[ebp+8], 0
	mov	DWORD PTR [edi], OFFSET ??_7CColorRadioButton@@6B@
; File I:\Projets\AES\AES\AES\ColorRadioButton.h

; 30   : 	DWORD Mystyle = NULL;

	mov	DWORD PTR [edi+128], 0
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 70   : 	{ m_hObject = NULL; }

	mov	DWORD PTR [edi+136], 0

; 128  : 	{ }

	mov	DWORD PTR [edi+132], OFFSET ??_7CBrush@@6B@
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 40   : {

	mov	BYTE PTR __$EHRec$[ebp+8], 1

; 41   : 	m_crBkColor = ::GetSysColor(COLOR_3DFACE); // Initializing the Background Color to the system face color.

	push	15					; 0000000fH
	mov	DWORD PTR [edi+140], 0
	mov	DWORD PTR [edi+144], 0
	mov	DWORD PTR [edi+148], 1
	call	DWORD PTR __imp__GetSysColor@4
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 132  : 	{ return Attach(::CreateSolidBrush(crColor)); }

	push	eax
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 41   : 	m_crBkColor = ::GetSysColor(COLOR_3DFACE); // Initializing the Background Color to the system face color.

	mov	DWORD PTR [edi+140], eax

; 42   : 	m_crTextColor = BLACK; // Initializing the text to Black

	mov	DWORD PTR [edi+144], 0
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 132  : 	{ return Attach(::CreateSolidBrush(crColor)); }

	call	DWORD PTR __imp__CreateSolidBrush@4
	push	eax
	lea	ecx, DWORD PTR [edi+132]
	call	?Attach@CGdiObject@@QAEHPAX@Z		; CGdiObject::Attach
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 45   : }

	mov	eax, edi
	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	mov	esp, ebp
	pop	ebp
	ret	0
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$??0CColorRadioButton@@QAE@XZ$0:
	mov	ecx, DWORD PTR _this$[ebp]
	jmp	??1CButton@@UAE@XZ			; CButton::~CButton
__unwindfunclet$??0CColorRadioButton@@QAE@XZ$1:
	mov	ecx, DWORD PTR _this$[ebp]
	add	ecx, 132				; 00000084H
	jmp	??1CBrush@@UAE@XZ			; CBrush::~CBrush
__ehhandler$??0CColorRadioButton@@QAE@XZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-16]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$??0CColorRadioButton@@QAE@XZ
	jmp	___CxxFrameHandler3
text$x	ENDS
??0CColorRadioButton@@QAE@XZ ENDP			; CColorRadioButton::CColorRadioButton
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afx.inl
;	COMDAT ??_GCColorRadioButton@@UAEPAXI@Z
_TEXT	SEGMENT
___flags$ = 8						; size = 4
??_GCColorRadioButton@@UAEPAXI@Z PROC			; CColorRadioButton::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	ebp
	mov	ebp, esp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 48   : {

	push	esi
	mov	esi, ecx

; 49   : }

	lea	ecx, DWORD PTR [esi+132]
	mov	DWORD PTR [esi], OFFSET ??_7CColorRadioButton@@6B@
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 130  : 	{ }

	mov	DWORD PTR [ecx], OFFSET ??_7CBrush@@6B@
	call	??1CGdiObject@@UAE@XZ			; CGdiObject::~CGdiObject
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 49   : }

	mov	ecx, esi
	call	??1CButton@@UAE@XZ			; CButton::~CButton
	mov	eax, DWORD PTR ___flags$[ebp]
	test	al, 1
	je	SHORT $LN15@scalar
	test	al, 4
	jne	SHORT $LN3@scalar
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afx.inl

; 102  : 	{ ::operator delete(p); }

	push	esi
	call	??3@YAXPAX@Z				; operator delete
	add	esp, 4
	mov	eax, esi
	pop	esi
	pop	ebp
	ret	4
$LN3@scalar:
	push	160					; 000000a0H
	push	esi
	call	?__global_delete@@YAXPAXI@Z		; __global_delete
	add	esp, 8
$LN15@scalar:
	mov	eax, esi
	pop	esi
	pop	ebp
	ret	4
??_GCColorRadioButton@@UAEPAXI@Z ENDP			; CColorRadioButton::`scalar deleting destructor'
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?GetMessageMap@CColorRadioButton@@MBEPBUAFX_MSGMAP@@XZ
_TEXT	SEGMENT
?GetMessageMap@CColorRadioButton@@MBEPBUAFX_MSGMAP@@XZ PROC ; CColorRadioButton::GetMessageMap, COMDAT
; _this$ = ecx

; 52   : BEGIN_MESSAGE_MAP(CColorRadioButton, CStatic)

	mov	eax, OFFSET ?messageMap@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4U3@B
	ret	0
?GetMessageMap@CColorRadioButton@@MBEPBUAFX_MSGMAP@@XZ ENDP ; CColorRadioButton::GetMessageMap
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ
_TEXT	SEGMENT
?GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ PROC ; CColorRadioButton::GetThisMessageMap, COMDAT

; 53   : 	//{{AFX_MSG_MAP(CColorStatic)
; 54   : 	ON_WM_CTLCOLOR_REFLECT()
; 55   : 	ON_WM_CTLCOLOR()
; 56   : 	//}}AFX_MSG_MAP
; 57   : END_MESSAGE_MAP()

	mov	eax, OFFSET ?messageMap@?1??GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ@4U3@B
	ret	0
?GetThisMessageMap@CColorRadioButton@@KGPBUAFX_MSGMAP@@XZ ENDP ; CColorRadioButton::GetThisMessageMap
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?CtlColor@CColorRadioButton@@IAEPAUHBRUSH__@@PAVCDC@@I@Z
_TEXT	SEGMENT
_pDC$ = 8						; size = 4
_nCtlColor$ = 12					; size = 4
?CtlColor@CColorRadioButton@@IAEPAUHBRUSH__@@PAVCDC@@I@Z PROC ; CColorRadioButton::CtlColor, COMDAT
; _this$ = ecx

; 63   : {

	push	ebp
	mov	ebp, esp
	push	ebx
	push	esi
	push	edi
	mov	edi, ecx

; 64   : 	HBRUSH hbr;
; 65   : 	hbr = (HBRUSH)m_brBkgnd; // Passing a Handle to the Brush

	lea	eax, DWORD PTR [edi+132]
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 124  : 	{ return (HBRUSH)(this == NULL ? NULL : m_hObject); }

	test	eax, eax
	jne	SHORT $LN6@CtlColor
	xor	ebx, ebx
	jmp	SHORT $LN7@CtlColor
$LN6@CtlColor:
	mov	ebx, DWORD PTR [eax+4]
$LN7@CtlColor:
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 66   : 	pDC->SetBkColor(m_crBkColor); // Setting the Color of the Text Background to the one passed by the Dialog

	mov	esi, DWORD PTR _pDC$[ebp]
	mov	ecx, esi
	push	DWORD PTR [edi+140]
	mov	edx, DWORD PTR [esi]
	call	DWORD PTR [edx+44]

; 67   : 	pDC->SetTextColor(m_crTextColor); // Setting the Text Color to the one Passed by the Dialog

	mov	edx, DWORD PTR [esi]
	mov	ecx, esi
	push	DWORD PTR [edi+144]
	call	DWORD PTR [edx+48]

; 68   : 
; 69   : 	if (nCtlColor) nCtlColor += 0;
; 70   : 	
; 71   : 	return hbr;

	pop	edi
	pop	esi
	mov	eax, ebx
	pop	ebx

; 72   : }

	pop	ebp
	ret	8
?CtlColor@CColorRadioButton@@IAEPAUHBRUSH__@@PAVCDC@@I@Z ENDP ; CColorRadioButton::CtlColor
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxstr.h
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atltypes.h
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z
_TEXT	SEGMENT
_lpDrawItemStruct$GSCopy$1$ = -48			; size = 4
_uStyle$1$ = -44					; size = 4
_pDC$1$ = -40						; size = 4
_rcBullet$ = -36					; size = 16
_strText$ = -20						; size = 4
__$ArrayPad$ = -16					; size = 4
__$EHRec$ = -12						; size = 12
_lpDrawItemStruct$ = 8					; size = 4
?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z PROC ; CColorRadioButton::DrawItem, COMDAT
; _this$ = ecx

; 104  : {

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 36					; 00000024H
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	mov	DWORD PTR __$ArrayPad$[ebp], eax
	push	ebx
	push	esi
	push	edi
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	ebx, ecx
	mov	esi, DWORD PTR _lpDrawItemStruct$[ebp]

; 105  : 	UINT uStyle =  Mystyle; 

	mov	eax, DWORD PTR [ebx+128]
	mov	DWORD PTR _lpDrawItemStruct$GSCopy$1$[ebp], esi
	mov	DWORD PTR _uStyle$1$[ebp], eax

; 106  : 	CDC* pDC = CDC::FromHandle(lpDrawItemStruct->hDC);

	push	DWORD PTR [esi+24]
	call	?FromHandle@CDC@@SGPAV1@PAUHDC__@@@Z	; CDC::FromHandle
	mov	DWORD PTR _pDC$1$[ebp], eax
	mov	DWORD PTR _strText$[ebp], 0
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxstr.h

; 52   : 		return( AfxGetStringManager() );

	call	?AfxGetStringManager@@YGPAUIAtlStringMgr@ATL@@XZ ; AfxGetStringManager
	mov	ecx, eax
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h

; 205  : 		ATLENSURE( pStringMgr != NULL );

	test	ecx, ecx
	je	$LN53@DrawItem

; 206  : 		CStringData* pData = pStringMgr->GetNilString();

	mov	eax, DWORD PTR [ecx]
	call	DWORD PTR [eax+12]

; 59   : 		return (this+1);

	add	eax, 16					; 00000010H

; 780  : 		m_pszData = static_cast< PXSTR >( pData->data() );

	mov	DWORD PTR _strText$[ebp], eax
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 109  : 	CRect rcBullet(&lpDrawItemStruct->rcItem);

	lea	edi, DWORD PTR [esi+28]
	mov	DWORD PTR __$EHRec$[ebp+8], 0
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atltypes.h

; 553  : 	::CopyRect(this, lpSrcRect);

	push	edi
	lea	eax, DWORD PTR _rcBullet$[ebp]
	push	eax
	call	DWORD PTR __imp__CopyRect@8
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 110  : 	rcBullet.right = rcBullet.left + rcBullet.Height();

	mov	eax, DWORD PTR _rcBullet$[ebp+12]

; 111  : 
; 112  : 	GetWindowText(strText);

	mov	ecx, ebx
	sub	eax, DWORD PTR _rcBullet$[ebp+4]
	add	eax, DWORD PTR _rcBullet$[ebp]
	mov	DWORD PTR _rcBullet$[ebp+8], eax
	lea	eax, DWORD PTR _strText$[ebp]
	push	eax
	call	?GetWindowTextW@CWnd@@QBEXAAV?$CStringT@_WV?$StrTraitMFC@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@@Z ; CWnd::GetWindowTextW

; 113  : 
; 114  : 	pDC->FillSolidRect(&lpDrawItemStruct->rcItem,::GetSysColor((GetExStyle()&WS_EX_TRANSPARENT) ? COLOR_BTNFACE : COLOR_WINDOW));

	mov	ecx, ebx
	call	?GetExStyle@CWnd@@QBEKXZ		; CWnd::GetExStyle
	test	al, 32					; 00000020H
	mov	ecx, 15					; 0000000fH
	mov	eax, 5
	cmovne	eax, ecx
	push	eax
	call	DWORD PTR __imp__GetSysColor@4
	mov	esi, DWORD PTR _pDC$1$[ebp]
	mov	ecx, esi
	push	eax
	push	edi
	call	?FillSolidRect@CDC@@QAEXPBUtagRECT@@K@Z	; CDC::FillSolidRect
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl

; 512  : 	{ ASSERT(m_hDC != NULL); return ::DrawFrameControl(m_hDC, lpRect, nType, nState); }

	cmp	DWORD PTR [ebx+148], 0
	mov	ecx, 8196				; 00002004H
	mov	eax, 9220				; 00002404H
	cmove	eax, ecx
	push	eax
	push	4
	lea	eax, DWORD PTR _rcBullet$[ebp]
	push	eax
	push	DWORD PTR [esi+4]
	call	DWORD PTR __imp__DrawFrameControl@16
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 121  : 	if ((uStyle & BS_LEFT) == BS_LEFT)     Option = DT_LEFT;

	mov	eax, DWORD PTR _uStyle$1$[ebp]

; 122  : 	if ((uStyle & BS_CENTER) == BS_CENTER) Option = DT_CENTER;

	mov	ecx, 1

; 123  : 	::SetTextColor(lpDrawItemStruct->hDC, m_crTextColor);

	push	DWORD PTR [ebx+144]
	mov	ebx, DWORD PTR _lpDrawItemStruct$GSCopy$1$[ebp]
	mov	esi, eax
	shr	esi, 7
	and	eax, 768				; 00000300H
	not	esi
	and	esi, 2
	cmp	eax, 768				; 00000300H
	push	DWORD PTR [ebx+24]
	cmove	esi, ecx
	call	DWORD PTR __imp__SetTextColor@8
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h

; 519  : 		return( GetData()->nDataLength );

	mov	eax, DWORD PTR _strText$[ebp]
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 124  : 	::DrawText(lpDrawItemStruct->hDC, strText, strText.GetLength(), &lpDrawItemStruct->rcItem,  Option); 

	push	esi
	push	edi
	push	DWORD PTR [eax-12]
	push	eax
	push	DWORD PTR [ebx+24]
	call	DWORD PTR __imp__DrawTextW@20

; 126  : }

	mov	DWORD PTR __$EHRec$[ebp+8], -1
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h

; 88   : 		if( _InterlockedDecrement( &nRefs ) <= 0 )

	or	eax, -1

; 800  : 		return( reinterpret_cast< CStringData* >( m_pszData )-1 );

	mov	edx, DWORD PTR _strText$[ebp]
	add	edx, -16				; fffffff0H

; 88   : 		if( _InterlockedDecrement( &nRefs ) <= 0 )

	lock	 xadd	 DWORD PTR [edx+12], eax
	dec	eax
	test	eax, eax
	jg	SHORT $LN48@DrawItem

; 89   : 		{
; 90   : 			pStringMgr->Free( this );

	mov	ecx, DWORD PTR [edx]
	push	edx
	mov	eax, DWORD PTR [ecx]
	call	DWORD PTR [eax+4]
$LN48@DrawItem:
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 126  : }

	mov	ecx, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, ecx
	pop	ecx
	pop	edi
	pop	esi
	pop	ebx
	mov	ecx, DWORD PTR __$ArrayPad$[ebp]
	xor	ecx, ebp
	call	@__security_check_cookie@4
	mov	esp, ebp
	pop	ebp
	ret	4
$LN53@DrawItem:
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h

; 205  : 		ATLENSURE( pStringMgr != NULL );

	push	-2147467259				; 80004005H
	call	?AtlThrowImpl@ATL@@YGXJ@Z		; ATL::AtlThrowImpl
$LN51@DrawItem:
	int	3
_TEXT	ENDS
;	COMDAT text$x
text$x	SEGMENT
__unwindfunclet$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z$0:
	lea	ecx, DWORD PTR _strText$[ebp]
	jmp	??1?$CStringT@_WV?$StrTraitMFC@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@QAE@XZ ; ATL::CStringT<wchar_t,StrTraitMFC<wchar_t,ATL::ChTraitsCRT<wchar_t> > >::~CStringT<wchar_t,StrTraitMFC<wchar_t,ATL::ChTraitsCRT<wchar_t> > >
__ehhandler$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-52]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	ecx, DWORD PTR [edx-4]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z
	jmp	___CxxFrameHandler3
text$x	ENDS
?DrawItem@CColorRadioButton@@UAEXPAUtagDRAWITEMSTRUCT@@@Z ENDP ; CColorRadioButton::DrawItem
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp
;	COMDAT ?PreSubclassWindow@CColorRadioButton@@UAEXXZ
_TEXT	SEGMENT
?PreSubclassWindow@CColorRadioButton@@UAEXXZ PROC	; CColorRadioButton::PreSubclassWindow, COMDAT
; _this$ = ecx

; 129  : {	

	push	esi
	mov	esi, ecx

; 130  : 	CButton::PreSubclassWindow();

	call	?PreSubclassWindow@CWnd@@UAEXXZ		; CWnd::PreSubclassWindow
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 632  : 	{ ASSERT(::IsWindow(m_hWnd)); return (UINT)GetWindowLong(m_hWnd, GWL_STYLE) & 0xFFFF; }

	push	-16					; fffffff0H
	push	DWORD PTR [esi+32]
	call	DWORD PTR __imp__GetWindowLongW@8
	and	eax, 65524				; 0000fff4H

; 634  : 	{ ASSERT(::IsWindow(m_hWnd)); ::SendMessage(m_hWnd, BM_SETSTYLE, nStyle, (LPARAM)bRedraw); }

	push	1
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 131  : 	Mystyle =GetButtonStyle()|  BS_OWNERDRAW;

	or	eax, 11					; 0000000bH
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 634  : 	{ ASSERT(::IsWindow(m_hWnd)); ::SendMessage(m_hWnd, BM_SETSTYLE, nStyle, (LPARAM)bRedraw); }

	push	eax
	push	244					; 000000f4H
	push	DWORD PTR [esi+32]
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 131  : 	Mystyle =GetButtonStyle()|  BS_OWNERDRAW;

	mov	DWORD PTR [esi+128], eax
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl

; 634  : 	{ ASSERT(::IsWindow(m_hWnd)); ::SendMessage(m_hWnd, BM_SETSTYLE, nStyle, (LPARAM)bRedraw); }

	call	DWORD PTR __imp__SendMessageW@16
	pop	esi
; File I:\Projets\AES\AES\AES\ColorRadioButton.cpp

; 133  : }

	ret	0
?PreSubclassWindow@CColorRadioButton@@UAEXXZ ENDP	; CColorRadioButton::PreSubclassWindow
_TEXT	ENDS
; Function compile flags: /Ogtp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
;	COMDAT ?SetButtonStyle@CButton@@QAEXIH@Z
_TEXT	SEGMENT
_nStyle$ = 8						; size = 4
_bRedraw$dead$ = 12					; size = 4
?SetButtonStyle@CButton@@QAEXIH@Z PROC			; CButton::SetButtonStyle, COMDAT
; _this$ = ecx

; 634  : 	{ ASSERT(::IsWindow(m_hWnd)); ::SendMessage(m_hWnd, BM_SETSTYLE, nStyle, (LPARAM)bRedraw); }

	push	ebp
	mov	ebp, esp
	push	1
	push	DWORD PTR _nStyle$[ebp]
	push	244					; 000000f4H
	push	DWORD PTR [ecx+32]
	call	DWORD PTR __imp__SendMessageW@16
	pop	ebp
	ret	8
?SetButtonStyle@CButton@@QAEXIH@Z ENDP			; CButton::SetButtonStyle
_TEXT	ENDS
; Function compile flags: /Ogtp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin2.inl
;	COMDAT ?GetButtonStyle@CButton@@QBEIXZ
_TEXT	SEGMENT
?GetButtonStyle@CButton@@QBEIXZ PROC			; CButton::GetButtonStyle, COMDAT
; _this$ = ecx

; 632  : 	{ ASSERT(::IsWindow(m_hWnd)); return (UINT)GetWindowLong(m_hWnd, GWL_STYLE) & 0xFFFF; }

	push	-16					; fffffff0H
	push	DWORD PTR [ecx+32]
	call	DWORD PTR __imp__GetWindowLongW@8
	movzx	eax, ax
	ret	0
?GetButtonStyle@CButton@@QBEIXZ ENDP			; CButton::GetButtonStyle
_TEXT	ENDS
; Function compile flags: /Ogtp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atltypes.h
;	COMDAT ??BCRect@@QAEPAUtagRECT@@XZ
_TEXT	SEGMENT
??BCRect@@QAEPAUtagRECT@@XZ PROC			; CRect::operator tagRECT *, COMDAT
; _this$ = ecx

; 628  : 	return this;

	mov	eax, ecx

; 629  : }

	ret	0
??BCRect@@QAEPAUtagRECT@@XZ ENDP			; CRect::operator tagRECT *
_TEXT	ENDS
; Function compile flags: /Ogtp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\afxwin1.inl
;	COMDAT ?DrawFrameControl@CDC@@QAEHPAUtagRECT@@II@Z
_TEXT	SEGMENT
_lpRect$ = 8						; size = 4
_nType$ = 12						; size = 4
_nState$ = 16						; size = 4
?DrawFrameControl@CDC@@QAEHPAUtagRECT@@II@Z PROC	; CDC::DrawFrameControl, COMDAT
; _this$ = ecx

; 512  : 	{ ASSERT(m_hDC != NULL); return ::DrawFrameControl(m_hDC, lpRect, nType, nState); }

	push	ebp
	mov	ebp, esp
	push	DWORD PTR _nState$[ebp]
	push	DWORD PTR _nType$[ebp]
	push	DWORD PTR _lpRect$[ebp]
	push	DWORD PTR [ecx+4]
	call	DWORD PTR __imp__DrawFrameControl@16
	pop	ebp
	ret	12					; 0000000cH
?DrawFrameControl@CDC@@QAEHPAUtagRECT@@II@Z ENDP	; CDC::DrawFrameControl
_TEXT	ENDS
; Function compile flags: /Ogtp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atltypes.h
;	COMDAT ??0CRect@@QAE@PBUtagRECT@@@Z
_TEXT	SEGMENT
_lpSrcRect$ = 8						; size = 4
??0CRect@@QAE@PBUtagRECT@@@Z PROC			; CRect::CRect, COMDAT
; _this$ = ecx

; 552  : {

	push	ebp
	mov	ebp, esp
	push	esi

; 553  : 	::CopyRect(this, lpSrcRect);

	push	DWORD PTR _lpSrcRect$[ebp]
	mov	esi, ecx
	push	esi
	call	DWORD PTR __imp__CopyRect@8

; 554  : }

	mov	eax, esi
	pop	esi
	pop	ebp
	ret	4
??0CRect@@QAE@PBUtagRECT@@@Z ENDP			; CRect::CRect
_TEXT	ENDS
END