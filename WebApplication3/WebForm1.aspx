<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <title></title>
</head>
<body>
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
