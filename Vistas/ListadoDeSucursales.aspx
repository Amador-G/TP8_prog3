<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListadoDeSucursales.aspx.cs" Inherits="Vistas.ListadoDeSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 235px;
        }
        .auto-style3 {
            width: 226px;
        }
        .auto-style4 {
            width: 159px;
        }
        .auto-style5 {
            width: 226px;
            height: 23px;
        }
        .auto-style6 {
            width: 159px;
            height: 23px;
        }
        .auto-style7 {
            width: 235px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:HyperLink ID="hpAgregarSucursales" runat="server" NavigateUrl="~/AgregarSucursales.aspx">Agregar sucursales</asp:HyperLink>
                </td>
                <td class="auto-style4">
                    <asp:HyperLink ID="hpListadoSucursales" runat="server" NavigateUrl="~/ListadoDeSucursales.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td class="auto-style2">&nbsp;</td>
                <td>
                    <asp:HyperLink ID="hpEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar sucursal</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">LISTADO DE SUCURSALES : </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Busqueda (ingrese ID sucursal) :</td>
                <td class="auto-style4">
                    <asp:TextBox ID="txtIDsucursal" runat="server"></asp:TextBox>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" />
&nbsp;
                    <asp:Button ID="btnMostarTodos" runat="server" Text="Mostrar todos" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:GridView ID="gvSucursales" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style6"></td>
                <td class="auto-style7"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style2">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
