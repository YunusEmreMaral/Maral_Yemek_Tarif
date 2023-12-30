<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="TarifOneriDetayAdmin.aspx.cs" Inherits="TarifOneriDetayAdmin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style21 {
            text-align: right;
        }
        .auto-style22 {
            font-weight: bold;
        }
        .auto-style23 {
            text-align: right;
            height: 29px;
        }
        .auto-style24 {
            height: 29px;
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
             <td class="auto-style21"><strong>TARİF AD:</strong></td>
             <td>
                 <asp:TextBox ID="ad" runat="server" Width="220px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style21"><strong>MALZEME:</strong></td>
             <td>
                 <asp:TextBox ID="malzeme" runat="server" Width="220px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style21"><strong>YAPILIŞ:</strong></td>
             <td>
                 <asp:TextBox ID="yapılıs" runat="server" Height="150px" TextMode="MultiLine" Width="220px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style23"><strong>RESİM:</strong></td>
             <td class="auto-style24">
                 <asp:FileUpload ID="FileUpload1" runat="server" Width="220px" />
             </td>
         </tr>
         <tr>
             <td class="auto-style21"><strong>TARİF ÖNEREN:</strong></td>
             <td>
                 <asp:TextBox ID="oneren" runat="server" Width="220px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style21"><strong>ÖNEREN MAİL:</strong></td>
             <td>
                 <asp:TextBox ID="mail" runat="server" Width="220px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style21"><strong>KATEGORİ</strong>:</td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="220px">
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="auto-style21">&nbsp;</td>
             <td><strong>
                 <asp:Button ID="Button1" runat="server" CssClass="auto-style22" Height="41px" OnClick="Button1_Click" Text="ONAYLA" Width="227px" />
                 </strong></td>
         </tr>
     </table>
</asp:Content>

