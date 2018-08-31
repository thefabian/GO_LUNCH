import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_small")) {
  var lat = document.getElementById("map_small").dataset.lat;
  var lng = document.getElementById("map_small").dataset.lng;

  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map = new mapboxgl.Map({
  container: 'map_small',
  center: [lng, lat],
  // center: [13, 52],
  style: 'mapbox://styles/mapbox/streets-v10',
  minZoom: 13
  });

  var marker = new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);
};

export { map }
