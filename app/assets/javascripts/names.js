$(document).ready(function() {
  $('.user_dislike').on('click', function() {
    $('#feature').addClass('animated bounceOutLeft');
  })

  $('.user_like').on('click', function() {
    $('#feature').addClass('animated bounceOutRight');
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
