import "bootstrap";


$('body').scrollspy({ target: '#navbar-home' });

$(document).ready(function(){
  $(".category-choice").click(function(){
    $(this).toggleClass("active");
  });
});
