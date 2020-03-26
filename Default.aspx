<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DecCOVID.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
    </script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous" />
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <style type='text/css'>
        .responsive-textbox {
            width: 100%;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server" style="padding: 10px 10px 10px 10px;">
        <div>
            <h2>Declaratie personala COVID
            </h2>
        </div>

        <p>
            <asp:Label ID="Label1" runat="server" Text="Nume: "></asp:Label><br />
            <br />
            <asp:TextBox CssClass="responsive-textbox" ID="nume" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label2" runat="server" Text="Prenume: "></asp:Label><br />
            <asp:TextBox CssClass="responsive-textbox" ID="prenume" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label3" runat="server" Text="Data nasterii: "></asp:Label><br />
            <asp:Calendar ID="datanasterii" runat="server"></asp:Calendar>

        </p>
        <p>
            <asp:Label ID="Label5" runat="server" Text="Adresa locuintei: "></asp:Label><br />
            <asp:TextBox CssClass="responsive-textbox" ID="adresa" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label4" runat="server" Text="Locul: "></asp:Label><br />
            <asp:TextBox CssClass="responsive-textbox" ID="locul" runat="server"></asp:TextBox>
        </p>

        <p>
            <asp:Label ID="Label24" runat="server" Text="Motivul este "></asp:Label>

            <asp:RadioButtonList ID="CheckBoxList1" runat="server">
                <asp:ListItem Value="1">interes profesional, inclusiv între locuință/gospodărie și locul/locurile de desfășurare a activității profesionale și înapoi</asp:ListItem>
                <asp:ListItem Value="2">asigurarea de bunuri care acoperă necesitățile de bază ale persoanelor și animalelor de companie/domestice</asp:ListItem>
                <asp:ListItem Value="3">asistență medicală care nu poate fi amânată și nici realizată de la distanță</asp:ListItem>
                <asp:ListItem Value="4">motive justificate, precum îngrijirea/ însoțirea unui minor/copilului, asistența persoanelor vârstnice, bolnave sau cu dizabilități ori deces al unui membru de familie</asp:ListItem>
                <asp:ListItem Value="5">activitate fizică individuală (cu excluderea oricăror activități sportive de echipă/ colective) sau pentru nevoile animalelor de companie/domestice, în apropierea locuinței</asp:ListItem>
                <asp:ListItem Value="6">realizarea de activități agricole</asp:ListItem>
                <asp:ListItem Value="7">donarea de sange, la centrele de transfuzie sanguinÄƒ</asp:ListItem>
                <asp:ListItem Value="8">scopuri umanitare sau de voluntariat</asp:ListItem>
                <asp:ListItem Value="9">comercializarea de produse agroalimentare (în cazul producătorilor agricoli)</asp:ListItem>
                <asp:ListItem Value="10">asigurarea de bunuri necesare desfÄƒÈ™urÄƒrii activitÄƒÈ›ii profesionale</asp:ListItem>

            </asp:RadioButtonList>

            <br />

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
