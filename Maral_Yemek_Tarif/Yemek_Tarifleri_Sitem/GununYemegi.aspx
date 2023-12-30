<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GununYemegi.aspx.cs" Inherits="GununYemegi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            height: 24px;
        }
        .auto-style10 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:DataList ID="DataList2" runat="server" Width="446px">
            <ItemTemplate>
                <table class="auto-style8">
                    <tr>
                        <td class="auto-style3"><strong>
                            <asp:Label ID="Label8" runat="server" CssClass="auto-style7" Text='<%# Eval("yemekad") %>'></asp:Label>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;<strong>Malzemeler</strong>:
                            <asp:Label ID="Label9" runat="server" Text='<%# Eval("yemekmalzeme") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td><strong>Tarif</strong>:<asp:Label ID="Label10" runat="server" Text='<%# Eval("yemektarif") %>'></asp:Label>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <asp:Image ID="Image2" runat="server" Height="153px" Width="300px" ImageUrl='<%# Eval("yemekresim") %>' />
                        </td>
                    </tr>
                    <tr>
                        <td><strong><em>&nbsp;</em><table class="auto-style8">
                            <tr>
                                <td><strong>Puan</strong>:<asp:Label ID="Label11" runat="server" Text='<%# Eval("yemekPuan") %>'></asp:Label>
                                    &nbsp;</td>
                                <td class="auto-style10"><strong><em>Eklenme Tarihi </em></strong>:
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("yemekTarih") %>'></asp:Label>
                                </td>
                            </tr>
                            </table>
                            </strong></td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Content>

