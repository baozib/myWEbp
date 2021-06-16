(()=>{
	//获取id为donationApply、loveDonation、personalInformation、statusApply、goodsGarage、donationList这几个li
	const JdonationApply=$("#donationApply");
	const JloveDonation=$("#loveDonation");
	const JpersonalInformation=$("#personalInformation");
	const JstatusApply=$("#statusApply");
	const JgoodsGarage=$("#goodsGarage");
	const JdonationList=$("#donationList");
	
	// 捐赠申请
	JdonationApply.click(function(){
	    let  JdonationApplyTemplate=$(".donation-apply-template");
		JdonationApplyTemplate.addClass("d-block");
		JdonationApplyTemplate.removeClass("d-none");
		let Jbrother= JdonationApplyTemplate.siblings(".function-template");
		Jbrother.addClass("d-none");
		Jbrother.removeClass("d-block");
	})
	
	// 爱心捐赠
	JloveDonation.click(function(){
	    let  JdonationTemplate=$(".donation-template");
		JdonationTemplate.addClass("d-block");
		JdonationTemplate.removeClass("d-none");
		let Jbrother= JdonationTemplate.siblings(".function-template");
		Jbrother.addClass("d-none");
		Jbrother.removeClass("d-block");
	})
	
	// 个人信息
	JpersonalInformation.click(function(){
	    let  JpersonalInformationTemplate=$(".personal-information-template");
		JpersonalInformationTemplate.addClass("d-block");
		JpersonalInformationTemplate.removeClass("d-none");
		let Jbrother= JpersonalInformationTemplate.siblings(".function-template");
		Jbrother.addClass("d-none");
		Jbrother.removeClass("d-block");
	})
	
	// 身份申请
	JstatusApply.click(function(){
	    let  JstatusApplyTemplate=$(".status-apply-template");
		JstatusApplyTemplate.addClass("d-block");
		JstatusApplyTemplate.removeClass("d-none");
		let Jbrother= JstatusApplyTemplate.siblings(".function-template");
		Jbrother.addClass("d-none");
		Jbrother.removeClass("d-block");
	})
	
	// 物资库
	JgoodsGarage.click(function(){
	    let  JgoodsGarageTemplate=$(".goods-garage-template");
		JgoodsGarageTemplate.addClass("d-block");
		JgoodsGarageTemplate.removeClass("d-none");
		let Jbrother= JgoodsGarageTemplate.siblings(".function-template");
		Jbrother.addClass("d-none");
		Jbrother.removeClass("d-block");
	})
	
	// 捐赠列表
	JdonationList.click(function(){
	    let  JdonationlistTemplate=$(".donation-list-template");
		JdonationlistTemplate.addClass("d-block");
		JdonationlistTemplate.removeClass("d-none");
		let Jbrother= JdonationlistTemplate.siblings(".function-template");
		Jbrother.addClass("d-none");
		Jbrother.removeClass("d-block");
	})
})();