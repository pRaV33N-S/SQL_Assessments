<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductRegistration.aspx.cs" Inherits="Assessment10.ProductRegistration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
    <title>Product Registration</title>
    <style type="text/css">
        .auto-style1 {
            width: 276px;
        }
        .auto-style2 {
            width: 276px;
            height: 48px;
        }
        .auto-style3 {
            height: 48px;
        }
        .auto-style4 {
            width: 276px;
            height: 42px;
        }
        .auto-style5 {
            height: 42px;
        }
        .auto-style6 {
            width: 276px;
            height: 45px;
        }
        .auto-style7 {
            height: 45px;
        }
        .auto-style8 {
            width: 276px;
            height: 41px;
        }
        .auto-style9 {
            height: 41px;
        }
        .auto-style10 {
            width: 276px;
            height: 261px;
        }
        .auto-style11 {
            height: 261px;
        }
        .auto-style12 {
            width: 276px;
            height: 40px;
        }
        .auto-style13 {
            height: 40px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <table class="w-100">
            <tr>
                <td class="auto-style1" style="font-weight: bold">Product Image</td>
                <td>
            <asp:Image ID="Image" runat="server" ImageUrl="~/Images/BugattiChiron.jpg" Width="350" Height="200" CssClass="img-fluid"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style2" style="font-weight: bold">Product Name</td>
                <td class="auto-style3">
                    <asp:TextBox ID="ProductName" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="ProductNameValidator" runat="server" ControlToValidate="ProductName" ErrorMessage="Please Enter Product Name" Font-Bold="True" Font-Italic="False" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style4" style="font-weight: bold">Category</td>
                <td class="auto-style5">
                    <asp:DropDownList ID="Category" runat="server">
                        <asp:ListItem>Others</asp:ListItem>
                        <asp:ListItem>Furniture</asp:ListItem>
                        <asp:ListItem>Electronics</asp:ListItem>
                        <asp:ListItem>Clothing</asp:ListItem>
                        <asp:ListItem>Books</asp:ListItem>
                        <asp:ListItem>AutoMotive</asp:ListItem>
                        <asp:ListItem>Office</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="CategoryValidator" runat="server" ControlToValidate="Category" ErrorMessage="Please Select One Category from the list" Font-Bold="True" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style6" style="font-weight: bold">Price</td>
                <td class="auto-style7">
                    <asp:TextBox ID="Price" runat="server" Height="21px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="PriceValidator" runat="server" ControlToValidate="Price" ErrorMessage="Please Enter Product Price" Font-Bold="True" ForeColor="Purple"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="PriceNumbericValidation0" runat="server" ControlToValidate="Price" ErrorMessage="Only Accepts Numerics" Font-Bold="True" ForeColor="Red" ValidationExpression="^[0-9]+$"></asp:RegularExpressionValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style8" style="font-weight: bold">Description</td>
                <td class="auto-style9">
                    <asp:TextBox ID="Description" runat="server"></asp:TextBox>
&nbsp;<asp:RequiredFieldValidator ID="DescriptionValidator" runat="server" ControlToValidate="Description" ErrorMessage="Please Enter Description" Font-Bold="True" ForeColor="Purple"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style10" style="font-weight: bold">Release Date</td>
                <td class="auto-style11">
                    <asp:Calendar ID="Cal" runat="server" BackColor="White" BorderColor="Black" DayNameFormat="Shortest" Font-Names="Times New Roman" Font-Size="10pt" ForeColor="Black" Height="220px" NextPrevFormat="FullMonth" TitleFormat="Month" Width="400px">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" ForeColor="#333333" Height="10pt" />
                        <DayStyle Width="14%" />
                        <NextPrevStyle Font-Size="8pt" ForeColor="White" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <SelectedDayStyle BackColor="#CC3333" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" Font-Bold="True" Font-Names="Verdana" Font-Size="8pt" ForeColor="#333333" Width="1%" />
                        <TitleStyle BackColor="Black" Font-Bold="True" Font-Size="13pt" ForeColor="White" Height="14pt" />
                        <TodayDayStyle BackColor="#CCCC99" />
                    </asp:Calendar>
                    <asp:CustomValidator ID="DateValidator" runat="server"   ClientValidationFunction="CustomValidator1_ServerValidate" ErrorMessage="Please Select Valid Date" Font-Bold="True" ForeColor="Purple" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
</asp:CustomValidator>

                </td>
            </tr>
            <tr>
                <td class="auto-style12" style="font-weight: bold"></td>
                <td class="auto-style13">
                    <asp:Button ID="Btn" runat="server" Text="Submit" OnClick="Btn_Click"/>
                </td>
            </tr>
        </table>
        <asp:Label ID="Label" runat="server" Text="Label"></asp:Label>
    </form>
</body>
</html>
