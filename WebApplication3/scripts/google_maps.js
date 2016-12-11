function initialize() {

        var latlng = new google.maps.LatLng(50.6198579, 26.2459409);
        var options =
        {
            zoom: 15,
            center: latlng
        };
        var tmp1;
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
                        var marker = new google.maps.Marker({
                            position : new google.maps.LatLng(my_object.GeoLat, my_object.GeoLong),
                            map : map,
                            title : my_object.Name
                        });
                        marker.setIcon("http://maps.google.com/mapfiles/ms/icons/blue-dot.png");

                        google.maps.event.addListener(marker, 'click', function () {
                            if (tmp1 != null)
                                tmp1.setIcon("http://maps.google.com/mapfiles/ms/icons/blue-dot.png");
                            tmp1 = marker;
                            marker.setIcon("http://maps.google.com/mapfiles/ms/icons/red-dot.png");
                            $.ajax({
                                type: "POST",
                                url: "WebForm1.aspx/GetGeneralTable",
                                data: marker.title,
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success: function (data) {
                                    console.log("table" + data);
                                    var rows = "";
                                    $.each(data, function (index, obj) {
                                        console.log("table" + obj);
                                        rows += "<tr><td>" + obj + "</td></tr>";
                                    });
                                    $(rows).appendTo('#table');
                                }
                            })
                        });
                    });
                });
            }
        });
}
window.onload = initialize;