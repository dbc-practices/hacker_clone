$(document).ready(function() {

  $(".vote").on("click", function(e){
    e.preventDefault();
    var url = $(this).attr('href');
    var that = this;

    $.get(url, function (results) {
      $(that).parent().children(".vote_count").html(results);
    })

  });
});


