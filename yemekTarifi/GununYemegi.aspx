<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="GununYemegi.aspx.cs" Inherits="yemekTarifi.GununYemegi" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style5 {
            color: #CC0099;
            font-size: x-large;
        }
        .auto-style8 {
        color: #CC0099;
    }
    .auto-style12 {
        text-align: center;
        width: 739px;
    }
    .auto-style13 {
        width: 739px;
    }
        .auto-style14 {
            text-align: right;
        }
        .auto-style15 {
            text-align: left;
        }
        .auto-style16 {
            width: 164%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList2" runat="server" style="margin-right: 77px">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Label ID="Label9" runat="server" CssClass="auto-style5" Text='<%# Eval("YemekAd") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>
                        <span class="auto-style8">Malzemeler :</span>
                        <asp:Label ID="Label10" runat="server" Text='<%# Eval("YmekMalzeme") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style13"><strong>Tarif<span class="auto-style8"> :</span>
                        <asp:Label ID="Label11" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style12"><strong>
                        <asp:Image ID="Image1" runat="server" Height="219px" Width="446px" ImageUrl="~/Resimler/lazanya.jpg" />
                        </strong></td>
                </tr>
                <tr>
                    <td class="auto-style13">
                        <table class="auto-style1">
                            <tr>
                                <td class="auto-style15"><strong><span class="auto-style8">Puan</span> <span class="auto-style8">:</span>
                                    <asp:Label ID="Label12" runat="server" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                                    </strong></td>
                                <td class="auto-style14"><strong><span class="auto-style8">Tarih :</span> <em>
                                    <asp:Label ID="Label13" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                                    </em></strong></td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style13">&nbsp;</td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <div _designerregion="0">
    </div>
</asp:Content>
