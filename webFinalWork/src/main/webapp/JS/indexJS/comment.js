$(() => {

	// 1.获取comment-score
		var $commentScore = $(".comment-score");

		//2.获取它底下的li元素
		var $imgs = $commentScore.find("li>img");

	$("body").on("click", ".comment-score li>img", function() {

		// console.log(parseInt($(this).attr("data-index")));
		// 1.获取comment-score
		var $commentScore = $(".comment-score");

		//2.获取它底下的li元素
		var $imgs = $commentScore.find("li>img");

		// for(j = 0; j < $imgs.length; j++) {
		// 	$imgs.eq(j).attr("src", "../images/indexImages/差评星星.png");
		// }

		for (j = 0; j <= parseInt($(this).attr("data-index")); j++) {
			$imgs.eq(j).attr("src", "../images/indexImages/好评星星.png");
		}
		for (j = parseInt($(this).attr("data-index")) + 1; j < $imgs.length; j++) {
			$imgs.eq(j).attr("src", "../images/indexImages/差评星星.png");
		}
	})



});
