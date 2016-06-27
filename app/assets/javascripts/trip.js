$(document).ready(function() {
  $('#trip_source_city_id').change( function(){
    $.ajax({
      type: "POST",
      url: "/destination-cities",
      data: { source_city_id: $("#trip_source_city_id").val() }
    })
  })
});
