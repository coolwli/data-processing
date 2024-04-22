using System;
using System.IO;
using System.Web.UI;
using System.Web.UI.WebControls;
using OfficeOpenXml;


namespace WebApplication1
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoadDataFromExcel();
        }

        protected void LoadDataFromExcel()
        {
            string excelFilePath = @"D:\excel.xlsx";
            FileInfo fileInfo = new FileInfo(excelFilePath);

            ExcelPackage.LicenseContext = OfficeOpenXml.LicenseContext.Commercial;

            using (ExcelPackage package = new ExcelPackage(fileInfo))
            {
                ExcelWorksheet worksheet = package.Workbook.Worksheets[0];

                int rowCount = worksheet.Dimension.Rows;

                for (int row = 1; row <= rowCount; row++) 
                {
                    string title = worksheet.Cells[row, 1].Value.ToString();
                    string content = worksheet.Cells[row, 2].Value.ToString();

                    Panel panel = new Panel();
                    panel.CssClass = "panel";

                    LiteralControl heading = new LiteralControl("<h1>" + title + "</h1>");
                    panel.Controls.Add(heading);

                    LiteralControl paragraph = new LiteralControl("<p>" + content + "</p>");
                    panel.Controls.Add(paragraph);

                    container.Controls.Add(panel);
                }
            }
        }
    }
}