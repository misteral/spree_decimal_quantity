// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/frontend/all.js'
$(document).ready(function(){
  $('#quantity_dcm').change(function() {
    var value = $( this ).val()
    $('#quantity').val( value*10 )
  })
  $('.line_item_quantity_dcm').change(function() {
    var value = $( this ).val()
    $( this ).next().val( value*10 )
  })
})
