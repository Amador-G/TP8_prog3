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
        .auto-style3 {
            width: 205px;
        }
        .auto-style5 {
            width: 205px;
            height: 23px;
        }
        .auto-style8 {
            height: 23px;
            width: 178px;
        }
        .auto-style11 {
            width: 325px;
        }
        .auto-style12 {
            width: 325px;
            height: 23px;
        }
        .auto-style13 {
            width: 178px;
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
                <td class="auto-style11">
                    <asp:HyperLink ID="hpListadoSucursales" runat="server" NavigateUrl="~/ListadoDeSucursales.aspx">Listado de sucursales</asp:HyperLink>
                </td>
                <td class="auto-style13">
                    <asp:HyperLink ID="hpEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar sucursal</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">LISTADO DE SUCURSALES : </td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Busqueda (ingrese ID sucursal) :</td>
                <td class="auto-style11">
                    <asp:TextBox ID="txtIDsucursal" runat="server"></asp:TextBox>
                &nbsp;
                    <asp:Button ID="btnFiltrar" runat="server" Text="Filtrar" OnClick="FiltrarSucursal" />
&nbsp;
                    <asp:Button ID="btnMostarTodos" runat="server" Text="Mostrar todos" OnClick="MostarTodo" />
                </td>
                <td class="auto-style13">
                    <asp:RegularExpressionValidator ID="rvtxtIdsucursal" runat="server" ControlToValidate="txtIDsucursal" ErrorMessage="RegularExpressionValidator" ValidationExpression="^\d+$">Solo numeros!!!</asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style11">
                    <asp:GridView ID="gvSucursales" runat="server">
                    </asp:GridView>
                </td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5"></td>
                <td class="auto-style12"></td>
                <td class="auto-style8"></td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style11">&nbsp;</td>
                <td class="auto-style13">&nbsp;</td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
