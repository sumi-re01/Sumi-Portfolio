# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  el = document.getElementById("travel_box")
  if el != null
    sortable = Sortable.create(el,
      delay: 200,
      onUpdate: (evt) ->
        $.ajax
          url: $("#travel_id").val() + '/sort'
          type: 'patch'
          data: { from: evt.oldIndex, to: evt.newIndex }
    )
