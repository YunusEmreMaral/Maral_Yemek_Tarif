<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="GununYemegiAdmin.aspx.cs" Inherits="GununYemegiAdmin" %>

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
        .auto-style21 {
            text-align: left;
            width: 335px;

        }
        .auto-style19 {
        text-align: right;
    }
        .auto-style29 {
            text-align: right;
            margin-left: 40px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
    <table class="auto-style23">
        <tr>
            <td class="auto-style25">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click" />
            </td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="30px"  Text="-" Width="30px" OnClick="Button1_Click"  />
            </td>
            <td class="auto-style26"><strong>YEMEK LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style20" Text='<%# Eval("yemekad") %>'></asp:Label>
                    </td>
                    <td class="auto-style19"><a href='YemeklerAdminDüzenle.aspx?yemekid=<%#Eval("yemekid") %>'>
                        <asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/resimler/vecteezy_star_1189165.png" Width="30px" />
                        </a></td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
        </asp:Panel>

</asp:Content>

