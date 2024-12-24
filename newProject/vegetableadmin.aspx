<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="vegetableadmin.aspx.cs" Inherits="newProject.vegetableadmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <h1 style="padding-top:70px;margin-left:20%"> this is Vegetable admin</h1>
     <p style="padding-top:70px;margin-left:20%"> 
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1"  style="height:200px;width:700px;margin-left:20%" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#CCCCCC" />
             <Columns>
                 <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                 <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                 <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
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
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [v_admin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [v_admin] ([name], [quantity], [amount]) VALUES (@name, @quantity, @amount)" SelectCommand="SELECT * FROM [v_admin]" UpdateCommand="UPDATE [v_admin] SET [name] = @name, [quantity] = @quantity, [amount] = @amount WHERE [Id] = @Id">
             <DeleteParameters>
                 <asp:Parameter Name="Id" Type="Int32" />
             </DeleteParameters>
             <InsertParameters>
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="quantity" Type="Int32" />
                 <asp:Parameter Name="amount" Type="Int32" />
             </InsertParameters>
             <UpdateParameters>
                 <asp:Parameter Name="name" Type="String" />
                 <asp:Parameter Name="quantity" Type="Int32" />
                 <asp:Parameter Name="amount" Type="Int32" />
                 <asp:Parameter Name="Id" Type="Int32" />
             </UpdateParameters>
         </asp:SqlDataSource>
     </p>
        
     <%--</h1>--%>
</asp:Content>
