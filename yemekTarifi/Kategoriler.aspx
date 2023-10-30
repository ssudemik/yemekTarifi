<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="Kategoriler.aspx.cs" Inherits="yemekTarifi.Kategoriler" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style14 {
        text-align: right;
        height: 26px;
    }
    .auto-style16 {
        width: 99px;
        text-align: right;
        height: 26px;
    }
    .auto-style17 {
        height: 26px;
            width: 513px;
        }
        .auto-style20 {
            width: 54px;
            height: 34px;
            background-color: #EEEEEE;
        }
        .auto-style21 {
            width: 22px;
            height: 34px;
            background-color: #EEEEEE;
        }
        .auto-style23 {
            height: 34px;
            background-color: #EEEEEE;
        }
        .auto-style26 {
            font-weight: bold;
        }
        .auto-style29 {
            text-align: right;
        }
        .auto-style30 {
            height: 30px;
            text-align: left;
        }
        .auto-style31 {
            height: 30px;
            text-align: right;
        }
        .auto-style32 {
            width: 346px;
        }
        .auto-style34 {
            height: 30px;
            width: 346px;
        }
        .auto-style35 {
            color: #FFCCFF;
            font-weight: bold;
        }
        .auto-style36 {
            height: 31px;
            width: 346px;
        }
        .auto-style37 {
            height: 31px;
            text-align: left;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px" OnClick="Button1_Click"  Text="+" Width="25px" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px" OnClick="Button2_Click"  Text="-" Width="25px" />
                    </strong></td>
                <td class="auto-style23"><strong>Kategori Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:DataList ID="DataList1" runat="server" Width="757px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("KategoriAd") %>'></asp:Label>&nbsp;</td>
                        <td class="auto-style16">
                            
                         <a href="Kategoriler.aspx?KategoriId=<%#Eval("KategoriId")%>&islem=sil"><asp:Image ID="Image2" runat="server" Height="20px" ImageUrl="~/icon/Oxygen-Icons.org-Oxygen-Actions-edit-delete.256.png" /></a>
                        
                        </td>
                        <td class="auto-style14">
                           <a href="KategoriAdminDetay.aspx?KategoriId=<%# Eval("KategoriId")%>"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/icon/Arturo-Wibawa-Akar-Edit.512.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
    </asp:Panel>
    <asp:Panel ID="Panel3" runat="server" CssClass="auto-style27; margin-top: 15px;" >
        <table class="auto-style10">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button3" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px"  Text="+" Width="25px" OnClick="Button3_Click" />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button4" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px"  Text="-" Width="25px" OnClick="Button4_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>Kategori Ekleme</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <div class="auto-style29">
    <asp:Panel ID="Panel4" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style32">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style36"><strong>Kategori Ad:</strong></td>
                <td class="auto-style37">
                    <asp:TextBox ID="TextBox1" runat="server" Width="200px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style34"><strong>Kategori İkon:</strong></td>
                <td class="auto-style30">
                    <asp:FileUpload ID="FileUpload1" runat="server" Width="315px" />
                </td>
            </tr>
            <tr>
                <td class="auto-style34">&nbsp;</td>
                <td class="auto-style31"><strong>
                    <asp:Button ID="BtnEkle" runat="server" BackColor="#CC0099" BorderColor="#FFCCFF" CssClass="auto-style35" Height="35px"  Text="Ekle" Width="80px" OnClick="BtnEkle_Click" />
                    </strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </td>
            </tr>
        </table>
        </asp:Panel>
    </div>
</asp:Content>
