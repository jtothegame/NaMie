$(document).ready(function() {
  $('.user_dislike').on('click', function(e) {
    e.preventDefault();
    var goTo = this.parentElement.getAttribute("href");

    $('#feature').addClass('animated bounceOutLeft');

    setTimeout(function(){
      window.location = goTo;
    }, 300)
  })

  $('.user_like').on('click', function(e) {
    e.preventDefault();

    var goTo = this.parentElement.getAttribute("href");

    $('#feature').addClass('animated bounceOutRight');

    setTimeout(function(){
      window.location = goTo;
    }, 300)
  })

  $('.user_like').on('mouseenter', function() {
    $('.user_like').addClass('animated tada')
  })

  $('.user_like').on('mouseout', function() {
    $('.user_like').removeClass('animated tada')
  })

  $('.user_dislike').on('mouseenter', function() {
    $('.user_dislike').addClass('animated tada')
  })

  $('.user_dislike').on('mouseout', function() {
    $('.user_dislike').removeClass('animated tada')
  })
})
