$(function() {

  updateDesserts();

  $( "#dessert-type-select" ).on('change', function() {
    updateDesserts();
  });

  function updateDesserts(){
    if ( $( "#dessert-type-select option:selected" ).text() == 'All' ){
      $( '.dessert-row' ).each(function() {
        $( this ).css('display', 'block') ;
      });
    } else {
      $( '.hidden-column' ).each(function() {
        var array = $( this ).text().split(',');
        if ( array.includes($( "#dessert-type-select option:selected" ).text()) ){
          $( this ).parent().css('display', 'block') ;
        } else {
          $( this ).parent().css('display', 'none') ;
        }
      });
    }
  }

});