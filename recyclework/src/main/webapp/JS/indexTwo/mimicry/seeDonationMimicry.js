// 捐赠列表查看捐赠详情拟态框

// 绑定捐赠详情按钮单击事件
$(document).on("click",".see-donation-information-button",function(){
	// 1.获取父标签li
	let JdonationItem=$(this).parents(".donation-item");
	
	//2.获取li标签的data-donation-information属性
	 let dataDonationInformation=JdonationItem.attr("data-donation-information");
	 
	 
	 //3.获取li标签的data-donation-image属性
	  let dataDonationImage=JdonationItem.attr("data-donation-image");
	  
	   //3.获取li标签的data-donation-to属性
	  let	dataDonationTo=JdonationItem.attr("data-donation-to");
	  // 4.获取查看捐赠信息拟态框的card
	  let Jcard=$("#lookDonationInformation .card")
	  Jcard.find("img").attr("src",dataDonationImage);
	  Jcard.find(".card-title").text(dataDonationTo);
	   Jcard.find(".card-text ").text(dataDonationInformation);
})