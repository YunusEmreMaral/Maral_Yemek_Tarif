<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="HakkımızdaAdmin.aspx.cs" Inherits="HakkımızdaAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .auto-style23 {
            width: 100%;
            height: 44px;
        }
        .auto-style25 {
            width: 34px;
        }
        .auto-style26 {
            font-size: large;
        }
        .auto-style27 {
            width: 36px;
        }
        .auto-style28 {
            font-size: large;
            width: 365px;
        }
        .auto-style29 {
            font-weight: bold;
            font-size: large;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


    <table class="auto-style23">
        <tr>
            <td class="auto-style25">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click1"  />
            </td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="30px"  Text="-" Width="30px" OnClick="Button1_Click1"  />
            </td>
            <td class="auto-style28"><strong>HAKKIMIZDA PANELİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style13">
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Height="200px" TextMode="MultiLine" Width="431px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td><strong>
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style29" Height="38px" Text="Güncelle" Width="434px" OnClick="Button3_Click" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>

</asp:Content>

