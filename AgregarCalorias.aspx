<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarCalorias.aspx.cs" Inherits="Parcial_1_Registro_calorias_pascual_silvestri.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Parcial 1 / Agregar Calorias</title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">

        <div class="input_container">
            <asp:Label ID="Label1" runat="server" Text="Nombre de la comidad"></asp:Label>
            <asp:TextBox ID="NombreComida" runat="server"></asp:TextBox>
        </div>
        
        <div class="calendar_container">
            <div class="">
                <asp:Label ID="Label2" runat="server" Text="Tipo de Comida"></asp:Label>
                <asp:DropDownList ID="TipoComida" runat="server" DataTextField="Almuerzo">
                    <asp:ListItem>Desayuno</asp:ListItem>
                    <asp:ListItem>Media Mañana</asp:ListItem>
                    <asp:ListItem>Almuerzo</asp:ListItem>
                    <asp:ListItem>Merienda</asp:ListItem>
                    <asp:ListItem>Cena</asp:ListItem>
                </asp:DropDownList>
            </div>

            <div class="">
                <asp:Label ID="Label3" runat="server" Text="Fecha de la comida"></asp:Label>
                <asp:Calendar ID="FechaComida" runat="server"></asp:Calendar>
            </div>  
        </div>
       
        <div class="input_container">
            <asp:Label ID="Label4" runat="server" Text="Calorias "></asp:Label>
            <asp:TextBox ID="Calorias" runat="server"></asp:TextBox>
        </div>
        
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <asp:HyperLink ID="HyperLink1" CssClass="link_class" runat="server" NavigateUrl="~/Index.aspx">Volver</asp:HyperLink>
    <div>

        <asp:Label  ID="Label5" runat="server"></asp:Label>

    </div>
    
    </form>
  
    </body>
</html>
