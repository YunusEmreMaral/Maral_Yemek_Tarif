<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="TarifOnerAdmin.aspx.cs" Inherits="TarifOnerAdmin" %>

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
        .auto-style30 {
            width: 700px;
            height: 20px;
            font-size: x-large;
        }
        .auto-style19 {
        text-align: right;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table class="auto-style23">
        <tr>
            <td class="auto-style25">
                <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Height="30px"  Text="+" Width="30px" OnClick="Button2_Click"      />
            </td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="30px" Text="-" Width="30px" OnClick="Button1_Click"    />
            </td>
            <td class="auto-style26"><strong>ONAYSIZ TARİF LİSTESİ</strong></td>
        </tr>
    </table>
    <asp:Panel ID="Panel1" runat="server">
        <asp:DataList ID="DataList2" runat="server" Width="447px">
            <ItemTemplate>
                <table class="auto-style13">
                    <tr>
                        <td class="auto-style21">
                            <asp:Label ID="Label2" runat="server" CssClass="auto-style30" Text='<%# Eval("tarifad") %>'></asp:Label>
                        </td>
                        <td class="auto-style19">
                    <a href="TarifOneriDetayAdmin.aspx?tarifid=<%#Eval("tarifid") %>"><asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/resimler/ascı png.png" Width="30px" /></a>                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
    <table class="auto-style23">
    <tr>
        <td class="auto-style25">
            <asp:Button ID="Button3" runat="server" CssClass="auto-style26" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"      />
        </td>
        <td class="auto-style27">
            <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Height="30px" Text="-" Width="30px" OnClick="Button4_Click"    />
        </td>
        <td class="auto-style26"><strong>ONAYLI TARİF LİSTESİ</strong></td>
    </tr>
</table>
<asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label1" runat="server" CssClass="auto-style30" Text='<%# Eval("tarifad") %>'></asp:Label>
                    </td>
                    <td class="auto-style19">
                <a href="TarifOneriDetayAdmin.aspx?tarifid=<%#Eval("tarifid") %>"><asp:Image ID="Image1" runat="server" Height="30px" ImageUrl="~/resimler/ascı png.png" Width="30px" /></a>                        </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    </asp:Panel>
    </asp:Content>

