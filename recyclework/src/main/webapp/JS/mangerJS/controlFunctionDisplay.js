// 控制function显示
(()=>{
	//1.获取status-apply、assistance-apply、comment-judge三个a标签
	const $statusApplyA=$(".manger-side-fence .status-apply");
	const $assistanceApplyA=$(".manger-side-fence .assistance-apply");
	const $commentJudgeA=$(".manger-side-fence .comment-judge");
	$statusApplyA.click(function(){
		let $statusApplyTemplate=$(".function .status-apply ");
		$statusApplyTemplate.addClass("d-block d-flex");
		$statusApplyTemplate.siblings(".manger-item").addClass("d-none")
		$statusApplyTemplate.siblings(".manger-item").removeClass("d-block d-flex")
	})
	
	
	$assistanceApplyA.click(function(){
		let $assistanceApplyTemplate=$(".function .assistance-apply ");
		$assistanceApplyTemplate.addClass("d-block d-flex");
		$assistanceApplyTemplate.siblings(".manger-item").addClass("d-none")
		$assistanceApplyTemplate.siblings(".manger-item").removeClass("d-block d-flex")
	})
	
	
	$commentJudgeA.click(function(){
		let $commentJudgeTemplate=$(".function .comment-adjudication ");
		$commentJudgeTemplate.addClass("d-block d-flex");
		$commentJudgeTemplate.siblings(".manger-item").addClass("d-none")
		$commentJudgeTemplate.siblings(".manger-item").removeClass("d-block d-flex")
	})
})();