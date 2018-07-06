# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on "page:change", ->
  $('.btn-img').on 'click', ->
    $.ajax
      url: '/books/' + @parentElement.id + '/comments/'
      type: 'POST'
      success: (r) ->
    return
  return

