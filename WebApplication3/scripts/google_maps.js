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
            })
            marker.setIcon("http://maps.google.com/mapfiles/ms/icons/red-dot.png")
        }
window.onload = initialize;