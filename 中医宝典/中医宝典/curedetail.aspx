<%@ Page Title="" Language="C#" MasterPageFile="~/drugindex.Master" AutoEventWireup="true" CodeBehind="curedetail.aspx.cs" Inherits="中药检索.curedetail" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                常见药谱
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
            <div  class="col-sm-7 col-md-7" style="white-space:pre-line;">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT * FROM [cure] WHERE ([Id] = @Id)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="Id" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="Id" DataSourceID="SqlDataSource1">
                    <EditItemTemplate>
                        Id:
                        <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                        <br />
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        introduce:
                        <asp:TextBox ID="introduceTextBox" runat="server" Text='<%# Bind("introduce") %>' />
                        <br />
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="更新" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        name:
                        <asp:TextBox ID="nameTextBox" runat="server" Text='<%# Bind("name") %>' />
                        <br />
                        introduce:
                        <asp:TextBox ID="introduceTextBox" runat="server" Text='<%# Bind("introduce") %>' />
                        <br />
                        <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="插入" />
                        &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="取消" />
                    </InsertItemTemplate>
                    <ItemTemplate>
                        名称:
                        <asp:Label ID="nameLabel" runat="server" Text='<%# Bind("name") %>' />
                        介绍:
                        <asp:Label ID="introduceLabel" runat="server" Text='<%# Bind("introduce") %>' />
                    </ItemTemplate>
                </asp:FormView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" SelectCommand="SELECT [id], [name], [traits] FROM [drug] WHERE ([cureid] = @cureid)">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="cureid" QueryStringField="id" Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <asp:DataList ID="DataList1" runat="server" DataKeyField="id" DataSourceID="SqlDataSource2">
                    <ItemTemplate>
                        <table style="width:100%;" class="table table-boreded">
                            <tr>
                                <td>名称：<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("id", "drugdetail.aspx?id={0}") %>' Text='<%# Eval("name", "{0}") %>'></asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td>介绍：<asp:Label ID="traitsLabel" runat="server" Text='<%# Eval("traits") %>' />
                                </td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:DataList>
                <br />
            </div>
            <div class="col-sm-1 col-md-1"></div>
        </div>
    </div>
</asp:Content>
