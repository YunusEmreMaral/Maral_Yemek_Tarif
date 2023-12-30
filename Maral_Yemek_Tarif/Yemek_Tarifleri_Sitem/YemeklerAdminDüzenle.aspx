<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="YemeklerAdminDüzenle.aspx.cs" Inherits="YemeklerAdminDüzenle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            margin-left: 80px;
        }
        .auto-style22 {
            text-align: right;
            font-size: medium;
        }
        .auto-style24 {
            text-align: left;
            margin-left: 80px;
        }
        .auto-style25 {
            font-size: medium;
            font-weight: bold;
        }
        .auto-style23 {
            font-size: large;
            font-weight: bold;
        }
        .auto-style26 {
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
            <td class="auto-style22"><strong>YEMEK AD:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="ad" runat="server" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>MALZEMELER:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="malzeme" runat="server" Height="75px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>TARİF:</strong></td>
            <td class="auto-style21">
                <asp:TextBox ID="tarif" runat="server" Height="200px" TextMode="MultiLine" Width="250px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style22"><strong>KATEGORİ:</strong></td>
            <td class="auto-style21">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="250px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style26"><strong>YEMEK RESİM:</strong></td>
            <td class="auto-style24">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="255px" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style23" Height="33px" Text="Güncelle" Width="252px" OnClick="Button1_Click" />
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style24">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style25" Height="33px" Text="Günün Yemeği Seç" Width="250px" OnClick="Button2_Click"  />
            </td>
        </tr>
    </table>
</asp:Content>

