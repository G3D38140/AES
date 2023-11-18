; Listing generated by Microsoft (R) Optimizing Compiler Version 19.23.28106.4 

	TITLE	i:\projets\aes\aes\aes\code_huffman.cpp
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB OLDNAMES

PUBLIC	??_C@_02JDPG@rb@				; `string'
PUBLIC	??_C@_02GMLFBBN@wb@				; `string'
EXTRN	??_M@YGXPAXIIP6EX0@Z@Z:PROC			; `eh vector destructor iterator'
EXTRN	??_L@YGXPAXIIP6EX0@Z1@Z:PROC			; `eh vector constructor iterator'
EXTRN	_fputc:PROC
EXTRN	_fgetc:PROC
EXTRN	_ftell:PROC
EXTRN	_fseek:PROC
EXTRN	_setvbuf:PROC
EXTRN	_fclose:PROC
EXTRN	_fopen:PROC
;	COMDAT ??_C@_02GMLFBBN@wb@
CONST	SEGMENT
??_C@_02GMLFBBN@wb@ DB 'wb', 00H			; `string'
CONST	ENDS
;	COMDAT ??_C@_02JDPG@rb@
CONST	SEGMENT
??_C@_02JDPG@rb@ DB 'rb', 00H				; `string'
PUBLIC	?__autoclassinit2@node@simple_Huffman@@QAEXI@Z	; simple_Huffman::node::__autoclassinit2
PUBLIC	??0simple_Huffman@@QAE@XZ			; simple_Huffman::simple_Huffman
PUBLIC	?initialize@simple_Huffman@@AAEXXZ		; simple_Huffman::initialize
PUBLIC	?Finalize@simple_Huffman@@QAEXXZ		; simple_Huffman::Finalize
PUBLIC	?performInternalCleanup@simple_Huffman@@AAEXXZ	; simple_Huffman::performInternalCleanup
PUBLIC	?getOutput@simple_Huffman@@QAEPAEXZ		; simple_Huffman::getOutput
PUBLIC	?Decompress@simple_Huffman@@QAEHPAEH@Z		; simple_Huffman::Decompress
PUBLIC	?MakeTreeD@simple_Huffman@@AAEXXZ		; simple_Huffman::MakeTreeD
PUBLIC	?moveTreesRight2@simple_Huffman@@AAEXPAPAVnode@1@@Z ; simple_Huffman::moveTreesRight2
PUBLIC	?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z ; simple_Huffman::InitializeLeaves
PUBLIC	??_Gnode@simple_Huffman@@QAEPAXI@Z		; simple_Huffman::node::`scalar deleting destructor'
PUBLIC	??1node@simple_Huffman@@QAE@XZ			; simple_Huffman::node::~node
PUBLIC	??0node@simple_Huffman@@QAE@XZ			; simple_Huffman::node::node
;	COMDAT xdata$x
xdata$x	SEGMENT
__unwindtable$??0simple_Huffman@@QAE@XZ DD 0ffffffffH
	DD	FLAT:__unwindfunclet$??0simple_Huffman@@QAE@XZ$0
__ehfuncinfo$??0simple_Huffman@@QAE@XZ DD 019930522H
	DD	01H
	DD	FLAT:__unwindtable$??0simple_Huffman@@QAE@XZ
	DD	2 DUP(00H)
	DD	2 DUP(00H)
	DD	00H
	DD	01H
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_huffman.h
;	COMDAT ??0node@simple_Huffman@@QAE@XZ
_TEXT	SEGMENT
??0node@simple_Huffman@@QAE@XZ PROC			; simple_Huffman::node::node, COMDAT
; _this$ = ecx

; 16   : 		node(void)  {memset(this, 0, sizeof(node));} // constructor, memset is faster than individ.

	xorps	xmm0, xmm0
	mov	eax, ecx
	movups	XMMWORD PTR [ecx], xmm0
	movq	QWORD PTR [ecx+16], xmm0
	ret	0
??0node@simple_Huffman@@QAE@XZ ENDP			; simple_Huffman::node::node
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_huffman.h
;	COMDAT ??1node@simple_Huffman@@QAE@XZ
_TEXT	SEGMENT
??1node@simple_Huffman@@QAE@XZ PROC			; simple_Huffman::node::~node, COMDAT
; _this$ = ecx

; 17   : 		~node() {

	push	esi
	mov	esi, ecx
	push	edi

; 18   : 			if (left) {delete left; left = NULL;}

	mov	edi, DWORD PTR [esi]
	test	edi, edi
	je	SHORT $LN2@node
	mov	ecx, edi
	call	??1node@simple_Huffman@@QAE@XZ		; simple_Huffman::node::~node
	push	24					; 00000018H
	push	edi
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
	mov	DWORD PTR [esi], 0
$LN2@node:

; 19   : 			if (right) {delete right; right = NULL;}

	mov	edi, DWORD PTR [esi+4]
	test	edi, edi
	je	SHORT $LN3@node
	mov	ecx, edi
	call	??1node@simple_Huffman@@QAE@XZ		; simple_Huffman::node::~node
	push	24					; 00000018H
	push	edi
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
	mov	DWORD PTR [esi+4], 0
$LN3@node:

; 20   : 		}

	pop	edi
	pop	esi
	ret	0
??1node@simple_Huffman@@QAE@XZ ENDP			; simple_Huffman::node::~node
_TEXT	ENDS
; Function compile flags: /Ogtp
;	COMDAT ??_Gnode@simple_Huffman@@QAEPAXI@Z
_TEXT	SEGMENT
___flags$dead$ = 8					; size = 4
??_Gnode@simple_Huffman@@QAEPAXI@Z PROC			; simple_Huffman::node::`scalar deleting destructor', COMDAT
; _this$ = ecx
	push	esi
	mov	esi, ecx
	call	??1node@simple_Huffman@@QAE@XZ		; simple_Huffman::node::~node
	push	24					; 00000018H
	push	esi
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
	mov	eax, esi
	pop	esi
	ret	4
??_Gnode@simple_Huffman@@QAEPAXI@Z ENDP			; simple_Huffman::node::`scalar deleting destructor'
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z
_TEXT	SEGMENT
_this$1$ = -4						; size = 4
tv196 = 8						; size = 4
_n$ = 8							; size = 4
_path$ = 12						; size = 4
_level$ = 16						; size = 4
?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z PROC ; simple_Huffman::InitializeLeaves, COMDAT
; _this$ = ecx

; 92   : void simple_Huffman::InitializeLeaves(node *n, int path, int level){ // enter level is 0, enter path is 0

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx

; 93   : 	bool leaf = true;
; 94   : 	if (n->right){      

	mov	ebx, DWORD PTR _level$[ebp]
	mov	dl, 1
	push	esi
	mov	esi, DWORD PTR _n$[ebp]
	push	edi
	mov	edi, DWORD PTR _path$[ebp]
	lea	eax, DWORD PTR [ebx+1]
	mov	DWORD PTR _this$1$[ebp], ecx
	cmp	DWORD PTR [esi+4], 0
	mov	DWORD PTR tv196[ebp], eax
	je	SHORT $LN6@Initialize

; 95   : 		InitializeLeaves(n->right, path ^ (1 << level), level+1); // recursive part

	push	eax
	mov	eax, edi
	btc	eax, ebx
	push	eax
	push	DWORD PTR [esi+4]
	call	?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z ; simple_Huffman::InitializeLeaves
	mov	ecx, DWORD PTR _this$1$[ebp]

; 96   : 		leaf = false;                                             

	xor	dl, dl
$LN6@Initialize:

; 97   : 	}       
; 98   : 	if (n->left){

	mov	eax, DWORD PTR [esi]
	test	eax, eax
	je	SHORT $LN3@Initialize

; 99   : 		InitializeLeaves(n->left, path, level+1);   // recursive part

	push	DWORD PTR tv196[ebp]
	push	edi
	push	eax
	call	?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z ; simple_Huffman::InitializeLeaves
	pop	edi

; 105  : 	}               
; 106  : }

	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
$LN3@Initialize:

; 100  : 		leaf = false;                               
; 101  : 	}  
; 102  : 	if (leaf){

	test	dl, dl
	je	SHORT $LN4@Initialize

; 103  : 		n->codelength = level;  // important in compression and decompression

	mov	DWORD PTR [esi+16], ebx

; 104  : 		n->code = path;         

	mov	DWORD PTR [esi+12], edi
$LN4@Initialize:

; 105  : 	}               
; 106  : }

	pop	edi
	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	12					; 0000000cH
?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z ENDP ; simple_Huffman::InitializeLeaves
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?moveTreesRight2@simple_Huffman@@AAEXPAPAVnode@1@@Z
_TEXT	SEGMENT
_toTree$ = 8						; size = 4
?moveTreesRight2@simple_Huffman@@AAEXPAPAVnode@1@@Z PROC ; simple_Huffman::moveTreesRight2, COMDAT
; _this$ = ecx

; 131  : void simple_Huffman::moveTreesRight2(node **toTree){

	push	ebp
	mov	ebp, esp

; 132  : 	node *a, *b;
; 133  : 	register node **ptr = trees+treescount-1;

	mov	eax, DWORD PTR [ecx+10244]
	dec	eax
	push	esi

; 134  : 	register node **_toTree = toTree;
; 135  : 	while (ptr > _toTree){                

	mov	esi, DWORD PTR _toTree$[ebp]
	lea	eax, DWORD PTR [ecx+eax*4]
	cmp	eax, esi
	jbe	SHORT $LN3@moveTreesR
	push	edi
	mov	edi, DWORD PTR [eax]
$LL2@moveTreesR:

; 136  : 		a = *(ptr-1);        

	mov	ecx, DWORD PTR [eax-4]

; 137  : 		b = *(ptr);
; 138  : 		*(ptr-1) = b;

	mov	DWORD PTR [eax-4], edi

; 139  : 		*(ptr) = a;

	mov	DWORD PTR [eax], ecx

; 140  : 		ptr--;

	add	eax, -4					; fffffffcH
	cmp	eax, esi
	ja	SHORT $LL2@moveTreesR
	pop	edi
$LN3@moveTreesR:
	pop	esi

; 141  : 	}  
; 142  : }

	pop	ebp
	ret	4
?moveTreesRight2@simple_Huffman@@AAEXPAPAVnode@1@@Z ENDP ; simple_Huffman::moveTreesRight2
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?MakeTreeD@simple_Huffman@@AAEXXZ
_TEXT	SEGMENT
_nptr2$1$ = -4						; size = 4
?MakeTreeD@simple_Huffman@@AAEXXZ PROC			; simple_Huffman::MakeTreeD, COMDAT
; _this$ = ecx

; 194  : void simple_Huffman::MakeTreeD(){  

	push	ebp
	mov	ebp, esp
	push	ecx
	push	esi
	mov	esi, ecx

; 195  : 	node *n;
; 196  : 	node *nptr2 = nodes;
; 197  : 	node **backupptr;
; 198  : 	node **tptr = trees;  
; 199  : 	stepscount = 0;
; 200  : 	while (treescount > 1)  // merge trees until only 1 remains

	mov	edx, DWORD PTR [esi+10244]
	lea	eax, DWORD PTR [esi+4100]
	mov	DWORD PTR [esi+4096], 0
	cmp	edx, 1
	jle	SHORT $LN3@MakeTreeD
	push	ebx
	push	edi
$LL2@MakeTreeD:

; 201  : 	{
; 202  : 		n = nptr2;

	mov	ecx, eax

; 203  : 		nptr2++;

	add	eax, 24					; 00000018H
	mov	DWORD PTR _nptr2$1$[ebp], eax

; 204  : 		tptr = trees+treescount;
; 205  : 		backupptr = trees_backup+treescount;
; 206  : 
; 207  : 		n->right = *(tptr-2);

	mov	eax, DWORD PTR [esi+edx*4-8]
	mov	DWORD PTR [ecx+4], eax

; 208  : 		n->left = *(tptr-1);

	mov	eax, DWORD PTR [esi+edx*4-4]
	mov	DWORD PTR [ecx], eax

; 209  : 
; 210  : 		*(tptr-1) = *(backupptr-1);// NULL;//empty;  // one tree goes "out", so its position will be assigned to

	mov	eax, DWORD PTR [esi+edx*4+2044]
	mov	DWORD PTR [esi+edx*4-4], eax

; 133  : 	register node **ptr = trees+treescount-1;

	lea	eax, DWORD PTR [esi-4]

; 211  : 		// default default tree with 0 ref. count
; 212  : 		*(tptr-2) = n;

	mov	DWORD PTR [esi+edx*4-8], ecx

; 213  : 
; 214  : 		treescount--;   // decrease trees count by 1   
; 215  : 
; 216  : 		moveTreesRight2(trees+(*(STEPS+stepscount)));  // do not qsort, instead move one last tree to new pos (if possible)

	mov	edi, DWORD PTR [esi+4096]
	dec	DWORD PTR [esi+10244]
	mov	edx, DWORD PTR [esi+10244]
	mov	ecx, DWORD PTR [esi+edi*4+3072]

; 133  : 	register node **ptr = trees+treescount-1;

	lea	eax, DWORD PTR [eax+edx*4]

; 213  : 
; 214  : 		treescount--;   // decrease trees count by 1   
; 215  : 
; 216  : 		moveTreesRight2(trees+(*(STEPS+stepscount)));  // do not qsort, instead move one last tree to new pos (if possible)

	lea	ebx, DWORD PTR [esi+ecx*4]

; 135  : 	while (ptr > _toTree){                

	cmp	eax, ebx
	jbe	SHORT $LN7@MakeTreeD
	mov	edi, DWORD PTR [eax]
$LL6@MakeTreeD:

; 136  : 		a = *(ptr-1);        

	mov	ecx, DWORD PTR [eax-4]

; 137  : 		b = *(ptr);
; 138  : 		*(ptr-1) = b;

	mov	DWORD PTR [eax-4], edi

; 139  : 		*(ptr) = a;

	mov	DWORD PTR [eax], ecx

; 140  : 		ptr--;

	add	eax, -4					; fffffffcH
	cmp	eax, ebx
	ja	SHORT $LL6@MakeTreeD
	mov	edi, DWORD PTR [esi+4096]
	mov	edx, DWORD PTR [esi+10244]
$LN7@MakeTreeD:

; 217  : 		stepscount++;

	lea	eax, DWORD PTR [edi+1]
	mov	DWORD PTR [esi+4096], eax
	mov	eax, DWORD PTR _nptr2$1$[ebp]
	cmp	edx, 1
	jg	SHORT $LL2@MakeTreeD
	pop	edi
	pop	ebx
$LN3@MakeTreeD:
	pop	esi

; 218  : 	}
; 219  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?MakeTreeD@simple_Huffman@@AAEXXZ ENDP			; simple_Huffman::MakeTreeD
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?Decompress@simple_Huffman@@QAEHPAEH@Z
_TEXT	SEGMENT
_outsize$1$ = -4					; size = 4
_outptr$1$ = 8						; size = 4
_input$ = 8						; size = 4
_stop$1$ = 12						; size = 4
_inputlength$ = 12					; size = 4
?Decompress@simple_Huffman@@QAEHPAEH@Z PROC		; simple_Huffman::Decompress, COMDAT
; _this$ = ecx

; 323  : {      

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx
	push	esi
	push	edi
	mov	edi, ecx

; 324  : 
; 325  : 	initialize();

	call	?initialize@simple_Huffman@@AAEXXZ	; simple_Huffman::initialize

; 326  : 	BYTE *stop = input + inputlength;

	mov	edx, DWORD PTR _input$[ebp]

; 327  : 	register BYTE *inptr = input;
; 328  : 	node *n = nullptr;
; 329  : 	treescount = *inptr;  // najprv nacitame treecount  
; 330  : 	inptr++;
; 331  : 	treescount++; // trees count is always +1
; 332  : 	node **tptr = trees;  
; 333  : 
; 334  : 	for (register int i = 0; i < treescount; i++)

	xor	ebx, ebx
	add	DWORD PTR _inputlength$[ebp], edx
	movzx	eax, BYTE PTR [edx]
	lea	esi, DWORD PTR [edx+1]
	add	eax, 1
	mov	edx, edi
	mov	DWORD PTR [edi+10244], eax
	je	SHORT $LN3@Decompress
	npad	7
$LL4@Decompress:

; 335  : 	{  
; 336  : 		(*tptr)->chr = *inptr;

	mov	ecx, DWORD PTR [edx]

; 337  : 		inptr++; // go forward
; 338  : 		tptr++;         

	lea	edx, DWORD PTR [edx+4]
	mov	al, BYTE PTR [esi]
	inc	ebx
	inc	esi
	mov	BYTE PTR [ecx+20], al
	cmp	ebx, DWORD PTR [edi+10244]
	jl	SHORT $LL4@Decompress
$LN3@Decompress:

; 339  : 	}
; 340  : 
; 341  : 	stepscount = *inptr;

	movzx	eax, BYTE PTR [esi]

; 342  : 	inptr++;
; 343  : 	int *sptr = STEPS;

	lea	ecx, DWORD PTR [edi+3072]
	inc	esi
	mov	DWORD PTR [edi+4096], eax

; 344  : 	for (register int i = 0; i < stepscount; i++){

	xor	edx, edx
	test	eax, eax
	je	SHORT $LN6@Decompress
	npad	6
$LL7@Decompress:

; 345  : 		(*sptr) = *inptr;

	movzx	eax, BYTE PTR [esi]

; 346  : 		inptr++;    
; 347  : 		sptr++;

	lea	ecx, DWORD PTR [ecx+4]
	mov	DWORD PTR [ecx-4], eax
	inc	edx
	inc	esi
	cmp	edx, DWORD PTR [edi+4096]
	jl	SHORT $LL7@Decompress
$LN6@Decompress:

; 348  : 	}
; 349  : 
; 350  : 	// read orig. stream size
; 351  : 	int outsize;
; 352  : 	outsize  = *inptr << 24;  // read uncompressed stream s.

	movzx	ecx, BYTE PTR [esi]

; 353  : 	outsize ^= *(inptr+1) << 16;

	movzx	eax, BYTE PTR [esi+1]

; 354  : 	outsize ^= *(inptr+2) << 8;
; 355  : 	outsize ^= *(inptr+3);

	shl	ecx, 8
	xor	ecx, eax
	movzx	eax, BYTE PTR [esi+2]
	shl	ecx, 8
	xor	ecx, eax
	movzx	eax, BYTE PTR [esi+3]
	shl	ecx, 8

; 356  : 	inptr+=4;

	add	esi, 4
	xor	ecx, eax
	mov	DWORD PTR _outsize$1$[ebp], ecx

; 357  : 
; 358  : 	allocatedoutput = new BYTE[outsize+10]; // allocate output

	lea	eax, DWORD PTR [ecx+10]
	push	eax
	call	??_U@YAPAXI@Z				; operator new[]
	add	esp, 4
	mov	DWORD PTR [edi+10248], eax

; 359  : 	if (allocatedoutput == NULL) {performInternalCleanup(); LastError = 3; return 0;}

	mov	ecx, edi
	test	eax, eax
	jne	SHORT $LN12@Decompress
	call	?performInternalCleanup@simple_Huffman@@AAEXXZ ; simple_Huffman::performInternalCleanup
	mov	DWORD PTR [edi+10252], 3
	xor	eax, eax
	pop	edi

; 384  : }   

	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	8
$LN12@Decompress:

; 360  : 
; 361  : 	MakeTreeD();

	call	?MakeTreeD@simple_Huffman@@AAEXXZ	; simple_Huffman::MakeTreeD

; 362  : 
; 363  : 	InitializeLeaves(*trees, 0,0);  // initialize leaves - set their codes and code lengths

	mov	ebx, DWORD PTR [edi]

; 93   : 	bool leaf = true;

	mov	cl, 1

; 94   : 	if (n->right){      

	mov	eax, DWORD PTR [ebx+4]
	test	eax, eax
	je	SHORT $LN17@Decompress

; 95   : 		InitializeLeaves(n->right, path ^ (1 << level), level+1); // recursive part

	push	1
	push	1
	push	eax
	mov	ecx, edi
	call	?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z ; simple_Huffman::InitializeLeaves

; 96   : 		leaf = false;                                             

	xor	cl, cl
$LN17@Decompress:

; 97   : 	}       
; 98   : 	if (n->left){

	mov	eax, DWORD PTR [ebx]
	test	eax, eax
	je	SHORT $LN18@Decompress

; 99   : 		InitializeLeaves(n->left, path, level+1);   // recursive part

	push	1
	push	0
	push	eax
	mov	ecx, edi
	call	?InitializeLeaves@simple_Huffman@@AAEXPAVnode@1@HH@Z ; simple_Huffman::InitializeLeaves

; 100  : 		leaf = false;                               
; 101  : 	}  
; 102  : 	if (leaf){

	jmp	SHORT $LN19@Decompress
$LN18@Decompress:
	test	cl, cl
	je	SHORT $LN19@Decompress

; 103  : 		n->codelength = level;  // important in compression and decompression

	mov	DWORD PTR [ebx+16], 0

; 104  : 		n->code = path;         

	mov	DWORD PTR [ebx+12], 0
$LN19@Decompress:

; 364  : 
; 365  : 	register BYTE *outptr = allocatedoutput;

	mov	edx, DWORD PTR [edi+10248]

; 366  : 	int bit = 0;

	xor	ebx, ebx
	mov	DWORD PTR _outptr$1$[ebp], edx

; 367  : 	register node *nptr ;
; 368  : 	register int b;
; 369  : 	int outbitswritten = 0;
; 370  : 	while(inptr <= stop){  // decompress

	cmp	esi, DWORD PTR _stop$1$[ebp]
	ja	SHORT $LN9@Decompress
	npad	3
$LL8@Decompress:

; 371  : 		nptr = *trees; // root

	mov	eax, DWORD PTR [edi]

; 372  : 		while(nptr->codelength == 0){

	cmp	DWORD PTR [eax+16], 0
	jne	SHORT $LN11@Decompress
$LL10@Decompress:

; 373  : 			b = ((*inptr) >> bit) &1;

	mov	dl, BYTE PTR [esi]
	mov	cl, bl
	shr	dl, cl
	test	dl, 1

; 374  : 			nptr = (b > 0) ? nptr->right :  nptr->left;

	jbe	SHORT $LN14@Decompress
	mov	eax, DWORD PTR [eax+4]
	jmp	SHORT $LN15@Decompress
$LN14@Decompress:
	mov	eax, DWORD PTR [eax]
$LN15@Decompress:

; 375  : 			inptr+=( (bit >> 2) & (bit >> 1) & bit) & 1;

	mov	ecx, ebx
	xor	edx, edx
	and	ecx, 6
	cmp	cl, 6
	sete	dl
	and	edx, ebx

; 376  : 			bit++;        

	inc	ebx
	add	esi, edx

; 377  : 			bit&=7;

	and	ebx, 7
	cmp	DWORD PTR [eax+16], 0
	je	SHORT $LL10@Decompress
	mov	edx, DWORD PTR _outptr$1$[ebp]
$LN11@Decompress:

; 378  : 		}  
; 379  : 		(*outptr) = nptr->chr;      

	mov	cl, BYTE PTR [eax+20]
	mov	BYTE PTR [edx], cl

; 380  : 		outptr ++;

	inc	edx
	mov	DWORD PTR _outptr$1$[ebp], edx
	cmp	esi, DWORD PTR _stop$1$[ebp]
	jbe	SHORT $LL8@Decompress
$LN9@Decompress:

; 381  : 	}
; 382  : 	performInternalCleanup();

	mov	ecx, edi
	call	?performInternalCleanup@simple_Huffman@@AAEXXZ ; simple_Huffman::performInternalCleanup

; 383  : 	return outsize;

	mov	eax, DWORD PTR _outsize$1$[ebp]
	pop	edi

; 384  : }   

	pop	esi
	pop	ebx
	mov	esp, ebp
	pop	ebp
	ret	8
?Decompress@simple_Huffman@@QAEHPAEH@Z ENDP		; simple_Huffman::Decompress
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?getOutput@simple_Huffman@@QAEPAEXZ
_TEXT	SEGMENT
?getOutput@simple_Huffman@@QAEPAEXZ PROC		; simple_Huffman::getOutput, COMDAT
; _this$ = ecx

; 388  : 	if (allocatedoutput)

	mov	eax, DWORD PTR [ecx+10248]

; 389  : 		return allocatedoutput;
; 390  : 	return NULL;
; 391  : }

	ret	0
?getOutput@simple_Huffman@@QAEPAEXZ ENDP		; simple_Huffman::getOutput
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?performInternalCleanup@simple_Huffman@@AAEXXZ
_TEXT	SEGMENT
_this$1$ = -4						; size = 4
?performInternalCleanup@simple_Huffman@@AAEXXZ PROC	; simple_Huffman::performInternalCleanup, COMDAT
; _this$ = ecx

; 589  : void simple_Huffman::performInternalCleanup(){

	push	ebp
	mov	ebp, esp
	push	ecx
	push	ebx
	push	esi
	push	edi
	mov	DWORD PTR _this$1$[ebp], ecx

; 590  : 	for (register int i = 0; i < 256; i++) {

	lea	esi, DWORD PTR [ecx+2048]
	mov	ebx, 256				; 00000100H
$LL4@performInt:

; 591  : 		memset(*(trees_backup+i), 0, sizeof(node));

	mov	eax, DWORD PTR [esi]
	xorps	xmm0, xmm0
	movups	XMMWORD PTR [eax], xmm0
	movq	QWORD PTR [eax+16], xmm0

; 592  : 		*(trees+i) = *(trees_backup+i);

	mov	edi, DWORD PTR [esi]
	mov	DWORD PTR [esi-2048], edi

; 593  : 		delete trees_backup[i];

	test	edi, edi
	je	SHORT $LN9@performInt
	mov	ecx, edi
	call	??1node@simple_Huffman@@QAE@XZ		; simple_Huffman::node::~node
	push	24					; 00000018H
	push	edi
	call	??3@YAXPAXI@Z				; operator delete
	mov	edi, DWORD PTR [esi-2048]
	add	esp, 8
$LN9@performInt:

; 594  : 		*(leaves+i) = *(trees+i);

	mov	DWORD PTR [esi-1024], edi
	add	esi, 4
	sub	ebx, 1
	jne	SHORT $LL4@performInt

; 595  : 		// delete trees[i];
; 596  : 
; 597  : 	}
; 598  : 
; 599  : 	memset(nodes, 0, 256*sizeof(node));

	push	6144					; 00001800H
	push	ebx
	mov	ebx, DWORD PTR _this$1$[ebp]
	lea	eax, DWORD PTR [ebx+4100]
	push	eax
	call	_memset

; 600  : 
; 601  : 	memset(STEPS, 0, 256*sizeof(int));

	push	1024					; 00000400H
	lea	eax, DWORD PTR [ebx+3072]
	push	0
	push	eax
	call	_memset
	add	esp, 24					; 00000018H

; 602  : 	stepscount = 0;

	mov	DWORD PTR [ebx+4096], 0

; 603  : 	treescount = 0;	

	mov	DWORD PTR [ebx+10244], 0
	pop	edi
	pop	esi
	pop	ebx

; 604  : 
; 605  : }

	mov	esp, ebp
	pop	ebp
	ret	0
?performInternalCleanup@simple_Huffman@@AAEXXZ ENDP	; simple_Huffman::performInternalCleanup
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?Finalize@simple_Huffman@@QAEXXZ
_TEXT	SEGMENT
?Finalize@simple_Huffman@@QAEXXZ PROC			; simple_Huffman::Finalize, COMDAT
; _this$ = ecx

; 607  : {

	push	esi
	mov	esi, ecx

; 608  : 	if (allocatedoutput)

	mov	eax, DWORD PTR [esi+10248]
	test	eax, eax
	je	SHORT $LN4@Finalize

; 609  : 		delete allocatedoutput;

	push	1
	push	eax
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
$LN4@Finalize:

; 610  : 	allocatedoutput = NULL; 
; 611  : }

	mov	DWORD PTR [esi+10248], 0
	pop	esi
	ret	0
?Finalize@simple_Huffman@@QAEXXZ ENDP			; simple_Huffman::Finalize
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ?initialize@simple_Huffman@@AAEXXZ
_TEXT	SEGMENT
?initialize@simple_Huffman@@AAEXXZ PROC			; simple_Huffman::initialize, COMDAT
; _this$ = ecx

; 613  : void simple_Huffman::initialize() {

	push	esi
	mov	esi, ecx

; 614  : 	stepscount = 0;      

	mov	edx, 256				; 00000100H
	mov	DWORD PTR [esi+4096], 0
	lea	eax, DWORD PTR [esi+1024]

; 615  : 	treescount = 0;

	mov	DWORD PTR [esi+10244], 0

; 616  : 	LastError = 0;

	mov	DWORD PTR [esi+10252], 0
	npad	4
$LL4@initialize:

; 617  : 	for (register int i = 0; i < 256; i++) {
; 618  : 		*(trees_backup+i) = *(trees+i);

	mov	ecx, DWORD PTR [eax-1024]
	lea	eax, DWORD PTR [eax+4]
	mov	DWORD PTR [eax+1020], ecx

; 619  : 		*(leaves+i) = *(trees+i);

	mov	DWORD PTR [eax-4], ecx

; 620  : 		*(STEPS+i)  = 0;

	mov	DWORD PTR [eax+2044], 0
	sub	edx, 1
	jne	SHORT $LL4@initialize

; 621  : 	}
; 622  : 	memset(nodes, 0, 256*sizeof(node));

	push	6144					; 00001800H
	push	edx
	lea	eax, DWORD PTR [esi+4100]
	push	eax
	call	_memset

; 623  : 	if (allocatedoutput) delete allocatedoutput;

	mov	eax, DWORD PTR [esi+10248]
	add	esp, 12					; 0000000cH
	test	eax, eax
	je	SHORT $LN11@initialize
	push	1
	push	eax
	call	??3@YAXPAXI@Z				; operator delete
	add	esp, 8
$LN11@initialize:

; 624  : 	allocatedoutput = NULL;
; 625  : }

	mov	DWORD PTR [esi+10248], 0
	pop	esi
	ret	0
?initialize@simple_Huffman@@AAEXXZ ENDP			; simple_Huffman::initialize
_TEXT	ENDS
; Function compile flags: /Ogtp
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
; File I:\Projets\AES\AES\AES\code_huffman.h
; File I:\Projets\AES\AES\AES\code_Huffman.cpp
;	COMDAT ??0simple_Huffman@@QAE@XZ
_TEXT	SEGMENT
$T1 = -20						; size = 4
_this$ = -16						; size = 4
__$EHRec$ = -12						; size = 12
??0simple_Huffman@@QAE@XZ PROC				; simple_Huffman::simple_Huffman, COMDAT
; _this$ = ecx

; 627  : simple_Huffman::simple_Huffman(){

	push	ebp
	mov	ebp, esp
	push	-1
	push	__ehhandler$??0simple_Huffman@@QAE@XZ
	mov	eax, DWORD PTR fs:0
	push	eax
	sub	esp, 8
	push	esi
	push	edi
	mov	eax, DWORD PTR ___security_cookie
	xor	eax, ebp
	push	eax
	lea	eax, DWORD PTR __$EHRec$[ebp]
	mov	DWORD PTR fs:0, eax
	mov	edi, ecx
	mov	DWORD PTR _this$[ebp], edi
	push	OFFSET ??1node@simple_Huffman@@QAE@XZ	; simple_Huffman::node::~node
	push	OFFSET ??0node@simple_Huffman@@QAE@XZ	; simple_Huffman::node::node
	push	256					; 00000100H
	push	24					; 00000018H
	lea	eax, DWORD PTR [edi+4100]
	push	eax
	call	??_L@YGXPAXIIP6EX0@Z1@Z
	mov	DWORD PTR __$EHRec$[ebp+8], 0

; 628  : 	LastError = 0;
; 629  : 	for (register int i = 0; i < 256; i++) 

	xor	esi, esi
	mov	DWORD PTR [edi+10252], 0
	npad	4
$LL4@simple_Huf:

; 630  : 		*(trees+i)  = new node();

	push	24					; 00000018H
	call	??2@YAPAXI@Z				; operator new
	add	esp, 4
	mov	DWORD PTR $T1[ebp], eax
	test	eax, eax
	je	SHORT $LN6@simple_Huf
	xorps	xmm0, xmm0
; File I:\Projets\AES\AES\AES\code_huffman.h

; 16   : 		node(void)  {memset(this, 0, sizeof(node));} // constructor, memset is faster than individ.

	movups	XMMWORD PTR [eax], xmm0
	movq	QWORD PTR [eax+16], xmm0
; File I:\Projets\AES\AES\AES\code_Huffman.cpp

; 630  : 		*(trees+i)  = new node();

	jmp	SHORT $LN7@simple_Huf
$LN6@simple_Huf:
	xor	eax, eax
$LN7@simple_Huf:
	mov	DWORD PTR [edi+esi*4], eax
	inc	esi
	cmp	esi, 256				; 00000100H
	jl	SHORT $LL4@simple_Huf

; 631  : 	allocatedoutput = NULL;

	mov	DWORD PTR [edi+10248], 0

; 632  : }

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
__unwindfunclet$??0simple_Huffman@@QAE@XZ$0:
	push	OFFSET ??1node@simple_Huffman@@QAE@XZ	; simple_Huffman::node::~node
	push	256					; 00000100H
	push	24					; 00000018H
	mov	eax, DWORD PTR _this$[ebp]
	add	eax, 4100				; 00001004H
	push	eax
	call	??_M@YGXPAXIIP6EX0@Z@Z
	ret	0
__ehhandler$??0simple_Huffman@@QAE@XZ:
	mov	edx, DWORD PTR [esp+8]
	lea	eax, DWORD PTR [edx+12]
	mov	ecx, DWORD PTR [edx-20]
	xor	ecx, eax
	call	@__security_check_cookie@4
	mov	eax, OFFSET __ehfuncinfo$??0simple_Huffman@@QAE@XZ
	jmp	___CxxFrameHandler3
text$x	ENDS
??0simple_Huffman@@QAE@XZ ENDP				; simple_Huffman::simple_Huffman
; Function compile flags: /Ogtp
;	COMDAT ?__autoclassinit2@node@simple_Huffman@@QAEXI@Z
_TEXT	SEGMENT
_classSize$dead$ = 8					; size = 4
?__autoclassinit2@node@simple_Huffman@@QAEXI@Z PROC	; simple_Huffman::node::__autoclassinit2, COMDAT
; _this$ = ecx
	xorps	xmm0, xmm0
	movups	XMMWORD PTR [ecx], xmm0
	movq	QWORD PTR [ecx+16], xmm0
	ret	4
?__autoclassinit2@node@simple_Huffman@@QAEXI@Z ENDP	; simple_Huffman::node::__autoclassinit2
_TEXT	ENDS
END
