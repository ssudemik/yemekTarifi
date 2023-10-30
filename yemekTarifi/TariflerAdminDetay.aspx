<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="TariflerAdminDetay.aspx.cs" Inherits="yemekTarifi.TariflerAdminDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style15 {
            width: 326px;
        }
        .auto-style16 {
            width: 326px;
            text-align: right;
        }
        .auto-style17 {
            text-align: left;
        }
        .auto-style18 {
            text-align: right;
        }
        .auto-style19 {
            font-weight: bold;
            color: #FFCCFF;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style15">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style16">Tarif Adı:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="tbs" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Malzemeler:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="tbs" Height="100px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Yapışı:</td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="tbs" Height="200px" TextMode="MultiLine" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Resim:</td>
                <td>
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="350px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Tarif Öneren İsmi:</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="tbs" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">Tarif Öneren Mail:</td>
                <td>
                    <asp:TextBox ID="TextBox5" runat="server" CssClass="tbs" Width="350px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style16">&nbsp;</td>
                <td class="auto-style18"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" CssClass="auto-style19" Height="35px" Text="Onayla" Width="90px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
</asp:Content>
