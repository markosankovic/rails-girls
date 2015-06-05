# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(document).ready ->
  $('#ideaModal').on 'show.bs.modal', (event) ->
    link = $(event.relatedTarget)
    console.log(link)
    title = link.data('title')
    src = link.data('src')
    modal = $(this)
    modal.find('.modal-title').text(title)
    modal.find('.modal-img').attr('src', src)
