<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PaginaOrigen.aspx.cs" Inherits="Validaciones.MiPagina" %>

<link href="Estilo.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server" style="background-color: #f1f1f1" >
        <div id="DivValidaciones" runat="server">

            <asp:Label ID="Titulo" runat="server" Text="Validaciones" CssClass="Titulo"></asp:Label>
            
            <table width="100%" id ="TablaValidacion" runat ="server">
                <tr> 
                    <td> 
                        <asp:Label ID="LabelNombre" runat="server" Text="Nombre: " Width="40%" CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td > 
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="Consulta"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="ValidatorNombre" runat="server" ErrorMessage="Ingrese un Nombre" ForeColor="Red" ControlToValidate="txtNombre"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr> 
                    <td> 
                        <asp:Label ID="lblDireccion" runat="server" Text="Dirección: " Width="40%" CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtDireccion" runat="server" CssClass="Consulta"></asp:TextBox>
                        <asp:CustomValidator ID="ValidatorDireccion" OnServerValidate="ValidarLongitudDireccion" runat="server" ErrorMessage="Ingrese una dirección valida" ForeColor="Red" ControlToValidate="txtDireccion"></asp:CustomValidator>                    
                    </td>
                </tr>
                
                <tr> 
                    <td>
                        <asp:Button ID="ButtonBuscar" runat="server" Text="Guardar" OnClick="GuardarEstablecimiento" Width="250px" Height="30px" Font-Size="Larger" BackColor="Green" ForeColor="WhiteSmoke" />
                    </td>
                </tr>
            </table>
        </div>

        <%--///////////////////////////////////////////Sección con Validation Group///////////////////////////////////////////--%>
         
        <div id="DivValidacionesConGroup" runat="server">

            <asp:Label ID="Label1" runat="server" Text="Validaciones con Grupo" CssClass="Titulo"></asp:Label>
            
            <table width="100%" id ="TablaValidacionGroup" runat ="server">
                <tr> 
                    <td> 
                        <asp:Label ID="LabelSegundoNombre" runat="server" Text="Nombre: " Width="40%" CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td > 
                        <asp:TextBox ID="txtSegundoNombre" runat="server" CssClass="Consulta"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="SegundoNombreValidator" ValidationGroup="GrupoAValidar" runat="server" ErrorMessage="Ingrese un Nombre" ForeColor="Red" ControlToValidate="txtSegundoNombre"></asp:RequiredFieldValidator>
                    </td>
                </tr> 
                <tr> 
                    <td> 
                        <asp:Label ID="lblSegundaDireccion" runat="server" Text="Dirección: " Width="40%" CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtSegundaDireccion" runat="server" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr>
                
                <tr> 
                    <td>
                        <asp:Button ID="btnGuardarConGroup" runat="server" Text="Guardar con Group" ValidationGroup="GrupoAValidar" OnClick="GuardarEstablecimiento" Width="250px" Height="30px" Font-Size="Larger" BackColor="Green" ForeColor="WhiteSmoke" />
                    </td>
                </tr>
            </table>
        </div>
       
    </form>
</body>
</html>
