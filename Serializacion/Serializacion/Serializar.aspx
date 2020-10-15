<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Serializar.aspx.cs" Inherits="Serializacion.Serializar" %>

<link href="Estilo.css" rel="stylesheet" type="text/css" />

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
     <form id="form1" runat="server" style="background-color: #f1f1f1" >
        <div id="DivSerializaciones" runat="server">

            <asp:Label ID="Titulo" runat="server" Text="Serializaciones" CssClass="Titulo"></asp:Label>
            
            <table width="100%" id ="TablaSerializar" runat ="server">
                <tr> 
                    <td> 
                        <asp:Label ID="lblNombre" runat="server" Text="Nombre: " CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td > 
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr> 
                <tr> 
                    <td> 
                        <asp:Label ID="lblApellido" runat="server" Text="Apellido: " CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtApellido" runat="server" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr>
                <tr> 
                    <td> 
                        <asp:Label ID="lblTelefono" runat="server" Text="Teléfono: " CssClass="TextoConsulta"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtTelefono" runat="server" CssClass="Consulta"></asp:TextBox>
                    </td>
                </tr>

                <%--En esta situación utilizariamos un validador. El ejemplo es para ilustrar que podemos esconder y mostrar controles. --%>
                <tr>
                    <td>
                        <asp:Label ID="lblError" Text="El Teléfono Ingresado no es Valido" runat="server" Visible="false" CssClass="Consulta"></asp:Label>
                    </td>
                </tr>
                
                <tr> 
                    <td>
                        <asp:Button ID="btnSerializar" runat="server" Text="Guardar" OnClick="GuardarSerializando" Width="250px" Height="30px" Font-Size="Larger" BackColor="Green" ForeColor="WhiteSmoke" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
