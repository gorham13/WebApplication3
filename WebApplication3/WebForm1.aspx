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
        <div class="container">
            <h1>Мої вітання</h1>
            <div class="col-lg-8">
                <asp:Table ID="table" runat="server"></asp:Table>
            </div>
            <h2>Creating Your First Google Map Demo:</h2>
            <div id="map" class="col-lg-4" style="height:400px;">

            </div>
        </div>
    </form>
    
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkJd__q_5JakBegC_jiaiTa9gZ0QfM8O0"<!--+&callback=initMap-->
  type="text/javascript"></script>
    <!--script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script-->
    <script src="scripts/jquery-1.9.1.min.js"></script>
    <script src="scripts/bootstrap.js"></script>
    <script src="scripts/google_maps.js"></script>
</body>
</html>
