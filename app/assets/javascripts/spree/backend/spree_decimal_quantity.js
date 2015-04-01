// Placeholder manifest file.
// the installer will append this file to the app vendored assets here: vendor/assets/javascripts/spree/backend/all.js'
$(document).ready(function(){
  $('.line_item_quantity_dcm').change(function() {
    var value = $( this ).val()
    $( this ).next().val( value*10 )
  })
})
