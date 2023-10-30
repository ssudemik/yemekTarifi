<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="YemekAdminDetay.aspx.cs" Inherits="yemekTarifi.YemekAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 314px;
        }
        .auto-style16 {
            width: 314px;
            text-align: right;
        }
        .auto-style36 {
        text-align: right;
        width: 436px;
    }
        .auto-style37 {
            font-weight: bold;
            color: #FFCCFF;
            background-color: #CC0099;
        }
        .auto-style38 {
            text-align: left;
        width: 436px;
    }
    .auto-style39 {
        color: #FFCCFF;
        font-weight: bold;
    }
    .auto-style40 {
        width: 436px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style10">
        <tr>
            <td class="auto-style15">&nbsp;</td>
            <td class="auto-style40">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Yemek Ad:</strong></td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox1" runat="server" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Malzemeler:</strong></td>
            <td class="auto-style38">
                <asp:TextBox ID="TextBox2" runat="server" Height="100px" TextMode="MultiLine" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Tarif:</strong></td>
            <td class="auto-style40">
                <asp:TextBox ID="TextBox3" runat="server" Height="200px" TextMode="MultiLine" Width="350px" CssClass="tbs"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style16"><strong>Kategori:</strong></td>
            <td class="auto-style40">
                <asp:DropDownList ID="DropDownList1" runat="server" Width="200px" CssClass="tbs">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style36"><strong>
                <asp:Button ID="Button1" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" CssClass="auto-style37" Height="35px" Text="Güncelle" Width="90px" OnClick="Button1_Click" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" CssClass="auto-style39" Height="35px" OnClick="Button2_Click" Text="Günün Yemeği Seç" Width="200px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                </strong></td>
        </tr>
        <tr>
            <td class="auto-style16">&nbsp;</td>
            <td class="auto-style36"></td>
        </tr>
    </table>
</asp:Content>
