<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="TarifOner.aspx.cs" Inherits="yemekTarifi.TarifOner" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        ..auto-style6 {
            text-align: center;
        }
        .auto-style9 {
            text-align: center;
            height: 29px;
        }
        .auto-style10 {
            height: 29px;
        }
        .auto-style11 {
            font-weight: bold;
            font-style: italic;
            color: #FFCCFF;
            font-size: medium;
        }
        .auto-style12 {
            text-align: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1">
        <tr>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Ad: </strong></td>
            <td>
                <asp:TextBox ID="TextTarifAd" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Malzemeler:</strong></td>
            <td>
                <asp:TextBox ID="TextMalzemeler" runat="server" Height="80px" Width="300px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style9"><strong>Yapılış:</strong></td>
            <td class="auto-style10">
                <asp:TextBox ID="TextYapilis" runat="server" Height="200px" Width="300px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Resim:</strong></td>
            <td>
                <asp:FileUpload ID="FileUploadResim" runat="server" Width="300px" CssClass="tbs" />
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Tarif Öneren:</strong></td>
            <td>
                <asp:TextBox ID="TextTarifOneren" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style6"><strong>Mail Adresi:</strong></td>
            <td>
                <asp:TextBox ID="TextMailAdresi" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>&nbsp;</td>
            <td class="auto-style12"><strong><em>
                <asp:Button ID="BtnTarif" runat="server" BackColor="#CC3399" BorderColor="#FFCCFF" BorderStyle="Double" CssClass="auto-style11" Height="40px" Text="Öner ^^" Width="150px" />
                </em></strong></td>
        </tr>
    </table>
</asp:Content>
