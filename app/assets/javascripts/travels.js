/* global Sortable*/
/* global $ */

$(function() {
  let el = document.getElementById("sortable_list");
  if (el != null) {
    let sortable = Sortable.create(el, {
       handle: "#bar",
       delay: 150,
       onUpdate: function (evt) {
         console.log("1");
        $.ajax({
          url: 'travel/' + $("#travel_id").val() + '/sort',
          type: 'PATCH',
          data: { from: evt.oldIndex, to: evt.newIndex }
        });
      }
     });
  }
});