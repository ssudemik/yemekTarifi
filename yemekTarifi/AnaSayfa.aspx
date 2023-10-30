<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="AnaSayfa.aspx.cs" Inherits="yemekTarifi.AnaSayfa" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style6 {
            text-align: center;
        }
        .auto-style7 {
            color: #CC0099;
        }
        .auto-style8 {
            color: #FF66CC;
        }
        .auto-style10 {
            text-align: justify;
        }
        .auto-style11 {
            font-size: medium;
        }
        .auto-style12 {
            text-align: center;
            color: #CC0099;
            font-size: large;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="auto-style10">
    
    <asp:DataList ID="DataList2" runat="server">
        <ItemTemplate>
            <table class="auto-style1">
                <tr>
                    <td><strong>

              <a href="YemekDetay.aspx?Yemekid=<%#Eval("Yemekid")%>"><asp:Label ID="Label3" runat="server" CssClass="auto-style12" Text='<%# Eval("YemekAd") %>'></asp:Label> </a> 
                       
                        </strong></td>

                </tr>
                <tr>
                    <td><strong><span class="auto-style8">Malzemeler</span><span class="auto-style7">:</span></strong>
                        <asp:Label ID="Label4" runat="server" Text='<%# Eval("YmekMalzeme") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td><span class="auto-style8"><strong>Yemek Tarifi:</strong></span>
                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("YemekTarifi") %>'></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong><span class="auto-style8">Eklenme Tarihi:</span><span class="auto-style7"> </span></strong>
                        <asp:Label ID="Label6" runat="server" Text='<%# Eval("YemekTarih") %>'></asp:Label>
                        &nbsp;- <span class="auto-style8"><strong>Puanı:</strong></span> <em>
                        <strong>
                        <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text='<%# Eval("YemekPuan") %>'></asp:Label>
                        </strong>
                        </em></td>
                </tr>
                <tr>
                    <td style="border-color: #FFFFFF; border-bottom-style: dashed; border-bottom-width: thick;">&nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    
    </div>
    
</asp:Content>
