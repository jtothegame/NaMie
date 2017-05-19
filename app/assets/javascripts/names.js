$(document).ready(function() {
  $('.user_dislike').on('click', function() {
    $('#feature').addClass('animated bounceOutLeft');
  })

  $('.user_like').on('click', function() {
    $('#feature').addClass('animated bounceOutRight');
  })
})
