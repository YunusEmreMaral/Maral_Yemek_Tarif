<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YemekDetay.aspx.cs" Inherits="YemekDetay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            font-size: xx-large;
            color: #FFFFFF;
        }
        .auto-style9 {
            width: 100%;
        }
        .auto-style10 {
            font-size: x-small;
        }
        .auto-style11 {
            font-size: x-large;
        }
        .auto-style12 {
            background-color: #FFCCCC;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            font-size: x-large;
            color: #FFFFFF;
        }
        .auto-style15 {
            border: 2px solid #456879;
            border-radius: 10px;
            font-weight: bold;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:Label ID="Label3" runat="server" CssClass="auto-style14" Text="Label"></asp:Label>
    <asp:DataList runat="server" wight="700px" Width="447px" ID="Datalist2">
        <ItemTemplate>
            <table class="auto-style13">
                 <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" CssClass="auto-style11" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="border-bottom-style: inset; border-bottom-width: thin">
                    <asp:Label ID="Label5" runat="server" Text='<%# Eval("YorumIcerik") %>'></asp:Label>
                    -<asp:Label ID="Label6" runat="server" CssClass="auto-style10" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                </td>
            </tr>
            </table>
        </ItemTemplate>

    </asp:DataList>
    <div class="auto-style7">
        <strong>YORUM YAPMA PANELİ
</strong>
</div>

    <asp:Panel runat="server">
         <table>
        <tr>
            <td style="border-style: groove; border-width: thin">&nbsp;</td>
            <td style="border-style: groove; border-width: thin">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: groove; border-width: thin"><strong>Ad Soyad:;</strong></td>
            <td style="border-style: groove; border-width: thin">
                <asp:TextBox ID="ad" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: groove; border-width: thin"><strong>Mail:</strong></td>
            <td style="border-style: groove; border-width: thin">
                <asp:TextBox ID="mail" runat="server" Height="20px" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style13" style="border-style: groove; border-width: thin"><strong>Yorumuz:</strong></td>
            <td style="border-style: groove; border-width: thin">
                <asp:TextBox ID="icerik" runat="server" Height="100px" TextMode="MultiLine" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td style="border-style: groove; border-width: thin">&nbsp;</td>
            <td style="border-style: groove; border-width: thin"><strong><em>
                <asp:Button ID="Button1" runat="server" CssClass="auto-style15" OnClick="Button1_Click" Text="Yorum Yap" Width="200px" Height="47px" />
                </em></strong></td>
        </tr>
    </table>
    </asp:Panel>

</asp:Content>

