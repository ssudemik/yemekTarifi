<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YorumAdminDetay.aspx.cs" Inherits="yemekTarifi.YorumAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            text-align: right;
        }
        .auto-style16 {
            font-weight: bold;
            color: #FFCCFF;
        }
        .auto-style17 {
            width: 302px;
        }
        .auto-style18 {
            text-align: right;
            width: 302px;
        }
        .auto-style19 {
            text-align: right;
            width: 302px;
            height: 109px;
        }
        .auto-style20 {
            height: 109px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Ad Soyad:</strong></td>
            <td>
                <asp:TextBox ID="TextAd" runat="server" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextMail" runat="server" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style19"><strong>İçerik:</strong></td>
            <td class="auto-style20">
                <asp:TextBox ID="Texticerik" runat="server" Height="100px" OnTextChanged="Texticerik_TextChanged" TextMode="MultiLine" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style18"><strong>Yemek:</strong></td>
            <td>
                <asp:TextBox ID="TextYemek" runat="server" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style17">&nbsp;</td>
            <td class="auto-style15">
                <asp:Button ID="BtnOnayla" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" CssClass="auto-style16" Height="35px" Text="Onayla" Width="90px" OnClick="BtnOnayla_Click" />
            </td>
        </tr>
    </table>
</asp:Content>
