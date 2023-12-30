<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="YorumlarAdminDetay.aspx.cs" Inherits="YorumlarAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            margin-left: 40px;
        }
        .auto-style22 {
            text-align: right;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style13">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style22">AD SOYAD:&nbsp;</td>
            <td>
                <asp:TextBox ID="ad" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">YORUM MAIL:</td>
            <td>
                <asp:TextBox ID="mail" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">YORUM İCERİK:</td>
            <td>
                <asp:TextBox ID="yorum" runat="server" Height="130px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">YEMEK:</td>
            <td class="auto-style21">
                <asp:TextBox ID="yemek" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style21"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="41px" Text="Onayla" Width="206px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

