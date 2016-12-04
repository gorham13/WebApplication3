function initialize() {

        var latlng = new google.maps.LatLng(50.6198579, 26.2459409);
        var options =
        {
            zoom: 15,
            center: latlng
        };
        var map = new google.maps.Map(document.getElementById('map'), options);

        var marker = new google.maps.Marker({
            position: latlng,
            map: map,
            title: 'Театральна площа'
        });
        marker.setIcon("http://maps.google.com/mapfiles/ms/icons/red-dot.png");

        $.getJSON('WebForm1.aspx/GetBusStation', function (data) {
            console.log(data);                    
            $.each(data, function (i, item) {
                console.log("ok "+item);
                var marker = new google.maps.Marker({
                    'position': new google.maps.LatLng(item.GeoLong, item.GeoLat),
                    'map': map,
                    'title': item.Name
                });
                    
                // Берем для этих маркеров синие иконки с сайта google
                marker.setIcon("http://maps.google.com/mapfiles/ms/icons/blue-dot.png");
                    
                //// Для каждого объекта добавляем доп. информацию, выводимую в отдельном окне
                //var infowindow = new google.maps.InfoWindow({
                //    content: "<div class='stationInfo'><h2>Станция " + item.PlaceName + "</h2><div><h4>Линия метро: "
                //        + item.Line + "</h4></div><div><h4>Пассажиропоток: " + item.Traffic + " млн. человек</h4></div></div>"
                // });
            });
        });
}
window.onload = initialize;