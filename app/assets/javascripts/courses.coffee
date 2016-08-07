$(document).ready ->
  $('#category_id').change ->
    if $(this).val() == ''
      $('#sub_category_id').html $('<option>No sub category provided for your category</option>')
    else
      $.ajax
        type: 'GET'
        url: '/categories/get_subcategories/' + '?category_id=' + $(this).val()
        success: (data) ->
          if data.content == 'None'
            $('#sub_category_id').empty()
            $('#sub_category_id').append $('<option>No sub category provided for your category</option>')
          else
            $('#sub_category_id').empty()
            $('#sub_category_id').append $('<option>Select your Sub Category</option>')
            jQuery.each data, (i, v) ->
              $('#sub_category_id').append $('<option value="' + data[i][0] + '">' + data[i][1] + '</option>')
              return
          return
    return
  return
