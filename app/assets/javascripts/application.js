// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

(function() {
  window.onload = function () {

    var options = {
      zoom: 10,
      center: new google.maps.LatLng(40.7127, -74.0059),
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    var map = new google.maps.Map(document.getElementById('map'), options);

    //Declare a variable that will hold the InfoWindow object
    var infowindow;

    //Create an array to store markers
    var markers = [];

    //Loop thru the places array
    for (var i = 0; i < $places.length; i++) {

      //Adding the markers
        var marker = new google.maps.Marker({
          position: $places[i],
          map: map,
          title: 'Place number ' + i
        });

        //Creating the event listener. It now has access to the values of i and marker as they were during its creation
        (function(i, marker) {

            google.maps.event.addListener(marker, 'click', function() {
              //Check to see if infowindow - declared a global var - already exists
              if (!infowindow) {
                // Create a new InfoWindow object
                infowindow = new google.maps.InfoWindow();
              }

              // Setting the conent of the Infowindow
              infowindow.setContent('Place number ' + i);

              //Tying the InfoWindow to the marker
              infowindow.open(map, marker);


              });


         })(i, marker);

         //Add marker to markers array
              markers.push(marker);

      } //end loop


      // Create a MarkerCluster object
      var markerclusterer = new MarkerClusterer(map, markers);

  }; //end function

})();


