// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require turbolinks
//= require bxslider
//= require bootstrap-sprockets
//= require underscore
//= require gmaps/google
//= require jquery-smooth-scroll
//= require cocoon
//= require magnific-popup
//= require froala_editor.min.js
//= require languages/ru.js
//= require plugins/char_counter.min.js
//= require plugins/code_beautifier.min.js
//= require plugins/code_view.min.js
//= require plugins/colors.min.js
//= require plugins/emoticons.min.js
//= require plugins/file.min.js
//= require plugins/font_family.min.js
//= require plugins/font_size.min.js
//= require plugins/fullscreen.min.js
//= require plugins/image.min.js
//= require plugins/image_manager.min.js
//= require plugins/link.min.js
//= require plugins/lists.min.js
//= require plugins/paragraph_format.min.js
//= require plugins/paragraph_style.min.js
//= require plugins/quote.min.js
//= require plugins/save.min.js
//= require plugins/table.min.js
//= require plugins/url.min.js
//= require plugins/video.min.js
//= require_tree .


// Init Froala Editor
$(function() {
  var modules = ['paragraphFormat', 'fontFamily', 'fontSize', '|', 'bold', 'italic', 'underline', 'strikeThrough', 'subscript', 'superscript', '|', 'color', 'emoticons', '|', 'align', 'formatOL', 'formatUL', 'outdent', 'indent', '|', 'insertHR', 'insertLink', 'insertImage', 'insertVideo', 'insertFile', 'insertTable', '|', 'undo', 'redo', 'clearFormatting', 'fullscreen', 'html'];
  $('.froala').froalaEditor({
    language: 'en',
    toolbarButtons: modules,
    toolbarButtonsMD: modules,
    toolbarButtonsSM: modules,
    toolbarButtonsXS: modules
  })
});


$(document).ready(function() {
	
	// Toggle nav
	$('.nav-toggle').click(function(){
		$('#main-nav').toggleClass('active');
		$('.nav-toggle').toggleClass('active');
		$('.first').toggleClass('active');
		$('.second').toggleClass('active');
		$('.third').toggleClass('active');
	});
	
	
	// Scroll to top
	$(window).scroll(function() {
		if ($(this).scrollTop() > 300) {
			$('#to-top').fadeIn('fast');
		} else {
			$('#to-top').fadeOut('fast');
		}
	});
	
	$('#to-top').click(function() {
		$('html, body').animate({scrollTop: 0}, 400);
	});
  
  
  // Initialaze Google map
  handler = Gmaps.build('Google');
  handler.buildMap({
      provider: {
        disableDefaultUI: false,
        scrollwheel: false
        // pass in other Google Maps API options here
      },
      internal: {
        id: 'google-map'
      }
    },
    function(){
      markers = handler.addMarkers([
        {
          "lat": -8.721265,
          "lng": 115.170634
        }
      ]);
      handler.bounds.extendWith(markers);
      handler.fitMapToBounds();
      handler.getMap().setZoom(19);
    }
  );
  

  // And a bottle of rum!
	$( "a:contains('nlicensed')" ).closest('div').remove();
  
  
  // Initialize bxslider
	$('.bxslider').bxSlider({
		auto:($(".bxslider > li").length > 1) ? true: false,
		autoHover: true
	});
  
  
  // Remove last HR
//  $('#main-content').find('hr').last().remove();
  $('#sidebar').find('hr').last().remove();
  
  
  // Remove extra p from froala
  $('#main-content').find('p:empty').remove();	
  
  
  // Initialize Smooth Scroll
  $('a.scroll').smoothScroll();
  
  
  // Initialize Magnific Popup
	$('.image-popup-fit').magnificPopup({
		type: 'image',
		closeOnContentClick: true,
		mainClass: 'mfp-fade',
		removalDelay: 300,
    zoom: {
      enabled: true,
      duration: 300,
      easing: 'ease-in-out'
    },
		image: {
			verticalFit: true,
			titleSrc: function(item) {
				return item.el.attr('title');
			}
		},
		gallery: {
			enabled: true, // set to true to enable gallery
			preload: [0,2], // read about this option in next Lazy-loading section
			navigateByImgClick: true,
			arrowMarkup: '<button type="button" class="mfp-arrow mfp-arrow-%dir%"></button>', // markup of an arrow button
			tCounter: '%curr% / %total%' // markup of counter
		}
	});
  

});