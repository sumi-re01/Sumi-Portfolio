/* global Sortable*/
/* global $ */

$(function() {
  let el = document.getElementById("sortable_list");
  if (el != null) {
    var sortable = Sortable.create(el, {
       handle: "#bar",
       delay: 150,
       onUpdate: function (evt) {
        $.ajax({
          url: 'travel/' + $("#travel_id").val() + '/sort',
          type: 'PATCH',
          data: { from: evt.oldIndex, to: evt.newIndex }
        });
        console.log("1");
      }
     });
  }
});