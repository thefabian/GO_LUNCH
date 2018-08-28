import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_all")) {
  var lat = document.getElementById("map_all").dataset.lat;
  var lng = document.getElementById("map_all").dataset.lng;

  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map = new mapboxgl.Map({
  container: 'map_all',
  center: [lng, lat],
  // center: [13, 52],
  style: 'mapbox://styles/mapbox/streets-v10',
  Zoom: 6
  });

  var marker = new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);
};

export { map_all }
