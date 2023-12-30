<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Hakkımızda.aspx.cs" Inherits="Hakkımızda" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: x-large;
        }
        .auto-style9 {
            text-align: center;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            font-size: large;
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p class="auto-style14">
        <strong>HAKKIMIZDA&nbsp;</strong></p>
    <table class="auto-style13">
        <tr>
            <td>
                <asp:DataList ID="DataList3" runat="server">
                    <ItemTemplate>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("Metin") %>'></asp:Label>
                    </ItemTemplate>
                </asp:DataList>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Image ID="Image3" runat="server" Height="181px" ImageUrl="~/resimler/pngwing.com (3).png" Width="441px" />
            </td>
        </tr>
    </table>

</asp:Content>

