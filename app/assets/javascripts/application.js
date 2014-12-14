// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs

//= require_tree .


$(document).ready(function(){
	$('#quiz1').click(function(){
		$(".part-two").fadeToggle();
	});
	$('#quiz2').click(function(){
		$(".part-three").fadeToggle();
	});
	$('#quiz3').click(function(){
		$(".video").fadeToggle();
	});
	$('.wrong').click(function(){
		alert('Sorry, please try again.');
	});
	//modification to the way bootstrap dropdowns work.
	//this makes them work on hover at normal rez and on click/touch on phone/tablet
	$(function () {
	  var $win = $(window);
	  $win.resize(function () {
	    if ($win.width() > 768)
	      $("flip-container").attr("data-toggle", "");
	    else
	      $("flip-container").attr("data-toggle", "dropdown");
	  }).resize();
	  $(".dropdown-menu").find("input, button").each(function () {
	    $(this).click(function (e) {
	          e.stopPropagation();
	    });
	  });
	});
}) 
