import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_footer")) {
  var lat = document.getElementById("map_footer").dataset.lat;
  var lng = document.getElementById("map_footer").dataset.lng;

  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map = new mapboxgl.Map({
  container: 'map_footer',
  center: [13.391410, 52.506890],
  // center: [lng, lat],
  style: 'mapbox://styles/mapbox/streets-v10',
  minZoom: 13
  });

  var marker = new mapboxgl.Marker()
    .setLngLat([13.391410, 52.506890])
    .addTo(map);
};

export { map_footer }
