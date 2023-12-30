<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="YemeklerAdmin.aspx.cs" Inherits="YemeklerAdmin" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
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
        .auto-style31 {
            height: 29px;
        }
        .auto-style32 {
            height: 29px;
            text-align: right;
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
                <asp:Button ID="Button1" runat="server" CssClass="auto-style26" Height="30px"  Text="-" Width="30px" OnClick="Button1_Click" />
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
                    <td class="auto-style19">
                      <a href="YemeklerAdmin.aspx?yemekid=<%#Eval("yemekid")%>&islem=Sil"><asp:Image ID="Image5" runat="server" Height="30px" ImageUrl="~/resimler/cop.png" Width="30px" /></a>
                    </td>
                    <td class="auto-style29">
                       <a href="YemeklerAdminDüzenle.aspx?yemekid=<%#Eval("yemekid") %>"> <asp:Image ID="Image6" runat="server" Height="30px" ImageUrl="~/resimler/refresh.png" Width="30px" /></a>
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
                    <asp:Button ID="Button3" runat="server" CssClass="auto-style26" Height="30px"  Text="+" Width="30px" OnClick="Button3_Click"  />
                </td>
                <td class="auto-style27">
                    <asp:Button ID="Button4" runat="server" CssClass="auto-style26" Height="30px"  Text="-" Width="30px" OnClick="Button4_Click"  />
                </td>
                <td class="auto-style26"><strong>YEMEK EKLEME</strong></td>
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
                <td class="auto-style32"><strong>YEMEK AD:</strong></td>
                <td class="auto-style31">
                    <asp:TextBox ID="ad" runat="server" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>MALZEMELER:</strong></td>
                <td>
                    <asp:TextBox ID="malzeme" runat="server" Height="100px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>TARİF:</strong></td>
                <td>
                    <asp:TextBox ID="tarif" runat="server" Height="300px" TextMode="MultiLine" Width="275px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>KATEGORİ:</strong></td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Width="275px">
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style19"><strong>YEMEK RESİM:&nbsp;</strong></td>
                <td class="auto-style9">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="272px" />
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="auto-style9">
                    <asp:Button ID="Button5" runat="server" CssClass="auto-style28" OnClick="Button5_Click" Text="Ekle" Width="168px" />
                </td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>



