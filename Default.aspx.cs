using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace DecCOVID
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (StreamWriter outputFile = File.AppendText(Server.MapPath("/") + "rec.txt"))
            {
                string clientIp = (Request.ServerVariables["HTTP_X_FORWARDED_FOR"] ??
                    Request.ServerVariables["REMOTE_ADDR"]).Split(',')[0].Trim();
                outputFile.WriteLine(clientIp);
            }
        }

        protected void btnGenerare_Click(object sender, EventArgs e)
        {
            DeclaratiePersonala date = new DeclaratiePersonala();
            date.nume = nume.Text;
            date.prenume = prenume.Text;
            date.zi = datanasterii.SelectedDate.Day.ToString();
            date.luna = datanasterii.SelectedDate.Month.ToString();
            date.an = datanasterii.SelectedDate.Year.ToString();
            date.adresa = adresa.Text;
            date.locul = locul.Text;

      //      if (CheckBoxList1.SelectedValue == "1")
                date.motiv = CheckBoxList1.SelectedValue;

            date.zi = dataexacta.SelectedDate.Day.ToString();
            date.luna = dataexacta.SelectedDate.Month.ToString();
            date.an = dataexacta.SelectedDate.Year.ToString();
            date.semnatura = prenume.Text;

            string pdfTemplate = Server.MapPath("/") + "/formDeclaratieNoua.pdf";

            //    ListFieldNames();
            FillForm(pdfTemplate, date);


            Point pp = new Point();
            pp.X = 200;
            pp.Y = 300;
            ///  AddTextToPdf(Server.MapPath("/") + "/dec.pdf", Server.MapPath("/") + "tada.pdf", date, pp);
            //GeneratePDF(date);

        }

        private void FillForm(string pdfTemplate, DeclaratiePersonala date)
        {
            using (StreamWriter outputFile = File.AppendText(Server.MapPath("/") + "rec.txt"))
            {
                outputFile.WriteLine(date.nume);
            }
            string newFile = Server.MapPath("/") + "/formDeclaratieNoua.pdf";
            PdfReader pdfReader = new PdfReader(pdfTemplate);
            MemoryStream outStream = new MemoryStream();

            PdfStamper pdfStamper = new PdfStamper(pdfReader, outStream);

            AcroFields pdfFormFields = pdfStamper.AcroFields;
            // set form pdfFormFields  
            // The first worksheet and W-4 form  
            pdfFormFields.SetField("nume", date.nume);
            pdfFormFields.SetField("prenume", date.prenume);
            pdfFormFields.SetField("ziua", date.zi);
            pdfFormFields.SetField("luna", date.luna);
            pdfFormFields.SetField("anul", date.an);
            string adresa1;
            string adresa2;
            if (date.adresa.Length > 40)
            {
                adresa1 = date.adresa.Substring(0, 55);
                adresa2 = date.adresa.Substring(56);
                pdfFormFields.SetField("fill_8", adresa1);
                pdfFormFields.SetField("fill_9", adresa2);
            }
            else
                pdfFormFields.SetField("fill_8", date.adresa);

            pdfFormFields.SetField("locul", date.locul);
            if (date.motiv == "1")
                pdfFormFields.SetField("Group10", "Choice1");
            if (date.motiv == "2")
                pdfFormFields.SetField("Group10", "Choice2");
            if (date.motiv == "3")
                pdfFormFields.SetField("Group10", "Choice3");
            if (date.motiv == "4")
                pdfFormFields.SetField("Group10", "Choice4");
            if (date.motiv == "5")
                pdfFormFields.SetField("Group10", "Choice5");
            if (date.motiv == "6")
                pdfFormFields.SetField("Group10", "Choice6");
            if (date.motiv == "7")
                pdfFormFields.SetField("Group10", "Choice7");
            if (date.motiv == "8")
                pdfFormFields.SetField("Group10", "Choice8");
            if (date.motiv == "9")
                pdfFormFields.SetField("Group10", "Choice9");
            if (date.motiv == "10")
                pdfFormFields.SetField("Group10", "Choice10");



            pdfFormFields.SetField("data", date.zi + "/" + date.luna + "/" + date.an);            
            pdfFormFields.SetField("semnatura", date.semnatura);

            pdfStamper.FormFlattening = true;
            // close the pdf  
            pdfStamper.Close();
            pdfStamper.SetFullCompression();
            pdfStamper.Writer.CompressionLevel = 9;

            byte[] content = outStream.ToArray();


            Response.Clear();
            Response.ContentType = "application/pdf";

            string pdfName = "User";
            Response.AddHeader("Content-Disposition", "attachment; filename=" + pdfName + ".pdf");
            Response.ContentType = "application/pdf";
            Response.Buffer = true;
            Response.Cache.SetCacheability(System.Web.HttpCacheability.NoCache);
            Response.BinaryWrite(content);
            Response.End();
            Response.Close();
        }
        CheckBox lastChecked;
        private void CheckBoxList1_Click(object sender, EventArgs e)
        {
            CheckBox activeCheckBox = sender as CheckBox;
            if (activeCheckBox != lastChecked && lastChecked != null) lastChecked.Checked = false;
            lastChecked = activeCheckBox.Checked ? activeCheckBox : null;
        }
    }
}