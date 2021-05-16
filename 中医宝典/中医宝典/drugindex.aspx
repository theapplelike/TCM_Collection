<%@ Page Title="" Language="C#" MasterPageFile="~/drugindex.Master" AutoEventWireup="true" CodeBehind="drugindex.aspx.cs" Inherits="中药检索.drugindex1" %>
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
            <div  class="col-sm-7 col-md-7">
                <div class="row">
                    <div class="col-sm col-md">
                        <h3>中药图谱</h3>
                        <a href="curedetail.aspx?id=1">解表药</a>|<a href="curedetail.aspx?id=2">清热药</a>|
                        <a href="curedetail.aspx?id=3">泻下药</a>|
                        <a href="curedetail.aspx?id=4">化湿药</a>|<a href="curedetail.aspx?id=5">温里药</a>|
                        <a href="curedetail.aspx?id=6">理气药</a>|
                        <a href="curedetail.aspx?id=7">消食药</a>|<a  href="curedetail.aspx?id=8">驱虫药</a>|
                        <a href="curedetail.aspx?id=9">止血药</a>|
                        <a href="curedetail.aspx?id=10">安神药</a>|<a href="curedetail.aspx?id=11">开窍药</a>|
                        <a href="curedetail.aspx?id=12">补益药</a>|
                        <a href="curedetail.aspx?id=13">收涩药</a>|<a href="curedetail.aspx?id=14">涌吐药</a>|
                        <a href="curedetail.aspx?id=15">祛风湿</a>
                    </div>
                </div>
                <div class="row" style="height:30px;"></div>
                <div class="row">
                    <div class="col-sm col-md"> 
                        <h3>常用方剂</h3>
                        <a>解表</a>|<a>清热</a>|<a>泻下</a>|
                        <a>消导</a>|<a>祛湿</a>|<a>理气</a>|
                        <a>理血</a>|<a>补益</a>|<a>固涩</a>|
                    </div>
                </div>
            </div>
            <div class="col-sm-1 col-md-1"></div>
        </div>
    </div>
</asp:Content>
