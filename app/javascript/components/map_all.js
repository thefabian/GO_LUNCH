import mapboxgl from 'mapbox-gl';

if (document.getElementById("map_all")) {
  mapboxgl.accessToken = 'pk.eyJ1IjoibWF0dGlmaXNjaGVyMSIsImEiOiJjamt3ZHI5bzMweHFjM2twM2JrdGhuZ2NwIn0.aWxD9TcyXXVSTeUCqHe4Ww';
  var map_all = new mapboxgl.Map({
  container: 'map_all',
  center: [13, 52],
  style: 'mapbox://styles/mapbox/streets-v10',
  minZoom: 5
  });
  map_all.addControl(new mapboxgl.NavigationControl());

  const profiles = document.querySelectorAll(".card-category.lat-lng");
  var num_porfiles = parseFloat(profiles.length);

  var lat_all = parseFloat(0.0);
  var lng_all = parseFloat(0.0);



  profiles.forEach((profile) => {
    var lat = parseFloat(profile.dataset.lat);
    var lng = parseFloat(profile.dataset.lng);

   if (!isNaN(lat)) {
    lat_all += lat;
    lng_all += lng;

    var marker = new mapboxgl.Marker()
    .setLngLat([lng, lat])
    .addTo(map_all);

   }else {
    num_profiles -=1;
   };
  });


  var lat_avg = lat_all/num_profiles;
  var lng_avg = lng_all/num_profiles;

  map_all.flyTo({center: [lng_avg, lat_avg], zoom: 10});
};

export { map_all }
