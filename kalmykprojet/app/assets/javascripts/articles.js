//Loading Comments via AJAX - Replaced by Remote True

// $(function(){
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
// 		$("a.load_comments").on("click", function(e){
// 			$.ajax({
// 				url: this.href,
// 				dataType: 'script'
// 			})
// 			e.preventDefault();
// 		})
// })


//Submit Comments via AJAX - Soon to be replaced by remote true
// $(function(){
// 	$("#new_comment").on("submit", function(e){
// 		url = this.action
// 		console.log(url)
// 		data = {
// 			'authenticity_token': $("input[name='authenticity_token']").val(),
// 			'comment': {
// 				'content': $("#comment_content").val()
// 			}
// 		};

//         low level
		// $.ajax({
		// 	type: ($("input[name='_method']").val() || this.method),
		// 	url: this.action,
		// 	data: $(this).serialize();,
		// 	success: function(response){
		// 		$("#comment_content").val("");
		// 		var $ol = $("div.comments ol")
		// 		$ol.append(response);
		// 	}
		// });
// 		e.preventDefault();
// 	})
// });

// notes about <%= link_to "Load Comments", article_comments_path(@article), :class => "load_comments", remote: true %>
// so we commented out whole this file for abstract way
// :remote => true when we say that link is remote 
// you by definition saying 
// when someone click on this link rails will authomatically add clickevent 
// and followed ajax request asking for more javascript code
// which lead to this url article_comments_path(@article)
// which will render this index.js.erb(comments folder)
// and so we dont need to write client side code

// this called remote true patern




// Submit Comments via AJAX -Soon to be replaced by remote true
// $(function(){
// 	$("#new_comment").on("submit", function(e){
// 		// we need the URL to submit the POST request too
// 		// we need the form data
// 	// low level
// 	$.ajax({
// 		type: "POST",
// 		url: this.action,
// 		data: $(this).serialize();,
// 		success: function(response){
// 			$("#comment_content").val("");
// 			var $ol = $("div.comments ol")
// 			$ol.append(response);
// 			}
// 		});
// 		e.preventDefault();
// 	})
// })
