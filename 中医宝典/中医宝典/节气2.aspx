<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="节气2.aspx.cs" Inherits="中医宝典.节气2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link rel="stylesheet" href="Content/bootstrap.min.css" />
    <script type="text/javascript" src="Scripts/bootstrap.min.js"></script>
    <style>
        body{
            background-image: url("../images/背景2.jpg");
            background-position: center 0;
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <a class="navbar-brand" href="#">宝典</a>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav">
                    <li><a href="#">24节气</a></li>
                    <li><a href="#">药材检索</a></li>
                    <li><a href="#">中医古籍</a></li>
                    <li><a href="#">论坛</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row" style="height:70px;">
    </div>
    <div class="container">
        <div class="row">
            <div class="col-xs-6 col-md-6">
                <img src="Images/节气/立春.jpg" class="img-thumbnail" />
            </div>
            <div class="col-md-6">
                <h1 class="text-primary">立春</h1>
                <h3 class="lead">晴日暖风生麦气，绿阴幽草胜花时。 ——王安石《初夏即事》</h3>
                <h3 class="lead">《黄帝内经•四气调神大论》有云：“夏三月，此谓蕃秀；天地气交，万物华实。”夏三月包括从立夏开始到大暑六个节气。立夏是告别春天，夏天开始的意思，此时节，天气逐渐炎热，阳气旺盛，万物繁茂。</h3>
            </div>
        </div>
        <br />
        <div class="row">
            <div class="panel panel-success">
                <div class="panel-heading">
                    <h3 class="panel-title ">物候志</h3>
                </div>
                <div class="panel-body">
                    立夏时节，古有三候“蝼蝈鸣，蚯蚓出，王瓜生”，有趣的是这三物都是中药，蝼蝈就是蝼蛄，性味咸寒，能利水通便，可用治水肿、瘰疬恶疮；蚯蚓，中药称地龙，有清热平肝、止喘通络之效；王瓜又名土瓜，张仲景《金匮要略》中就有土瓜根散，用治带下经水不利。
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-info">
                <div class="panel-heading">
                    <h3 class="panel-title ">民俗</h3>
                </div>
                <div class="panel-body">
                    江南地区民间有立夏日吃蛋拄心，吃笋拄腿，吃豌豆拄眼，“拄”有支撑之意，其目的是出于祈求心、腿、眼等重要部位健康无恙，防止生病，顺利度过炎夏的愿望。
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel-warning">
                <div class="panel-heading">
                    <h3 class="panel-title ">起居</h3>
                </div>
                <div class="panel-body">
                    宜静心安神，晚睡早起，充分养阳，午睡片刻，放松身心。<br />忌熬夜伤神，心火上炎。
                </div>
            </div>
        </div>
        <div class="row">
            <div class="panel panel panel-danger">
                <div class="panel-heading">
                    <h3 class="panel-title ">饮食</h3>
                </div>
                <div class="panel-body">
                    宜：以易消化的清淡食物为主，立夏常服西洋参、茯苓、白术、山药等补气养心健脾之品。<br />忌：高盐高脂、辛辣油腻。
                </div>
            </div>
        </div>
    </div>
</body>
</html>
