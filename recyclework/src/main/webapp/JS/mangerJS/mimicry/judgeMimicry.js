// 裁决拟态框

// 1.获取确认裁决按钮
var JinsureJudge=$("#insureJudge");

// 2.给确认裁决按钮绑定事件
$(document).on("click",".look-comment",function(){
	
	var JcommentItem=$(this).parents("li");
	
	// 获取评语
	let comment= JcommentItem.attr("data-comment");
	// 获取分数
	let scoreStr=JcommentItem.attr("data-score");
	
	
	// 将评语和分数显示到评论拟态框中
	let JseekComment=$("#seekComment");
	JseekComment.find(".comment-content").text(comment);
	
	
	// 根据分数创建满意图标
	let scoreInt=parseInt(scoreStr);
	
	let displayScore=JseekComment.find(".display-score");
	// 将之前的图标删除
	displayScore.empty();
	
	
	
	for (let i = 0; i < scoreInt; i++) {
		displayScore.append("<li><img src=\"../images/indexImages/好评星星.png\" ></li>");
	}
	
	// 给确认按钮裁决绑定单击事件
	// 先解绑之前的单机事件
	JinsureJudge.off("click");
	// 绑定click事件
	JinsureJudge.click(function(){
		// 将选中的那一行li删除
		JcommentItem.remove();
		
		// $.ajax({
			
		// })
		
		// 将裁决拟态框和查看评论拟态框关闭
		let JjudgeMimicry=$("#judgeMimicry");
		let JseekComment=$("#seekComment")
		JjudgeMimicry.modal('hide');
		 JseekComment.modal('hide');
	})
})