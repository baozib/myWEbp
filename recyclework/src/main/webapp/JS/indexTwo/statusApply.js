//1.获取点击的图片
const JproveImage=$(".prove-image");

var statusProveImage=null;

//2.绑定事件
JproveImage.click(function(){
	//3.获取input  file的标签
	let  JproveImageChoose=$(".prove-image-choose");
	
	//4.触发input file标签的click事件
	JproveImageChoose.click();
	JproveImageChoose.change(function(){
		let file=JproveImageChoose[0].files[0];
		let fileReader=new FileReader();
		fileReader.readAsDataURL(file);
		//监听文件读取结束后事件
		fileReader.onloadend=function(event){
			statusProveImage=event.target.result;
			JproveImage.attr("src",event.target.result);
		}
	})
})

// 二、给确认申请绑定单击事件
$(document).on("click","#statusApplyButton",function(){
	// 选择的身份
	let status=$("input[name='status']:checked").val();
	
		
	if(statusProveImage!=null && status!=undefined){
		console.log("a");
		// $.ajax({
		// 	type: "post",
		// 	url: "../",
		// 	data:JSON.stringify(,
		// 	{
		// 		"status": status,
		// 		"statusProveImage": statusProveImage
		// 	}
		// 	),
		// })
	}
	
})