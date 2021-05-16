<%@ Page Title="" Language="C#" MasterPageFile="~/drugadd.Master" AutoEventWireup="true" CodeBehind="drugadd.aspx.cs" Inherits="中药检索.drugadd1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 819px;
        }
        .auto-style6 {
            width: 136px;
        }
        .auto-style7 {
            width: 137px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [id], [name], [sort], [origin], [images] FROM [drug]"></asp:SqlDataSource>
    <br />
    <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            <table class="auto-style2 table table-hover">
                <tr>
                    <td class="auto-style6"><asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    </td>
                    <td class="auto-style6"><asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                    </td>
                    <td class="auto-style6"><asp:Label ID="sortLabel" runat="server" Text='<%# Eval("sort") %>' />
                    </td>
                    <td class="auto-style7"><asp:Image ID="Image1" runat="server" Height="50px" ImageUrl='<%# Eval("images", "{0}") %>' Width="50px" />
                    </td>
                    <td class="auto-style7">
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# bind("id","drugedit.aspx?id={0}") %>'>编辑</asp:HyperLink>
                    </td>
                </tr>
            </table>
<br />
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
