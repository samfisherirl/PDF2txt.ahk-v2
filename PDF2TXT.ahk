#Requires Autohotkey v2
#Include CLR.ahk
;   credit for CLR.ahk
;   Author:     Lexikos

path_to_pdf := A_ScriptDir "\sample_page.pdf"
textPDF := PDF2TXT(path_to_pdf)
MsgBox(textPDF)
