// JavaScript Document

jQuery(document).ready(function(){

  $('.navi>li').mouseover(function(){        
	  $(this).find('.submenu').stop().slideDown(500);
  }).mouseout(function(){
	  $(this).find('.submenu').stop().slideUp(500);
  });

  $('.imgslide a:gt(0)').hide();
  setInterval(function(){
	$('.imgslide a:first-child').fadeOut()
	   .next('a').fadeIn()
	   .end().appendTo('.imgslide');},10000);

  $(function(){
   $('.tabmenu>li>a').click(function(){
	$(this).parent().addClass("active").siblings().removeClass("active");
		return false;
	  });
  });
  
  $(".notice li:first").click(function(){
	$("#modal").addClass("active");
  });
  $(".btn").click(function(){
	$("#modal").removeClass("active");
  });
	   
});

var slideIndex = 1;
showSlides(slideIndex);

function plusSlides(n) {
  showSlides(slideIndex += n);
}

function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  var captionText = document.getElementById("caption");
  if (n > slides.length) {slideIndex = 1}
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " active";
  captionText.innerHTML = dots[slideIndex-1].alt;
}