jQuery ->

$('#course_sub_category_id').parent().hide()
 sub_categories = $('#course_sub_category_id').html()
 $('#course_category_id').change ->
  category = $('#course_category_id :selected').text()
  escaped_category = category.replace(/([ #;&,.+*~\':"!^$[\]()=>|\/@])/g, '\\$1')
  options = $(sub_categories).filter("optgroup[label='#{escaped_category}']").html()
  if options
   $('#course_sub_category_id').html(options)
   $('#course_sub_category_id').parent().show()
  else
   $('#course_subcategory_id').empty()
   $('#course_sub_category_id').parent().hide()
