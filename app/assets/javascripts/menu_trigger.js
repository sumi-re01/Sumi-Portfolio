/* global $ */
$(function() {
  $('#menu_trigger').on('click', function(event) {
    $('#side__navigation').fadeToggle();
    event.preventDefault();
  });
});

$(function() {
  $('#close_menu').on('click', function(event) {
    $('#side__navigation').fadeOut();
    event.preventDefault();
  });
});
