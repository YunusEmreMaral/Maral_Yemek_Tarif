<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="TarifOner.aspx.cs" Inherits="TarifOner" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style10 {
            font-weight: bold;
            font-size: large;
            margin-top: 0px;
            background-color: #FFFFFF;
        }
        .auto-style11 {
            text-align: left;
            background-color: #ce7171;
        }
        .auto-style13 {
            text-align: left;
            background-color: #ce7171;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style8">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td>Tarif Ad:</td>
            <td>
                <asp:TextBox ID="txtad" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Malzemeler:</td>
            <td>
                <asp:TextBox ID="txtmalzeme" runat="server" Height="80px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Yapılış:</td>
            <td>
                <asp:TextBox ID="txtyap" runat="server" Height="150px" TextMode="MultiLine" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Resim:</td>
            <td>
                <asp:FileUpload ID="flersim" runat="server" Width="250px" CssClass="tb5" />
            </td>
        </tr>
        <tr>
            <td>Tarif Öneren:</td>
            <td>
                <asp:TextBox ID="txtoneren" runat="server" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Mail Adresi:</td>
            <td>
                <asp:TextBox ID="txtmail" runat="server" TextMode="Email" Width="250px" CssClass="tb5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style13"><strong><em>
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderStyle="None"  Height="31px" Text="Tarif Öner" Width="255px" OnClick="Button1_Click" CssClass="auto-style10" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>

