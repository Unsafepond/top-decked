$(document).ready(function(){  
  $('body').delegate(".card", 'click', function(){
    var cardID = this.id;
    $('#card-id').val(cardID);
  })
});