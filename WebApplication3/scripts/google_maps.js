function initialize() {

        var latlng = new google.maps.LatLng(50.6198579, 26.2459409);
        var options =
        {
            zoom: 15,
            center: latlng
        };
        var map = new google.maps.Map(document.getElementById('map'), options);
        console.log("ok1");
        $.ajax({
            type: "POST",
            url: "WebForm1.aspx/GetBusStation",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                $.each(data, function (i, item) {
                    var my_obj = JSON.parse(item);
                    $.each(my_obj, function (index, my_object) {
                        console.log(my_object);
                        var marker = new google.maps.Marker({
                            position : new google.maps.LatLng(my_object.GeoLat, my_object.GeoLong),
                            map : map,
                            title : my_object.Name
                        });
                        marker.setIcon("http://maps.google.com/mapfiles/ms/icons/blue-dot.png");
                    });
                });
            }
        });
        //$.getJSON('WebForm1.aspx/GetBusStation1', function (data) {
        //    console.log("ok"+data);                    
        //    $.each(data, function (i, item) {
        //        console.log("ok "+item);
        //        var marker = new google.maps.Marker({
        //            'position': new google.maps.LatLng(item.GeoLong, item.GeoLat),
        //            'map': map,
        //            'title': item.Name
        //        });
        //            
        //        // Берем для этих маркеров синие иконки с сайта google
        //        marker.setIcon("http://maps.google.com/mapfiles/ms/icons/blue-dot.png");
        //            
        //        //// Для каждого объекта добавляем доп. информацию, выводимую в отдельном окне
        //        //var infowindow = new google.maps.InfoWindow({
        //        //    content: "<div class='stationInfo'><h2>Станция " + item.PlaceName + "</h2><div><h4>Линия метро: "
        //        //        + item.Line + "</h4></div><div><h4>Пассажиропоток: " + item.Traffic + " млн. человек</h4></div></div>"
        //        // });
        //    });
        //});
        console.log("ok2");
}
window.onload = initialize;