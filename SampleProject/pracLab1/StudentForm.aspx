<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentForm.aspx.cs" Inherits="pracLab1.StudentForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            text-align: right;
            width: 90px;
        }
        .auto-style4 {
            width: 90px;
        }
        .auto-style5 {
            width: 187px;
            margin-left: 80px;
        }
        .auto-style6 {
            height: 262px;
        }
        .auto-style7 {
            text-align: right;
            width: 90px;
            height: 26px;
        }
        .auto-style8 {
            width: 187px;
            margin-left: 80px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="Stud_Label1" runat="server" Text="StudentTable Form"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style6">
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [StudentTable]"></asp:SqlDataSource>
                    <asp:GridView ID="StudentGridView" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="207px" style="margin-top: 2px;" Width="904px" AutoGenerateColumns="False" DataKeyNames="Roll" DataSourceID="SqlDataSource1">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:BoundField DataField="Roll" HeaderText="Roll" ReadOnly="True" SortExpression="Roll" />
                            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                            <asp:BoundField DataField="DateOfBirth" HeaderText="DateOfBirth" SortExpression="DateOfBirth" />
                        </Columns>
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
        </table>
    <div>
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="RollLabel" runat="server" Text="Roll"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="RollTxtBox" runat="server" OnTextChanged="RollTxtBox_TextChanged" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/InstructorForm.aspx">goto InstructorForm</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="NameLabel" runat="server" Text="Name"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="NameTxtBox" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td>
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/SuperviseForm.aspx">goto SuperviseForm</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:Label ID="BirthLabel" runat="server" Text="Date of Birth"></asp:Label>
                </td>
                <td class="auto-style8">
                    <asp:TextBox ID="BirthTxtBox" runat="server" Width="180px"></asp:TextBox>
                </td>
                <td class="auto-style9">
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/QueryForm.aspx">goto QueryForm</asp:HyperLink>
                </td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Button ID="InsertStudBtn" runat="server" Height="33px" OnClick="InsertStudBtn_Click" style="margin-left: 97px; margin-top: 13px; margin-bottom: 3px" Text="Insert" Width="88px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
