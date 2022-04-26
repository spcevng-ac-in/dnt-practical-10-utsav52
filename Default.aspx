<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 23%; height: 180px;" align=center>

    <tr>
            <td class="style1" colspan ="2" align =center >
                &nbsp;
                <asp:Label ID="lblmsg" runat="server" Text=""></asp:Label>
            </td>
            
        </tr>
        <tr>
            <td class="style1">
                &nbsp;
                <asp:Label ID="lblno" runat="server" Text="NO"></asp:Label>
            </td>
            <td class="style1">
                &nbsp;
                <asp:TextBox ID="txtno" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Label ID="lblname" runat="server" Text="NAME"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
                <asp:Label ID="lbladdress" runat="server" Text="ADDRESS"></asp:Label>
            </td>
            <td>
                &nbsp;
                <asp:TextBox ID="txtaddress" runat="server"></asp:TextBox>
            </td>
        </tr>

         <tr>
              <td colspan ="2">
                &nbsp;<asp:Button ID="btnsave" runat="server" Text="SAVE" onclick="btnsave_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="btnupdate" runat="server" Text="UPDATE" 
                      onclick="btnupdate_Click" Width="73px" />
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  <asp:Button ID="btndel" runat="server" Text="DELETE" onclick="btndel_Click" 
                      Width="80px" />
                
            </td>
        </tr>
    </table>

    <table align=center >
    
        <tr>
            <td>
            
            <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" onselectedindexchanged="GridView1_SelectedIndexChanged">
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                </Columns>
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            
            </td>
        </tr>
    </table>

    </form>
</body>
</html>
