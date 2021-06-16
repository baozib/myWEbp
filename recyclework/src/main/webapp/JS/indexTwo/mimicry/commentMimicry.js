// 点击评论跳出拟态框
	// 一、评分
	// 1.获取comment-score
		var $commentScore = $(".comment-score");

		//2.获取它底下的img元素
		var $imgs = $commentScore.find("li>img");

	//给星星绑定事件 
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

	// 二、点击提交评论
	// 1.点击评论按钮
	$(document).on("click",".comment-button",function(){
		// 2.让所有的星星都是未评分状态
		
			var $commentScore = $(".comment-score");
		
			
			var $imgs = $commentScore.find("li>img");
			console.log($imgs.length);
			for(i=0;i<$imgs.length;i++){
				$imgs.eq(i).attr("src", "../images/indexImages/差评星星.png");
			}
		
		
		let JcommentItem=$(this).parents("li");
		
		// 1.获取提交评论按钮
		var JsubmitCommentButton=$("#submitCommentButton");
		
		// 2.绑定单击事件
		JsubmitCommentButton.on("click",function(){
			JcommentItem.remove();
			$("#comment").modal('hide');
			
			// 发送ajax后台处理
			
		})
		
	})
	
	




