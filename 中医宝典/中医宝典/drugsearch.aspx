<%@ Page Title="" Language="C#" MasterPageFile="~/drugindex.Master" AutoEventWireup="true" CodeBehind="drugsearch.aspx.cs" Inherits="中药检索.drugsearch" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 227px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container bg-light" style="opacity:0.97;">
        <div class="row" style="height:70px;"></div>
        <div class="col-sm col-md">
            <div class="input-group">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control inputColor" placeholder="请输入药材名称"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="搜索" CssClass="btn btn-outline-secondary btnColor" OnClick="Button1_Click"/>
            </div>
        </div>
        <div class="row" style="height:50px;">
            <div class="col-sm-1 col-md-1"></div>
            <div class="col-sm-2 col-md-2 text-center fw-bold fs-3">
                搜索排行
            </div>
            <div class="col-sm-1 col-md-1"></div>
            <div  class="col-sm-8 col-md-8 text-center fw-bold fs-3">
                搜索结果
            </div>
        </div>
        <div class="row">
            <div class="col-sm-1 col-md-1"></div>
            <div class="col-sm-2 col-md-2">
                <ul class="list-group listWidth">
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=1" class="link-danger">当归</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=2" class="link-warning">金银花</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=3" class="link-success">茯苓</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=4" class="link-secondary">板蓝根</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=5" class="link-secondary">黄精</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=6" class="link-secondary">苍术</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=7" class="link-secondary">麦冬</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=8" class="link-secondary">人参</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=9" class="link-secondary">党参</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=10" class="link-secondary">白及</a></li>
                    <li class="list-group-item listItemColor"><a href="drugdetail.aspx?id=11" class="link-secondary">三七</a></li>
                </ul>
            </div>
            <div  class="col-sm-1 col-md-1">
            </div>
            <div  class="col-sm-7 col-md-7">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT id,name, alias, traits,images FROM drug WHERE (name LIKE '%' + @name + '%') OR (alias LIKE '%' + @alias + '%') OR (traits LIKE '%' + @traits + '%')">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="name" QueryStringField="text" />
                        <asp:QueryStringParameter Name="alias" QueryStringField="text" />
                        <asp:QueryStringParameter Name="traits" QueryStringField="text" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <br />
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="1" RepeatDirection="Horizontal" DataKeyField="id">
                    <ItemTemplate>
                        <br />
                        <table style="width:100%;" class="table table-bordered">
                            <tr>
                                <td class="auto-style2">名称：<asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
                                </td>
                                <td rowspan="2">
                                    <asp:Image ID="Image1" runat="server" Height="150px" Width="150px" ImageUrl='<%# Eval("images", "{0}") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td class="auto-style2">别名：<asp:Label ID="aliasLabel" runat="server" Text='<%# Eval("alias") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">介绍：<asp:Label ID="traitsLabel" runat="server" Text='<%# Eval("traits") %>' />
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2">
                                    <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-outline-success" NavigateUrl='<%# Eval("id", "drugdetail.aspx?id={0}") %>'>点击查看详情</asp:HyperLink>
                                </td>
                            </tr>
                        </table>
                        <br />
                    </ItemTemplate>
                </asp:DataList>
            </div>
            <div class="col-sm-1 col-md-1"></div>
        </div>
    </div>
</asp:Content>
