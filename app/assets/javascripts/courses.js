# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$('#object_subcategory_id').parent().hide()
  sub_categories = $('#object_subcategory_id').html()
  $('#object_category').change ->
    category = $('#object_category :selected').text()
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(sub_categories).filter("optgroup[label='#{escaped_category}']").html()
    if options
      $('#object_subcategory_id').html(options)
      $('.subcategory_label_class').show()
      $('#object_subcategory_id').parent().show()
    else
      $('#object_subcategory_id').empty()
      $('.subcategory_label_class').hide()
      $('#object_subcategory_id').parent().hide()
