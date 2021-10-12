<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AgregarSucursales.aspx.cs" Inherits="Vistas.AgregarSucursales" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 785px;
        }
        .auto-style6 {
            width: 195px;
        }
        .auto-style7 {
            width: 196px;
        }
        .auto-style8 {
            width: 195px;
            height: 26px;
        }
        .auto-style9 {
            width: 196px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6">
                        <asp:HyperLink ID="hpAgregarSucursales" runat="server" NavigateUrl="~/AgregarSucursales.aspx">Agregar sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hpListadoSucursales" runat="server" NavigateUrl="~/ListadoDeSucursales.aspx">Listado de sucursales</asp:HyperLink>
                    </td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="hpEliminarSucursal" runat="server" NavigateUrl="~/EliminarSucursales.aspx">Eliminar sucursal</asp:HyperLink>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">GRUPO N° 1</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">AGREGAR SUCURSAL : </td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">Nombre sucursal :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtNombreSuc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rvtxtNombre" runat="server" ControlToValidate="txtNombreSuc" ErrorMessage="Ingrese un nombre">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">Descripcion : </td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDescripcionSuc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rvDescripcion" runat="server" ControlToValidate="txtDescripcionSuc" ErrorMessage="Ingrese una descripcion">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style9">Provincia :</td>
                    <td class="auto-style9">
                        <asp:DropDownList ID="ddlProvinciasSuc" runat="server" Height="16px" OnSelectedIndexChanged="ddlProvinciasSuc_SelectedIndexChanged" Width="128px">
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style9">
                        <asp:RequiredFieldValidator ID="rvProvincia" runat="server" ControlToValidate="ddlProvinciasSuc" ErrorMessage="Seleccione una provincia" InitialValue="Seleccionar provincia">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">Direccion :</td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtDireccionSuc" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style7">
                        <asp:RequiredFieldValidator ID="rvDireccion" runat="server" ControlToValidate="txtDireccionSuc" ErrorMessage="Ingrese la direccion">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Button ID="btnAceptar" runat="server" Text="Aceptar" OnClick="btnAceptar_Click" />
                    </td>
                    <td class="auto-style7">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">&nbsp;</td>
                    <td class="auto-style7">&nbsp;</td>
                    <td class="auto-style7">
                        <asp:Label ID="lblMensajeAgregado" runat="server"></asp:Label>
                    </td>
                    <td class="auto-style7">
                        <asp:ValidationSummary ID="vlErrores" runat="server" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
