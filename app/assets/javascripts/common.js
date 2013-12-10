/*
//= require jquery
//= require jquery_ujs
//= require underscore
//= require handlebars
//= require backbone
//= require require
//= require jquery.smooth-scroll.min
//= require bootstrap.min
//= require bootswatch
//= require bsa
//= require app
//= require jquery.themepunch.plugins.min
//= require jquery.themepunch.revolution.min
//= require jquery.gritter.min
*/
$(document).ready(function() {
    console.log('common.js');
    $(".username").focus(function() {
        $(".user-icon").css("left","-48px");
    });
    $(".username").blur(function() {
        $(".user-icon").css("left","0px");
    });

    $(".password").focus(function() {
        $(".pass-icon").css("left","-48px");
    });
    $(".password").blur(function() {
        $(".pass-icon").css("left","0px");
    });

    App.init();

   $('body .navbar-default').mouseenter(function() {
       $(this).animate({
           zoom: "+=10%"
       }, 200);
   });
    $('body .navbar-default').mouseleave(function() {
        $(this).animate({
            zoom: "-=10%"
        }, 200);
    });

});
