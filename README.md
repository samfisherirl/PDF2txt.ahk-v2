# PDF to Text Converter AHKv2


This is a C# DLL that provides functionality for converting PDF files to text using the iTextSharp library. It can be used in conjunction with AutoHotkey (AHK) scripts to convert PDF files to text and utilize the extracted text within AHK.

Download: https://github.com/samfisherirl/PDF2txt.ahk-v2/releases/latest

## Prerequisites
 
- AutoHotkey (minimum version 2.X)


## Usage

To convert a PDF file to text, follow these steps:

1. Set the file path for the pdf file

2. Call the `PDF2TXT` function to extract the text from the PDF file.

3. Use the extracted text as needed within your AutoHotkey script.

Here's an example AutoHotkey script that demonstrates the usage:

```autohotkey
        ;   credit for CLR.ahk
        ;   Author:     Lexikos

        path_to_pdf := A_ScriptDir "\sample_page.pdf"
        textPDF := PDF2TXT(path_to_pdf)
        MsgBox(textPDF)

