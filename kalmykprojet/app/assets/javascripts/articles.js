$(function(){
	// $("a.load_comments").on("click", function(e){
		//Fire some ajax.
		// $.ajax({
		// 	method: "GET",
		// 	url: this.href
		// }).done(function(response){
		// 	$("div.comments").html(response)
		// });

	//requesting HTML
	// $.get(this.href).success(function(response){
	// 	$("div.comments").html(response)
	// })

	//Requesting JSON
	// $.get(this.href).success(function(json){
	// 	var $ol = $("div.comments ol")
	// 	$ol.html("")//emptied the ol
	// 	//iterate over each comment within json
	// 	json.forEach(function(comment){
	// 	//with each comment data, append an LI to the OL with a comment content
	// 	$ol.append("<li>" + comment.content + "</li>");
	// 	})
	// })
		// load that response into the HTML of the page
		$("a.load_comments").on("click", function(e){
			$.ajax({
				url: this.href,
				dataType: 'script'
			})
			e.preventDefault();
		})
})