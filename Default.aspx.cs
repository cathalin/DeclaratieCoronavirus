using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
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

        }

        protected void btnGenerare_Click(object sender, EventArgs e)
        {
            DeclaratiePersonala date = new DeclaratiePersonala();
            date.numePrenume = numeprenume.Text;
            date.tata = tata.Text;
            date.mama = mama.Text;
            date.localitatea = localitatea.Text;
            date.judet = judet.Text;
            date.strada = strada.Text;
            date.nr = nr.Text;
            date.bloc = bloc.Text;
            date.etaj = etaj.Text;
            date.ap = ap.Text;
            date.cnp = cnp.Text;
            date.seria = seria.Text;
            date.nrCI = nrCI.Text;
            date.localitateaFapt = localitateaFapt.Text;
            date.judetFapt = judetFapt.Text;
            date.stradaFapt = stradaFapt.Text;
            date.nrFapt = nrFapt.Text;
            date.blocFapt = blocFapt.Text;
            date.apFapt = apFapt.Text;
            if (interes1.Checked)
                date.interes = "personal";
            else
                date.interes = "profesional";

            date.intre = intre.Text;
            date.dela = dela.Text;
            date.panala = panala.Text;
            if (motiv1.Checked)
                date.munca = motiv1.Checked;
            if (motiv2.Checked)
                date.consult = motiv2.Checked;
            if (motiv3.Checked)
                date.cumparaturi = motiv3.Checked;
            if (motiv4.Checked)
                date.asistenta = motiv4.Checked;
            if (motiv5.Checked)
                date.scurta = motiv5.Checked;
            if (motiv6.Checked)
                date.animale = motiv6.Checked;
            if (motiv7.Checked)
                date.altele = motiv7.Checked;
            date.situatie = situatie.Text;
            date.zi = dataexacta.SelectedDate.Day.ToString();
            date.luna = dataexacta.SelectedDate.Month.ToString();
            date.an = dataexacta.SelectedDate.Year.ToString();
            date.semnatura = numeprenume.Text;

            string pdfTemplate = Server.MapPath("/") + "/formDeclaratie.pdf";

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

            string newFile = Server.MapPath("/") + "/formDeclaratieNEW.pdf";
            PdfReader pdfReader = new PdfReader(pdfTemplate);
            MemoryStream outStream = new MemoryStream();

            PdfStamper pdfStamper = new PdfStamper(pdfReader, outStream);
            
            AcroFields pdfFormFields = pdfStamper.AcroFields;
            // set form pdfFormFields  
            // The first worksheet and W-4 form  
            pdfFormFields.SetField("numePrenume", date.numePrenume);
            pdfFormFields.SetField("tata", date.tata);
            pdfFormFields.SetField("mama", date.mama);
            pdfFormFields.SetField("localitatea", date.localitatea);
            pdfFormFields.SetField("judet", date.judet);
            pdfFormFields.SetField("strada", date.strada);
            pdfFormFields.SetField("nr", date.nr);
            pdfFormFields.SetField("bloc", date.bloc);
            pdfFormFields.SetField("etaj", date.etaj);
            pdfFormFields.SetField("ap", date.ap);
            pdfFormFields.SetField("cnp", date.cnp);
            pdfFormFields.SetField("seria", date.seria);
            pdfFormFields.SetField("nrCI", date.nrCI);
            // The form's checkboxes  
            pdfFormFields.SetField("localitateaFapt", date.localitateaFapt);
            pdfFormFields.SetField("judetFapt", date.judetFapt);
            pdfFormFields.SetField("stradaFapt", date.stradaFapt);
            pdfFormFields.SetField("nrFapt", date.nrFapt);
            // The rest of the form pdfFormFields  
            pdfFormFields.SetField("blocFapt", date.blocFapt);
            pdfFormFields.SetField("apFapt", date.apFapt);
            pdfFormFields.SetField("interes", date.interes);
            pdfFormFields.SetField("intre", date.intre);
            pdfFormFields.SetField("dela", date.dela);
            pdfFormFields.SetField("panala", date.panala);
            if (date.munca)
                pdfFormFields.SetField("munca", "Yes");
            else
                pdfFormFields.SetField("munca", "0");
            if (date.consult)
                pdfFormFields.SetField("consult", "Yes");
            else
                pdfFormFields.SetField("consult", "0");
            if (date.cumparaturi)
                pdfFormFields.SetField("cumparaturi", "Yes");
            else
                pdfFormFields.SetField("cumparaturi", "0");
            if (date.asistenta)
                pdfFormFields.SetField("asistenta", "Yes");
            else
                pdfFormFields.SetField("asistenta", "0");
            if (date.scurta)
                pdfFormFields.SetField("scurta", "Yes");
            else
                pdfFormFields.SetField("scurta", "0");
            if (date.animale)
                pdfFormFields.SetField("animale", "Yes");
            else
                pdfFormFields.SetField("animale", "0");
            if (date.altele)
                pdfFormFields.SetField("altele", "Yes");
            else
                pdfFormFields.SetField("altele", "0");
            if (date.altele)
                pdfFormFields.SetField("situatie", date.situatie);
            else
            pdfFormFields.SetField("situatie", "");

            pdfFormFields.SetField("zi", date.zi);
            pdfFormFields.SetField("luna", date.luna);
            pdfFormFields.SetField("an", date.an);
            pdfFormFields.SetField("semnatura", date.numePrenume);

 
            pdfStamper.FormFlattening = true;
            // close the pdf  
            pdfStamper.Close();
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
    }
}