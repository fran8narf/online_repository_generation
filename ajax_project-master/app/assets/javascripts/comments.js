$(document).ready(function(){

    $("#reload-button").on("click",function(){

        $.ajax({

            url: "http://localhost:3000/comments",
            data: "",
            success: function(response){populate_ul(response)},
            error: function(){alert("success: false")},
            dataType: "json"
        });    
    });

    function populate_ul(items) {

        $("ul").empty();
        total_length = items.length;

        for (var i = 0; i < total_length; i++) {
            $("ul").append("<li>"+ items[i].author + " says: " + items[i].text + "</li>")
        }
    }

     $("#add").on("click", function(){

       var newComment = {
           author: $("#author").val(),
           text: $("#text").val()
       };
       
       $.ajax({
           type: "POST",
           url: "http://localhost:3000/comments",
           data: newComment,
           success: function(response){console.log("success: "+ response)},
           error: function(response){console.log("success: " + response)},
           dataType: "json"
       });
   });

});

	



