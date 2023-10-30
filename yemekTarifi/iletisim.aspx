<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="iletisim.aspx.cs" Inherits="yemekTarifi.iletisim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style9 {
        text-align: right;
    }
    .auto-style10 {
        width: 266px;
    }
    .auto-style12 {
        height: 26px;
        font-size: medium;
        color: #CC0099;
        background-color: #F6F6F6;
    }
    .auto-style14 {
        text-align: right;
        width: 266px;
    }
    .auto-style15 {
        text-align: right;
        width: 266px;
        font-size: medium;
    }
    .auto-style16 {
        background-color: #F6F6F6;
    }
        .auto-style17 {
            color: #FFCCFF;
            font-size: medium;
            font-weight: bold;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
    <tr>
        <td class="auto-style12" colspan="2"><strong>&nbsp; <span class="auto-style16">&nbsp; Mesaj Yazma Paneli</span><br class="auto-style16" />
            </strong></td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Ad Soyad: </strong></td>
        <td>
            <asp:TextBox ID="TextGonderen" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Mail Adresi: </strong></td>
        <td>
            <asp:TextBox ID="TextMail" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style14"><strong>Mesaj Konu:&nbsp; </strong></td>
        <td>
            <asp:TextBox ID="TextBaslik" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style15"><strong>Mesaj: </strong></td>
        <td>
            <asp:TextBox ID="Texticerik" runat="server" Height="50px" TextMode="MultiLine" Width="300px" CssClass="tbs"></asp:TextBox>
        </td>
    </tr>
    <tr>
        <td class="auto-style10">&nbsp;</td>
        <td class="auto-style9"><strong>
            <asp:Button ID="Button1" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" BorderStyle="Double" CssClass="auto-style17" Height="40px" OnClick="Button1_Click" Text="Gönder ^^" Width="150px" />
            </strong></td>
    </tr>
</table>
</asp:Content>
