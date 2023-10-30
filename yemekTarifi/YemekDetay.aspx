<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="YemekDetay.aspx.cs" Inherits="yemekTarifi.YemekDetay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            color: #CC0099;
        }
        .auto-style8 {
            font-size: large;
        }
        .auto-style9 {
            background-color: #F8F8F8;
            font-size: small;
            text-align: left;
        }
        .auto-style10 {
            height: 26px;
        }
        .auto-style11 {
            font-size: small;
            text-align: right;
        }
        .auto-style12 {
            height: 26px;
            font-size: small;
            text-align: right;
        }
        .auto-style13 {
            height: 26px;
            text-align: right;
        }
        .auto-style14 {
            color: #FFCCFF;
            font-weight: bold;
            font-size: medium;
            background-color: #CC0099;
        }
        .auto-style15 {
            color: #CC0099;
        }
        .auto-style16 {
            text-align: left;
        }
        .auto-style17 {
            height: 26px;
            text-align: left;
        }
        .auto-style18 {
            color: #000000;
            font-size: x-small;
        }
        .auto-style19 {
            text-align: center;
            color: #CC0099;
            font-size: large;
        }
        .auto-style20 {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong>
    <asp:Label ID="Label3" runat="server" CssClass="auto-style19" Text="Label"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:DataList ID="DataList2" runat="server" Width="754px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" CssClass="auto-style8" Text='<%# Eval("YorumAdSoyad") %>'></asp:Label>
                    </td>
                </tr>
                </strong>
                </strong>
                </strong>
                <tr>
                    <td style="border-bottom-style: dashed; border-bottom-width: medium; border-bottom-color: #FFFFFF">
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("Yorumicerik") %>' CssClass="auto-style20"></asp:Label>
                        <strong>&nbsp;-
                        <asp:Label ID="Label6" runat="server" CssClass="auto-style18" Text='<%# Eval("YorumTarih") %>'></asp:Label>
                        </strong>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>

    <div class="auto-style9"> <strong>
        <br />
        <span class="auto-style15">Yorum Yapma Paneli</span></strong></div>
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style11"><strong>
                    <br />
                    Ad Soyad:</strong></td>
                <td class="auto-style16">
                    <asp:TextBox ID="TextBox1" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Mail:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox3" runat="server" Width="300px" CssClass="tbs"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style12"><strong>Yorumunuz:</strong></td>
                <td class="auto-style17">
                    <asp:TextBox ID="TextBox2" runat="server" Height="50px" TextMode="MultiLine" Width="300px" CssClass="tbs"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style10">&nbsp;</td>
                <td class="auto-style13"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#CC3399" BorderColor="#FFCCFF" BorderStyle="Double" CssClass="auto-style14" Height="40px" OnClick="Button1_Click" Text="Gönder ^^" Width="150px" />
                    </strong></td>
            </tr>
        </table>
    </asp:Panel>
    

    </strong></asp:Content>
