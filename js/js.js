$('.sl').slick({
	fade: true,
});

$('.sl2').slick({
 
  slidesToShow: 5,
  initialSlide: 1,
  centerMode: true,
  centerPadding: '60px',
  asNavFor: '.sl',
  focusOnSelect: true,
  arrows: false,
  responsive: [
   
    {
      breakpoint: 800,
      settings: {
        slidesToShow: 4
      }
    },
    {
      breakpoint: 640,
      settings: {
        slidesToShow: 3
      }
    },
    {
      breakpoint: 480,
      settings: {
        dots: false,
        slidesToShow: 3,
        centerMode: false
      }
    }
  ]
});