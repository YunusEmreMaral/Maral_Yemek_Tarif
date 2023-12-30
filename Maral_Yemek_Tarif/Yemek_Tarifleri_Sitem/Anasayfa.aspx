<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Anasayfa.aspx.cs" Inherits="Anasayfa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }

        .auto-style9 {
            font-size: x-large;
            color: #FF0066;
            background-color: #FF99FF;
        }

        .auto-style10 {
            height: 39px;
            background-color: #FF99FF;
        }

        .auto-style11 {
            color: #FFFFFF;
        }

        .auto-style12 {
            font-size: large;
            color: #FFFFFF;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="445px">
        <itemtemplate>
            <table class="auto-style8">
                <tr>
                    <td class="auto-style10">
                       
                            <strong>
                                 <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid") %>">
                                <asp:Label ID="Label3" runat="server" CssClass="auto-style9" Text='<%# Eval("YemekAd") %>'></asp:Label>
                           </a> </strong></td>
                </tr>
                <tr>
                    <td><strong>Malzemeler</strong>:
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YemekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><strong>Yemek Tarifi</strong>:
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarif") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Image ID="Image3" runat="server" Height="175px" ImageUrl='<%# Eval("yemekresim") %>' Width="414px" />
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom-style: groove; border-bottom-width: thick"><strong>Tarih:
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;&nbsp;&nbsp; Puan:<asp:Label ID="Label7" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong></td>
                </tr>
            </table>
        </itemtemplate>
    </asp:DataList>
</asp:Content>

