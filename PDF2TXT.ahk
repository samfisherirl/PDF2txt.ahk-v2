#Requires Autohotkey v2
#Include CLR.ahk
;   credit for CLR.ahk
;   Author:     Lexikos

path_to_pdf := A_ScriptDir "\sample_page.pdf"
textPDF := PDF2TXT(path_to_pdf)
MsgBox(textPDF)

PDF2TXT(path_to_pdf)	{
	asm := CLR_LoadLibrary(A_ScriptDir "\PDF.dll")
	obj := CLR_CreateObject(asm, "Program")
	return obj.PDF(path_to_pdf)
}