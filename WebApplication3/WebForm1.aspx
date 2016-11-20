<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
        <div class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="#">Sitename</a>
                </div>
                <div class="navbar-collapse collapse" id="navbar-main">
                    <div class="navbar-form navbar-right" role="search" id="sign_in_form">
                        <div class="form-group">
                            <input type="text" class="form-control" name="username" placeholder="Username" id="Text1" runat="server"/>
                        </div>
                        <div class="form-group">
                            <input type="text" class="form-control" name="password" placeholder="Password" id="Text2" runat="server"/>
                        </div>
                        <button type="submit" class="btn btn-default" id="Button1" runat="server">Sign In</button>
                    </div>
                </div>
            </div>
        </div><br /><br />
        <h1>Мої вітання</h1>
        <div style="width:70%; float:left">
            <p>Мій курсовий проект втілює, певною мірою, ідею розумної зупинки.</p>
            <p>Дана робота буде мати таблицю автобусів які проїжджають через певну зупинку і орієнтовну кількість хвилин до прибуття наступної. Приблизне зображення таблиці показана на рис. 1.</p>
            <asp:Image runat="server" ImageUrl="~/pic.1.png" ID="image" alt="I have not idea..." />
            <p style="margin-left:150px;">Рис. 1.</p>
            <p>Також проект буде містити логування(для чого ще не придумав). Якщо користувач, який ввійшов - адміністратор, він буде мати можливість розглянути різного роду статистику.</p>
        </div>
       <h2>Creating Your First Google Map Demo:</h2>
        <div id ="map"   style="width: 304px; top: 68px; left: 172px; position: absolute; height: 238px">
        
        </div>
    </form>
    <script type ="text/javascript">
        function initialize() {
            var latlng = new google.maps.LatLng(-34.397, 150.644);
            var options =
            {
                zoom: 15,
                center: new google.maps.LatLng(50.6083811, 26.2580379),
                mapTypeId: google.maps.MapTypeId.ROADMAP,
                mapTypeControl: true,
                mapTypeControlOptions:
                {
                    style: google.maps.MapTypeControlStyle.DROPDOWN_MENU,
                    poistion: google.maps.ControlPosition.TOP_RIGHT,
                    mapTypeIds: [google.maps.MapTypeId.ROADMAP,
                      google.maps.MapTypeId.TERRAIN,
                      google.maps.MapTypeId.HYBRID,
                      google.maps.MapTypeId.SATELLITE]
                },
                navigationControl: true,
                navigationControlOptions:
                {
                    style: google.maps.NavigationControlStyle.ZOOM_PAN
                },
                scaleControl: true,
                disableDoubleClickZoom: true,
                draggable: false,
                streetViewControl: true,
                draggableCursor: 'move'
            };
            var map = new google.maps.Map(document.getElementById("map"), options);
        }
        window.onload = initialize;
    </script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkJd__q_5JakBegC_jiaiTa9gZ0QfM8O0&callback=initMap"
  type="text/javascript"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script src="scripts/bootstrap.js"></script>
</body>
</html>
