import "bootstrap";


$('body').scrollspy({ target: '#navbar-home' });

$(document).ready(function(){
  $(".day-choice").click(function(){
    $(this).toggleClass("active");
  });
});
