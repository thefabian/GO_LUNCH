import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_all")) {
  var lat = document.getElementById("map_all").dataset.lat;
  var lng = document.getElementById("map_all").dataset.lng;

  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map = new mapboxgl.Map({
    container: 'map_all',
    center: [lng, lat],
    offsetWidth: 1000,
    offsetHeight: 1000,
    // center: [13, 52],

    style: 'mapbox://styles/mapbox/streets-v10',
    minZoom: 13
  });


  var marker = new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map);


  const button = document.querySelector(".click")
  const button2 = document.querySelector(".click2")
  button.addEventListener("click", (event) => {
    document.getElementById("date-container").classList.toggle("hidden")
    document.getElementById("map-container").classList.toggle("hidden")
    map.resize();
  })
  button2.addEventListener("click", (event) => {
    document.getElementById("date-container").classList.toggle("hidden")
    document.getElementById("map-container").classList.toggle("hidden")
  })

};

export { map_all }
