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
});
