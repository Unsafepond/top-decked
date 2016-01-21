$(document).ready(function(){  
  $(".card").click(function(){
    var cardID = this.id;
    $('#card-id').val(cardID);
  });

  $("#uButton").click( function(){ 
    $(this).toggleClass("disabled");

    $('tr td.mana').each(function() {
        if ($(this).text().includes("{U}"))
        {
            $(this).parent().hide();
        };
    });
  });

  $("#gButton").click( function(){ 
    $(this).toggleClass("disabled");

    $('tr td.mana').each(function() {
        if ($(this).text().includes("{G}"))
        {
            $(this).parent().hide();
        };
    });
  });

  $("#rButton").click( function(){ 
    $(this).toggleClass("disabled");

    $('tr td.mana').each(function() {
        if ($(this).text().includes("{R}"))
        {
            $(this).parent().hide();
        };
    });
  });

  $("#wButton").click( function(){ 
    $(this).toggleClass("disabled");

    $('tr td.mana').each(function() {
        if ($(this).text().includes("{W}"))
        {
            $(this).parent().hide();
        };
    });
  });

  $("#bButton").click( function(){ 
    $(this).toggleClass("disabled");

    $('tr td.mana').each(function() {
        if ($(this).text().includes("{B}"))
        {
            $(this).parent().hide();
        }
    });
  });
});