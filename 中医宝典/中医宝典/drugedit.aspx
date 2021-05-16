<%@ Page Title="" Language="C#" MasterPageFile="~/drugadd.Master" AutoEventWireup="true" CodeBehind="drugedit.aspx.cs" Inherits="中药检索.drugedit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            --bs-table-bg: transparent;
            --bs-table-striped-color: #212529;
            --bs-table-striped-bg: rgba(0, 0, 0, 0.05);
            --bs-table-active-color: #212529;
            --bs-table-active-bg: rgba(0, 0, 0, 0.1);
            --bs-table-hover-color: #212529;
            --bs-table-hover-bg: rgba(0, 0, 0, 0.075);
            margin-bottom: 1rem;
            color: #212529;
            vertical-align: top;
            border-color: #dee2e6;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" DeleteCommand="DELETE FROM [drug] WHERE [id] = @id" InsertCommand="INSERT INTO [drug] ([name], [sort], [alias], [avaParts], [traits], [origin], [harvest], [xingweiguijing], [features], [usage], [images], [cureid]) VALUES (@name, @sort, @alias, @avaParts, @traits, @origin, @harvest, @xingweiguijing, @features, @usage, @images, @cureid)" SelectCommand="SELECT id AS 编号, name AS 名称, sort AS 类别, alias AS 别名, avaParts AS 药用部位, traits AS 药用性状, origin AS 产地, harvest AS 收采加工, xingweiguijing AS 性味归经, features AS 功能主治, usage AS 用法用量, images AS 图片, cureid FROM drug WHERE (id = @id)" UpdateCommand="UPDATE [drug] SET [name] = @name, [sort] = @sort, [alias] = @alias, [avaParts] = @avaParts, [traits] = @traits, [origin] = @origin, [harvest] = @harvest, [xingweiguijing] = @xingweiguijing, [features] = @features, [usage] = @usage, [images] = @images, [cureid] = @cureid WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="sort" Type="String" />
            <asp:Parameter Name="alias" Type="String" />
            <asp:Parameter Name="avaParts" Type="String" />
            <asp:Parameter Name="traits" Type="String" />
            <asp:Parameter Name="origin" Type="String" />
            <asp:Parameter Name="harvest" Type="String" />
            <asp:Parameter Name="xingweiguijing" Type="String" />
            <asp:Parameter Name="features" Type="String" />
            <asp:Parameter Name="usage" Type="String" />
            <asp:Parameter Name="images" Type="String" />
            <asp:Parameter Name="cureid" Type="Int32" />
        </InsertParameters>
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter Name="sort" Type="String" />
            <asp:Parameter Name="alias" Type="String" />
            <asp:Parameter Name="avaParts" Type="String" />
            <asp:Parameter Name="traits" Type="String" />
            <asp:Parameter Name="origin" Type="String" />
            <asp:Parameter Name="harvest" Type="String" />
            <asp:Parameter Name="xingweiguijing" Type="String" />
            <asp:Parameter Name="features" Type="String" />
            <asp:Parameter Name="usage" Type="String" />
            <asp:Parameter Name="images" Type="String" />
            <asp:Parameter Name="cureid" Type="Int32" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <br />
    <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CssClass="auto-style2" DataKeyNames="编号" DataSourceID="SqlDataSource1" Height="50px" Width="100%">
        <Fields>
            <asp:BoundField DataField="编号" HeaderText="编号" InsertVisible="False" ReadOnly="True" SortExpression="编号" />
            <asp:BoundField DataField="名称" HeaderText="名称" SortExpression="名称" />
            <asp:BoundField DataField="类别" HeaderText="类别" SortExpression="类别" />
            <asp:BoundField DataField="别名" HeaderText="别名" SortExpression="别名" />
            <asp:BoundField DataField="药用部位" HeaderText="药用部位" SortExpression="药用部位" />
            <asp:BoundField DataField="药用性状" HeaderText="药用性状" SortExpression="药用性状" />
            <asp:BoundField DataField="产地" HeaderText="产地" SortExpression="产地" />
            <asp:BoundField DataField="收采加工" HeaderText="收采加工" SortExpression="收采加工" />
            <asp:BoundField DataField="性味归经" HeaderText="性味归经" SortExpression="性味归经" />
            <asp:BoundField DataField="功能主治" HeaderText="功能主治" SortExpression="功能主治" />
            <asp:BoundField DataField="用法用量" HeaderText="用法用量" SortExpression="用法用量" />
            <asp:BoundField DataField="图片" HeaderText="图片" SortExpression="图片" />
            <asp:BoundField DataField="cureid" HeaderText="cureid" SortExpression="cureid" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>

</asp:Content>
