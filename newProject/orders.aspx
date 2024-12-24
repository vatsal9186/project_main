<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="orders.aspx.cs" Inherits="newProject.orders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 style="padding-top:70px;margin-left:20%"> this is Orders Info</h1>
        <br /><br />
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="Id" DataSourceID="SqlDataSource4" ForeColor="Black" GridLines="Vertical" style="margin-left:20%; Height:200px; Width:1058px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" AllowSorting="True">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="item" HeaderText="item" SortExpression="item" />
            <asp:BoundField DataField="quantity" HeaderText="quantity" SortExpression="quantity" />
            <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [checkout]" DeleteCommand="DELETE FROM [checkout] WHERE [Id] = @Id" InsertCommand="INSERT INTO [checkout] ([item], [quantity], [amount]) VALUES (@item, @quantity, @amount)" UpdateCommand="UPDATE [checkout] SET [item] = @item, [quantity] = @quantity, [amount] = @amount WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="item" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="amount" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="item" Type="String" />
            <asp:Parameter Name="quantity" Type="Int32" />
            <asp:Parameter Name="amount" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ORDER_INFO]"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
        <%--</h1>--%>
    <p style="padding-top:70px;margin-left:10%"> &nbsp;</p>
    <p style="padding-top:70px;margin-left:10%"> 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ORDER_INFO]"></asp:SqlDataSource>
    </p>
</asp:Content>
