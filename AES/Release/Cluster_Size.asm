; Listing generated by Microsoft (R) Optimizing Compiler Version 19.23.28106.4 

	TITLE	i:\projets\aes\aes\aes\cluster_size.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

EXTRN	__imp__GetDiskFreeSpaceW@20:PROC
EXTRN	__imp__GetModuleFileNameW@12:PROC
EXTRN	?GetRoot@CFileFind@@UBE?AV?$CStringT@_WV?$StrTraitMFC@_WV?$ChTraitsCRT@_W@ATL@@@@@ATL@@XZ:PROC ; CFileFind::GetRoot
PUBLIC	?SetAt@?$CSimpleStringT@_W$0A@@ATL@@QAEXH_W@Z	; ATL::CSimpleStringT<wchar_t,0>::SetAt
; Function compile flags: /Ogtp
; File C:\Program Files (x86)\Microsoft Visual Studio\2019\Enterprise\VC\Tools\MSVC\14.23.28105\atlmfc\include\atlsimpstr.h
;	COMDAT ?SetAt@?$CSimpleStringT@_W$0A@@ATL@@QAEXH_W@Z
_TEXT	SEGMENT
_iChar$ = 8						; size = 4
_ch$ = 12						; size = 2
?SetAt@?$CSimpleStringT@_W$0A@@ATL@@QAEXH_W@Z PROC	; ATL::CSimpleStringT<wchar_t,0>::SetAt, COMDAT
; _this$ = ecx

; 579  : 	{

	push	ebp
	mov	ebp, esp
	push	ebx

; 580  : 		ATLASSERT( (iChar >= 0) && (iChar < GetLength()) );
; 581  : 
; 582  : 		if( (iChar < 0) || (iChar >= GetLength()) )

	mov	ebx, DWORD PTR _iChar$[ebp]
	push	esi
	push	edi
	mov	edi, ecx
	test	ebx, ebx
	js	SHORT $LN3@SetAt

; 519  : 		return( GetData()->nDataLength );

	mov	ecx, DWORD PTR [edi]

; 580  : 		ATLASSERT( (iChar >= 0) && (iChar < GetLength()) );
; 581  : 
; 582  : 		if( (iChar < 0) || (iChar >= GetLength()) )

	mov	esi, DWORD PTR [ecx-12]
	cmp	ebx, esi
	jge	SHORT $LN3@SetAt

; 73   : 		return( nRefs > 1 );

	cmp	DWORD PTR [ecx-4], 1

; 499  : 		if( pData->IsShared() )

	jle	SHORT $LN14@SetAt

; 500  : 		{
; 501  : 			Fork( pData->nDataLength );

	push	esi
	mov	ecx, edi
	call	?Fork@?$CSimpleStringT@_W$0A@@ATL@@AAEXH@Z ; ATL::CSimpleStringT<wchar_t,0>::Fork
	mov	ecx, DWORD PTR [edi]
$LN14@SetAt:

; 584  : 
; 585  : 		int nLength = GetLength();
; 586  : 		PXSTR pszBuffer = GetBuffer();
; 587  : 		pszBuffer[iChar] = ch;

	mov	ax, WORD PTR _ch$[ebp]
	mov	WORD PTR [ecx+ebx*2], ax

; 871  : 		if( nLength < 0 || nLength > GetData()->nAllocLength)

	test	esi, esi
	js	SHORT $LN3@SetAt
	mov	eax, DWORD PTR [edi]
	cmp	esi, DWORD PTR [eax-8]
	jg	SHORT $LN3@SetAt

; 872  : 			AtlThrow(E_INVALIDARG);
; 873  : 
; 874  : 		GetData()->nDataLength = nLength;

	mov	DWORD PTR [eax-12], esi

; 875  : 		m_pszData[nLength] = 0;

	xor	ecx, ecx
	mov	eax, DWORD PTR [edi]
	pop	edi
	mov	WORD PTR [eax+esi*2], cx
	pop	esi
	pop	ebx

; 588  : 		ReleaseBufferSetLength( nLength );
; 589  : 
; 590  : 	}

	pop	ebp
	ret	8
$LN3@SetAt:

; 583  : 			AtlThrow(E_INVALIDARG);

	push	-2147024809				; 80070057H
	call	?AtlThrowImpl@ATL@@YGXJ@Z		; ATL::AtlThrowImpl
$LN32@SetAt:
	int	3
?SetAt@?$CSimpleStringT@_W$0A@@ATL@@QAEXH_W@Z ENDP	; ATL::CSimpleStringT<wchar_t,0>::SetAt
_TEXT	ENDS
END
