/* global Sortable*/
/* global $*/

$(function() {
  let el = document.getElementById("sortable_list");
  if (el != null) {
     Sortable.create($(el)[0]), {
       delay: 110
     };
  }
});
// onUpdate: (evt) ->
//         $.ajax
//           url: 'parent/' + $("#parent_id").val() + '/sort'
//           type: 'patch'
//           data: { from: evt.oldIndex, to: evt.newIndex }