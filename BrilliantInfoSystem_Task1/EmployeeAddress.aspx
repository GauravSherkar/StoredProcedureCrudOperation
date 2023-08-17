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
                    <%--<asp:Label ID="Label1"  class="form-label" runat="server" Text="EmpId"></asp:Label>--%>
                    <%--<asp:TextBox ID="TextBox7" Class="form-control"  runat="server"></asp:TextBox>--%>
                    <%--<asp:DropDownList Class="form-control" type="hidden" ID="DropDownList2"  runat="server">
                    </asp:DropDownList>--%>
                    <br />
                </td>
            </tr>
         

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
                        <asp:TextBox ID="TextBox2" Class="form-control" runat="server"></asp:TextBox>
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
                <asp:Button  Class="btn btn-danger" runat="server" Text="Delete" OnClick="Delete_Click"  Width="149px" /><br />
            </td>

            <br />
            <tr>
                <br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateSelectButton="True" BackColor="White" border="2px solid red" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" GridLines="Vertical" Width="98%" ForeColor="Black" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" CssClass="auto-style6">
                <AlternatingRowStyle BackColor="White" />
                <FooterStyle BackColor="#CCCC99" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                <RowStyle BackColor="#F7F7DE" />
                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#FBFBF2" />
                <SortedAscendingHeaderStyle BackColor="#848384" />
                <SortedDescendingCellStyle BackColor="#EAEAD3" />
                <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            </tr>
        </table>
    </form>
</body>
</html>
