<%@ Page Title="" Language="C#" MasterPageFile="~/Admin.Master" AutoEventWireup="true" CodeBehind="MesajlarAdmin.aspx.cs" Inherits="yemekTarifi.MesajlarAdmin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style21 {
            width: 22px;
            height: 34px;
            background-color: #EEEEEE;
        }
        .auto-style26 {
            font-weight: bold;
        }
        .auto-style20 {
            width: 54px;
            height: 34px;
            background-color: #EEEEEE;
        }
        .auto-style23 {
            height: 34px;
            background-color: #EEEEEE;
        }
        .auto-style17 {
        height: 26px;
            width: 513px;
        }
        .auto-style16 {
        width: 99px;
        text-align: right;
        height: 26px;
    }
        .auto-style27 {
            color: #000000;
            text-align: right;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <table class="auto-style10">
            <tr>
                <td class="auto-style21"><strong>
                    <asp:Button ID="Button1" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px" Text="+" Width="25px" OnClick="Button1_Click"  />
                    </strong></td>
                <td class="auto-style20"><strong>
                    <asp:Button ID="Button2" runat="server" BackColor="#FFCCFF" BorderColor="White" CssClass="auto-style26" Height="25px" Text="-" Width="25px" OnClick="Button2_Click"  />
                    </strong></td>
                <td class="auto-style23"><strong>Mesaj Listesi</strong></td>
         
            </tr>
        </table>
    </asp:Panel>
    <asp:Panel ID="Panel2" runat="server">
        <asp:Panel ID="Panel3" runat="server">
            <asp:DataList ID="DataList1" runat="server" OnSelectedIndexChanged="DataList1_SelectedIndexChanged" Width="757px">
                <ItemTemplate>
                    <table class="auto-style10">
                        <tr>
                            <td class="auto-style17">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("MesajGonderen") %>'></asp:Label>
                                &nbsp;</td>
                            <td class="auto-style27">
                                <a href="MesajlarAdminDetay.aspx?Mesajid=<%#Eval("Mesajid")%>"> <asp:Image ID="Image3" runat="server" Height="20px" ImageUrl="~/icon/Mail-Read-icon.png" /></a>
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </asp:Panel>
    </asp:Panel>
    
    
    </asp:Content>

