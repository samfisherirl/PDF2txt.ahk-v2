using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using iTextSharp.text.pdf;
using iTextSharp.text.pdf.parser;

public class Program
{
    public string PDF(string path)
    {
        string textFile = ""; 

        using (PdfReader reader = new PdfReader(path))
        {
            for (int page = 1; page <= reader.NumberOfPages; page++)
            {
                string text = PdfTextExtractor.GetTextFromPage(reader, page);
                textFile = textFile + text;
            }
        }
        return textFile;
    }
}

//
// In the code above, replace "path_to_your_pdf_file.pdf" with the actual file path of the PDF you want to extract text from. The PdfTextExtractor.GetTextFromPage() method is used to extract the text from each page of the PDF.

// Remember to add the necessary using statements at the top of your file for iTextSharp.text.pdf and iTextSharp.text.pdf.parser.

// Please note that iTextSharp is distributed under the Affero General Public License (AGPL), which may have certain requirements and restrictions. Make sure to review and comply with the license terms when using iTextSharp in your project.

// If you have any further questions, feel free to ask!






// Regenerate response
