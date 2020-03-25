<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DecCOVID.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
</script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
<style type='text/css'>
    .responsive-textbox { width: 100%; }
  </style>

</head>
<body>
    <form id="form1" runat="server" style="padding: 10px 10px 10px 10px;">
        <div>
            <h2>Declaratie personala COVID
        </h2>
        </div>

        <p>
            <asp:Label ID="Label1" runat="server" Text="Nume si Prenume"></asp:Label><br /><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="numeprenume" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="fiul lui "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="tata" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="si al "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="mama" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Localitatea "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="localitatea" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Judet "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="judet" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label6" runat="server" Text="Strada "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="strada" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Text="Numar "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="nr" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label8" runat="server" Text="Bloc "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="bloc" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label9" runat="server" Text="Etaj "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="etaj" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label10" runat="server" Text="Apartament "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="ap" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label11" runat="server" Text="CNP "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="cnp" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label12" runat="server" Text="Seria CI"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="seria" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label13" runat="server" Text="Nr CI "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="nrCI" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label14" runat="server" Text="Localitatea faptica"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="localitateaFapt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label15" runat="server" Text="Judet faptic"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="judetFapt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label16" runat="server" Text="Strada fapt"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="stradaFapt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label17" runat="server" Text="Nr fapt"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="nrFapt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label18" runat="server" Text="Bloc Fpt"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="blocFapt" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label19" runat="server" Text="Apartament fapt"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="apFapt" runat="server"></asp:TextBox>
            &nbsp;
        </p>
        <p>
            <asp:Label ID="Label20" runat="server" Text="Motivul este "></asp:Label><br />
            <asp:RadioButton ID="interes1" runat="server" Text="Personal" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:RadioButton ID="interes2" runat="server" Text="Profesional" />
        </p>
        <p>
            <asp:Label ID="Label21" runat="server" Text="Intre"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="intre" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label22" runat="server" Text="De la "></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="dela" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label23" runat="server" Text="Pana la"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="panala" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label24" runat="server" Text="Motivul este "></asp:Label><br />
            <asp:RadioButton ID="motiv1" runat="server" Text="deplasarea între domiciliu și locul de muncă" />
        <br />    <asp:RadioButton ID="motiv2" runat="server" Text="consult medical de specialitate care nu poate fi amânat;" />
        <br />    <asp:RadioButton ID="motiv3" runat="server" Text="deplasare pentru cumpărături de primă necesitate la unități comerciale din zona de domiciliu" />
            <br /><asp:RadioButton ID="motiv4" runat="server" Text="deplasare pentru asigurarea asistenței pentru persoane în vârstă, vulnerabile sau pentru însoțirea copiilor" />
            <br /><asp:RadioButton ID="motiv5" runat="server" Text="deplasare scurtă, lângă domiciliu, pentru desfășurarea de activități fizice individuale" />
            <br /><asp:RadioButton ID="motiv6" runat="server" Text="deplasare scurtă, lângă domiciliu, legată de nevoile animalelor de companie" />
            <br /><asp:RadioButton ID="motiv7" runat="server" Text="deplasare pentru rezolvarea următoarei situații urgente" />
        </p>
        <p>
            <asp:Label ID="Label25" runat="server" Text="motivele"></asp:Label><br />
            <asp:TextBox  CssClass="responsive-textbox" ID="situatie" runat="server"></asp:TextBox>
        </p>
        <asp:Label ID="Label26" runat="server" Text="Data semnarii"></asp:Label><br />
        <asp:Calendar ID="dataexacta" runat="server"></asp:Calendar>
        <br />
        <p>
            &nbsp;
        </p>
        <p>
            <asp:Button ID="btnGenerare" runat="server" OnClick="btnGenerare_Click" Text="Generare" Height="28px" Width="104px" />
        </p>

    </form>
</body>
</html>
