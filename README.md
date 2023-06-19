# PDF to Text Converter (C# DLL)

This is a C# DLL that provides functionality for converting PDF files to text using the iTextSharp library. It can be used in conjunction with AutoHotkey (AHK) scripts to convert PDF files to text and utilize the extracted text within AHK.

## Prerequisites

- .NET Framework (minimum version X.X)
- AutoHotkey (minimum version X.X)

## Installation

1. Clone or download the repository to your local machine.

2. Build the C# DLL project using your preferred IDE.

3. In your AutoHotkey script, import the DLL using the `DllCall` function. For example:

## Usage

To convert a PDF file to text, follow these steps:

1. Load the PDF file using the `LoadPdf` function in the DLL. This function takes the path to the PDF file as a parameter.

2. Call the `ConvertToText` function to extract the text from the PDF file.

3. Use the extracted text as needed within your AutoHotkey script.

Here's an example AutoHotkey script that demonstrates the usage:

```autohotkey
#Include %A_ScriptDir%\PDFtoTextConverter.ahk

; Load the PDF file
myDll.LoadPdf("path\to\input.pdf")

; Convert the PDF to text
myDll.ConvertToText()

; Access the extracted text
extractedText := myDll.GetExtractedText()

; Use the extracted text within your script
MsgBox % extractedText
