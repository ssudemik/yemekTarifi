<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="GununYemegiAdmin.aspx.cs" Inherits="yemekTarifi.GununYemegiAdmin" %>
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
            width: 323px;
        }
        .auto-style35 {
            color: #FFCCFF;
            font-weight: bold;
        }
        .auto-style36 {
            height: 31px;
            width: 323px;
        }
        .auto-style37 {
            height: 31px;
            text-align: left;
        }
        .auto-style38 {
            height: 30px;
            width: 334px;
        }
        .auto-style39 {
            height: 30px;
            width: 323px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px"  Text="+" Width="25px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px"  Text="-" Width="25px" OnClick="Button2_Click" />
                    </strong></td>
                <td class="auto-style23"><strong>Yemek Listesi</strong></td>
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
    <asp:DataList ID="DataList1" runat="server" Width="757px" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" >
            <ItemTemplate>
                <table class="auto-style10">
                    <tr>
                        <td class="auto-style17">
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("YemekAd") %>'></asp:Label>&nbsp;</td>
                        
                        <td class="auto-style14">
                           <a href="YemekAdminDetay.aspx?Yemekid=<%# Eval("Yemekid")%>"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/icon/Pixelmixer-Basic-Tick.64.png" /></a>
                        </td>
                    </tr>
                </table>
            </ItemTemplate>
        </asp:DataList>
        </asp:Panel>
</asp:Content>
