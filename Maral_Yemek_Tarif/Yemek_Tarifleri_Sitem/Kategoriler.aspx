<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="Kategoriler.aspx.cs" Inherits="Kategoriler" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style18 {
            height: 25px;
            background-color: #C0C0C0;
        }
    .auto-style19 {
        text-align: right;
    }
    .auto-style20 {
        font-size: x-large;
    }
        .auto-style21 {
            text-align: left;
            width: 335px;

        }
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
            font-weight: bold;
            font-size: large;
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
                <asp:Button ID="Button2" runat="server" CssClass="auto-style26" Height="30px" OnClick="Button2_Click" Text="+" Width="30px" />
            </td>
            <td class="auto-style27">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="30px" OnClick="Button1_Click" Text="-" Width="30px" />
            </td>
            <td class="auto-style26"><strong>KATEGORİ LİSTESİ</strong></td>
        </tr>
    </table>
<asp:Panel ID="Panel1" runat="server">
    <asp:DataList ID="DataList2" runat="server" Width="447px">
        <ItemTemplate>
            <table class="auto-style13">
                <tr>
                    <td class="auto-style21">
                        <asp:Label ID="Label2" runat="server" CssClass="auto-style20" Text='<%# Eval("Kategoriad") %>'></asp:Label>
                    </td>
                    <td class="auto-style19">
                      <a href="Kategoriler.aspx?kategoriid=<%#Eval("kategoriid")%>&islem=sil">  <asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resimler/cop.png" Width="30px" /></a>
                    </td>
                    <td class="auto-style29">
                       <a href="KategoriAdminDuzenle.aspx?kategoriid=<%#Eval("Kategoriid") %>"> <asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/resimler/refresh.png" Width="30px" /></a>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
</asp:Panel>
    <asp:Panel runat="server">
        <table class="auto-style23">
            <tr>
                <td class="auto-style25">
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style26" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click" />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click" />
                </td>
                <td class="auto-style26"><strong>KATEGORİ EKLEME</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel runat="server" ID="panel2">
        <table class="auto-style13">
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style19">KATEGORİ AD:</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19">KATEGORİ ICON:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style28" Text="Ekle" Width="168px" OnClick="Button5_Click" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>

