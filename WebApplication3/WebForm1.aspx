<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   <!-------------------------------------------------------------->
    <div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Sitename</a>
        </div>
        <center>
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Link</a>
                    </li>
                    <li><a href="#">Link</a>
                    </li>
                    <li><a href="#">Link</a>
                    </li>
                    <li><a href="#">Link</a>
                    </li>
                    <li><a href="#">Link</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a>
                            </li>
                            <li><a href="#">Another action</a>
                            </li>
                            <li><a href="#">Something else here</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" name="username" placeholder="Username">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" name="password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-default">Sign In</button>
                </form>
            </div>
        </center>
    </div>
</div>
   <!-------------------------------------------------------------->
    <form id="form1" runat="server">
        <h1>Мої вітання</h1>
    <div>
        <p>Мій курсовий проект втілює, певною мірою, ідею розумної зупинки.</p>
        <p>Дана робота буде мати таблицю автобусів які проїжджають через певну зупинку і орієнтовну кількість хвилин до прибуття наступної. Приблизне зображення таблиці показана на рис. 1.</p>
        <asp:Image runat="server" ImageUrl="~/pic.1.png" ID="image" alt="I have not idea..." />
        <p style="margin-left:150px;">Рис. 1.</p>
        <p>Також проект буде містити логування(для чого ще не придумав). Якщо користувач, який ввійшов - адміністратор, він буде мати можливість розглянути різного роду статистику.</p>
    </div>
    </form>
    <script src="scripts/bootstrap.js"></script>
</body>
</html>
