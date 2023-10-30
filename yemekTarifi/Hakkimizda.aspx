<%@ Page Title="" Language="C#" MasterPageFile="~/Kullanici.Master" AutoEventWireup="true" CodeBehind="Hakkimizda.aspx.cs" Inherits="yemekTarifi.Hakkimizda" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style8 {
            text-align: center;
            color: #CC0099;
            font-size: large;
        }
        .auto-style10 {
            color: #000000;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p class="auto-style8">
        <strong>HAKKIMIZDA</strong></p>
    <p class="auto-style8">
        <asp:DataList ID="DataList3" runat="server">
            <ItemTemplate>
                <div class="auto-style6">
                    <asp:Label ID="Label3" runat="server" CssClass="auto-style10" Text='<%# Eval("Metin") %>'></asp:Label>
                </div>
            </ItemTemplate>
        </asp:DataList>
    </p>
    <asp:Image ID="Image1" runat="server" Height="300px" ImageUrl="~/Resimler/Blog.jpg" Width="760px" />
</asp:Content>

