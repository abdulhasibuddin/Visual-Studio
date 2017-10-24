<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="QueryForm.aspx.cs" Inherits="pracLab1.QueryForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 198px;
        }
        .auto-style3 {
            width: 333px;
        }
        .auto-style4 {
            text-align: right;
            width: 131px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" style="margin-left:400px" Text="Query Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td class="auto-style2">
                                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/StudentForm.aspx">goto StudentForm</asp:HyperLink>
                            </td>
                            <td class="auto-style3">
                                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/InstructorForm.aspx">goto InstructorForm</asp:HyperLink>
                            </td>
                            <td>
                                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/SuperviseForm.aspx">goto SuperviseForm</asp:HyperLink>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    
    </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label2" runat="server" Text="Min Value"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="MinTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label3" runat="server" Text="Max Value"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="MaxTxtBox" runat="server"></asp:TextBox>
                </td>
            </tr>
        </table>
        <table class="auto-style1">
            <tr>
                <td>
                    <asp:GridView ID="SelectedGridView" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Width="916px">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                        <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                        <SortedAscendingHeaderStyle BackColor="#0000A9" />
                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                        <SortedDescendingHeaderStyle BackColor="#000065" />
                    </asp:GridView>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Button ID="ShowDataBtn" runat="server" Height="38px" OnClick="ShowDataBtn_Click" style="margin-left: 451px" Text="Show Data" Width="83px" />
                </td>
            </tr>
            <tr>
                <td>
                    <table class="auto-style1">
                        <tr>
                            <td>
                                <asp:TextBox ID="QueryTxtBox" runat="server" Height="125px" TextMode="MultiLine" Width="906px"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="QueryBtn" runat="server" Height="40px" OnClick="QueryBtn_Click" style="margin-left: 450px" Text="Insert Query" Width="91px" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
