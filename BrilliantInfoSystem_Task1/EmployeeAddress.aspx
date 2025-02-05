<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EmployeeAddress.aspx.cs" Inherits="BrilliantInfoSystem_Task1.EmployeeAddress" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
    <title></title>
    <style type="text/css">
        .auto-style2 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 299px;
            padding-left: 15px;
            padding-right: 15px;
        }


        .auto-style5 {
            width: 1688px;
        }

        .auto-style6 {
            margin-left: 63px;
        }
    </style>
</head>
<body>
    <form runat="server">
        <table class="auto-style5">
            <tr>
                <td class="auto-style2">
                    <asp:Label for="TextBox1" class="form-label" runat="server" Text="FirstName"></asp:Label>
                    <asp:TextBox ID="TextBox1" Class="form-control" runat="server"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label for="TextBox2" class="form-label" runat="server" Text="LastName"></asp:Label>
                    <asp:TextBox ID="TextBox2" Class="form-control" runat="server" required="required"></asp:TextBox>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label for="TextBox3" class="form-label" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="TextBox3" Class="form-control" runat="server"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label for="TextBox4" class="form-label" runat="server" Text="Salary"></asp:Label>
                    <asp:TextBox ID="TextBox4" Class="form-control" runat="server"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label for="TextBox5" class="form-label" runat="server" Text="Designation"></asp:Label>
                    <asp:TextBox ID="TextBox5" Class="form-control" runat="server"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label6" class="form-label" runat="server" Text="state"></asp:Label>
                    <asp:TextBox ID="TextBox6" Class="form-control" runat="server"></asp:TextBox><br />
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <asp:Label ID="Label7" class="form-label" runat="server" Text="Gender"></asp:Label>
                    <asp:DropDownList Class="form-control" ID="DropDownList1" runat="server">
                        <asp:ListItem Value="Select Gender">Select Gender</asp:ListItem>
                        <asp:ListItem Value="Male">Male</asp:ListItem>
                        <asp:ListItem Value="Female">Female</asp:ListItem>
                        <asp:ListItem>Others</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                </td>
            </tr>
            <td>
                <asp:Button class="btn btn-success" runat="server" Text="Edit" OnClick="Button2_Click2" Width="159px" />
                <asp:Button class="btn btn-primary" runat="server" Text="Save" OnClick="Button1_Click1" Width="159px" />
                <asp:Button Class="btn btn-danger" runat="server" Text="Delete" OnClick="Delete_Click" Width="149px" /><br />
            </td>

            <br />
            
            <tr>
                <br />
            
                 <asp:GridView ID="GridView1" class="table table-hover" runat="server" BackColor="White" CellPadding="3" BorderStyle="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" BorderWidth="1px" ForeColor="#333333" GridLines="Horizontal" AutoGenerateSelectButton="True" AllowPaging="True" OnPageIndexChanging="OnPageIndexChanging" PageSize="3">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
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
            </tr>
        </table>
    </form>
</body>
</html>
