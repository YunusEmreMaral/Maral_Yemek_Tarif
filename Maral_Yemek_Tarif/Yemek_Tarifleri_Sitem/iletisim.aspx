<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="iletisim.aspx.cs" Inherits="iletisim" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        width: 100%;
        margin-right: 0px;
    }
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        font-weight: bold;
        font-style: italic;
        font-size: large;
    }
    .auto-style11 {
        font-size: x-large;
        background-color: #ce7171
    }
        .auto-style13 {
            width: 100%;
            font-size: medium;
            height: 214px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
    <tr>
        <td class="auto-style11" colspan="2"><strong>Mesaj Paneli</strong></td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td><strong>Ad Soyad:</strong></td>
        <td>
            <asp:TextBox ID="ad0" runat="server" Width="225px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Mail Adresiniz:</strong></td>
        <td>
            <asp:TextBox ID="mail0" runat="server" TextMode="Email" Width="225px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Konu:</strong></td>
        <td>
            <asp:TextBox ID="konuu0" runat="server" Width="225px" CssClass="tb5" OnTextChanged="mesaj_TextChanged"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td><strong>Mesaj:</strong></td>
        <td>
            <asp:TextBox ID="mesaj0" runat="server" Height="150px" TextMode="MultiLine" Width="225px" CssClass="tb5"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            <asp:Button ID="Button1" runat="server" CssClass="auto-style10" Height="42px" Text="Gönder" Width="209px" OnClick="Button1_Click" />
        </td>
    </tr>
    <tr>
        <td>&nbsp;</td>
        <td>
            &nbsp;</td>
    </tr>
</table>
</asp:Content>

