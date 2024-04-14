<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Parcial_1_Registro_calorias_pascual_silvestri.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Parcial 1 / Inicio</title>
    <link rel="stylesheet" type="text/css" href="./StyleSheet1.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:HyperLink ID="HyperLink1" CssClass="link_class" runat="server" NavigateUrl="~/RegistrosCalorias.aspx">Registros de calorias</asp:HyperLink>
            <asp:HyperLink ID="HyperLink2" CssClass="link_class" runat="server" NavigateUrl="~/AgregarCalorias.aspx">Agregar calorias</asp:HyperLink>
        </div>
    </form>
</body>
</html>
