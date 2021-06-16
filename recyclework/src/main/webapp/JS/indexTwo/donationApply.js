// 捐赠申请JS

var donationProveImage=null;

//1.绑定事件
$(document).on("click",".donation-prove-image",function(){
	//3.获取input  file的标签
	let  JdonationProveImageChoose=$(".donation-prove-image-choose");
	
	//4.触发input file标签的click事件
	JdonationProveImageChoose.click();
	JdonationProveImageChoose.change(function(){
		let file=JdonationProveImageChoose[0].files[0];
		let fileReader=new FileReader();
		fileReader.readAsDataURL(file);
		//监听文件读取结束后事件
		fileReader.onloadend=function(event){
			donationProveImage=event.target.result;
			$(".donation-prove-image").attr("src",event.target.result);
		}
	})
})

// 二、给确认申请绑定单击事件
$(document).on("click","#donationApplyButton",function(){

	let donationApplyMessage= $("textarea[name='donationApplyMessage']");
		let donationApplyMessageValue=donationApplyMessage.val();
	if(donationProveImage!=null  && donationApplyMessageValue!=""){
		console.log("a");
		// $.ajax({
		// 	type: "post",
		// 	url: "../",
		// 	data:JSON.stringify(,
		// 	{
		// 		"statusProveImage": statusProveImage,
		// 		"donationApplyMessage",donationApplyMessageValue
		// 	}
		// 	),
		// })
	}
	
})