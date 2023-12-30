<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="KategoriAdminDuzenle.aspx.cs" Inherits="KategoriAdminDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            margin-left: 120px;
        }
        .auto-style22 {
            font-weight: bold;
            font-size: large;
        }
        .auto-style23 {
            text-align: left;
            margin-left: 120px;
        }
        .auto-style24 {
            text-align: right;
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
            <td class="auto-style24">KATEGORİ AD:</td>
            <td>
                <asp:TextBox ID="ad" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">ADET:</td>
            <td>
                <asp:TextBox ID="adet" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style24">RESİM:</td>
            <td class="auto-style21">
                <asp:FileUpload ID="FileUpload1" runat="server" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style23"><strong>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="36px" OnClick="Button1_Click" Text="Güncelle" Width="171px" />
                </strong></td>
        </tr>
    </table>
</asp:Content>

