<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="ffweb.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Repeater ID="Repeater1"  runat="server"  
            onitemdatabound="Repeater1_ItemDataBound" 
            onitemcommand="Repeater1_ItemCommand1"  >
        
        <HeaderTemplate>
        <table>
        <tr>
         <th>
        <asp:Label ID="Label3" runat="server" Text="EMail"></asp:Label></th>
        
       <th>
        <asp:Label ID="Label1" runat="server" Text="FirstName"></asp:Label></th>

        <th><asp:Label ID="Label2" runat="server" Text="LastName"></asp:Label></th>
        <th>       
        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label></th>
        <th>
        <asp:Label ID="Label5" runat="server" Text="Age"></asp:Label></th>
        </tr>
        
        </HeaderTemplate>
        <ItemTemplate>
        <tr>       
        <td>
            <asp:TextBox ID="EmailTextBox" runat="server" Text='<%#Eval("email") %>'></asp:TextBox>
        </td>
      
             <td>
        <asp:TextBox ID="FirstNameTextbox" runat="server" Text='<%#Eval("firstname") %>'></asp:TextBox>
        </td>
      
        <td>
            <asp:TextBox ID="FirstNameTextBox2" runat="server" Text='<%#Eval("lastname") %>'></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="ChatTextBox2" runat="server" Text='<%#Eval("address") %>'></asp:TextBox>
        </td>
        <td>
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%#Eval("age") %>'></asp:TextBox>
        </td>

          <td>
            <asp:LinkButton ID="LinkButton1" CommandName="Delete" runat="server">Delete</asp:LinkButton>
        </td>
        
          <td>
            <asp:LinkButton ID="LinkButton2" CommandName="Edit" runat="server">Edit</asp:LinkButton>
        </td>
        </tr>
       
        </ItemTemplate>   
        
       
        <FooterTemplate>
        </table>
        </FooterTemplate>     
        </asp:Repeater>
    </div>
    </form>
</body>
</html>
