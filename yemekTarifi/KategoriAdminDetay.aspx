<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="KategoriAdminDetay.aspx.cs" Inherits="yemekTarifi.KategoriAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            height: 10px;
            text-align: left;
        }
        .auto-style16 {
            height: 10px;
            text-align: right;
            width: 330px;
        }
        .auto-style17 {
            text-align: right;
        }
        .auto-style18 {
            text-align: left;
        }
        .auto-style19 {
            width: 330px;
        }
        .auto-style20 {
            text-align: right;
            width: 330px;
        }
        .auto-style21 {
            font-weight: bold;
            color: #FFCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Kategori Ad :</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" Width="200px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style20"><strong>Adet :</strong></td>
            <td class="auto-style18">
                <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox1_TextChanged" Width="200px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Resim :</strong></td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" runat="server" Width="315px" CssClass="tbs" />
            </td>
        </tr>
        <tr>
            <td class="auto-style19">&nbsp;</td>
            <td class="auto-style17"><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" CssClass="auto-style21" Height="35px" Text="Güncelle" Width="90px" OnClick="Button1_Click" />
                </strong></td>
        </tr>
    </table>
</asp:Content>
