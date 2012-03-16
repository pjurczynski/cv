/* Author: 
	Peter Jurczyński
*/

(function(){
	$('a.print').click( function(e) {
		window.print();
		e.preventDefault();
	})

  $('.slides-help').delay(1000).slideDown( ).click( function() {
    $(this).slideUp();
  });
})()


