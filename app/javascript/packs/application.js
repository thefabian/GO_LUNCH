import "bootstrap";


$('body').scrollspy({ target: '#navbar-home' });

$(document).ready(function(){
  $(".day-choice").click(function(){
    $(this).toggleClass("active");
  });
});

import { map } from '../components/map';

import { map_all } from '../components/map_all';


console.log("hello")

const button = document.querySelector(".click")
const button2 = document.querySelector(".click2")
button.addEventListener("click", (event) => {
  document.getElementById("date-container").classList.toggle("hidden")
  document.getElementById("map-container").classList.toggle("hidden")
})
button2.addEventListener("click", (event) => {
  document.getElementById("date-container").classList.toggle("hidden")
  document.getElementById("map-container").classList.toggle("hidden")
})
