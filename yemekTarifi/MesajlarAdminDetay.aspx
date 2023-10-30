<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajlarAdminDetay.aspx.cs" Inherits="yemekTarifi.MesajlarAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style17 {
            height: 110px;
        }
        .auto-style18 {
            height: 110px;
            text-align: right;
            width: 284px;
        }
        .auto-style19 {
            text-align: right;
        }
        .auto-style20 {
            width: 284px;
        }
        .auto-style21 {
            text-align: right;
            width: 284px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Mesaj Gönderen:</strong></td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" CssClass="tbs" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Başlık:</strong></td>
            <td>
                <asp:TextBox ID="TextBox3" runat="server" CssClass="tbs" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style21"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextBox4" runat="server" CssClass="tbs" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Mesaj:</strong></td>
            <td class="auto-style17">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="tbs" Height="100px" TextMode="MultiLine" Width="350px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20">&nbsp;</td>
            <td class="auto-style19">&nbsp;</td>
        </tr>
    </table>
</asp:Content>
