#Requires Autohotkey v2
#Include CLR.ahk


path_to_pdf := "C:\\Users\\dower\\OneDrive\\C###### PDFS\\Microsoft Visual C# Step by Step, 10th Edition - John Sharp[2022].pdf"
asm := CLR_LoadLibrary(A_ScriptDir "\PDF.dll")
obj := CLR_CreateObject(asm, "Program")
x := Msgbox(obj.PDF(path_to_pdf))

