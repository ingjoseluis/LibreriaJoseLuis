<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LibreriaMavc.aspx.cs" Inherits="WebLibro.LibreriaMavc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        BIENVENIDOS A LA LIBRERIA JOSE LUIS<br />
        <br />
        <asp:TextBox ID="TextBoxLibro" runat="server"></asp:TextBox>
        <asp:Button ID="ButtonLibro" runat="server" Text="Buscar" />
        <br />
        <asp:DetailsView ID="DetailsViewLibro" runat="server" AutoGenerateRows="False" DataKeyNames="Nombre,Autor,Editorial" DataSourceID="OdsLibro" DefaultMode="Insert" Height="50px" Width="125px">
            <Fields>
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                <asp:BoundField DataField="Editorial" HeaderText="Editorial" SortExpression="Editorial" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:GridView ID="GridViewLibro" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="OdsLibro">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Id" HeaderText="Id" SortExpression="Id" />
                <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                <asp:BoundField DataField="Autor" HeaderText="Autor" SortExpression="Autor" />
                <asp:BoundField DataField="Editorial" HeaderText="Editorial" SortExpression="Editorial" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:ObjectDataSource ID="OdsLibro" runat="server" DeleteMethod="Eliminar" InsertMethod="Agregar" SelectMethod="ObtenerLibros" TypeName="libro.AccesoLibro.LibroRepository" UpdateMethod="Actualizar">
            <DeleteParameters>
                <asp:Parameter Name="Id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Nombre" Type="String" />
                <asp:Parameter Name="Autor" Type="String" />
                <asp:Parameter Name="Editorial" Type="String" />
            </InsertParameters>
            <SelectParameters>                
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="nombre" Type="String" />
                <asp:Parameter Name="autor" Type="String" />
                <asp:Parameter Name="editorial" Type="String" />
            </UpdateParameters>
        </asp:ObjectDataSource>
    
    </div>
    </form>
</body>
</html>
