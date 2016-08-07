jQuery ->

$('#course_sub_category_id').parent().hide()
  sub_categories = $('#course_sub_category_id').html()
  $('#course_category_id').change ->
    category = $('#course_category :selected').text()
    escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
    options = $(sub_categories).filter("optgroup[label='#{escaped_category}']").html()
    if options
      $('#course_sub_category_id').html(options)
      $('.sub_category_label_class').show()
      $('#course_sub_category_id').parent().show()
    else
      $('#course_subcategory_id').empty()
      $('.sub_category_label_class').hide()
      $('#course_sub_category_id').parent().hide()
