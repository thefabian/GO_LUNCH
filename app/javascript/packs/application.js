import "bootstrap";


$('body').scrollspy({ target: '#navbar-home' });

$(document).ready(function(){
  $(".day-choice").click(function(){
    $(this).toggleClass("active");
  });
});

import { map } from '../components/map';

import { map_all } from '../components/map_all';

import { map_footer } from '../components/map_footer';


console.log("hello")

