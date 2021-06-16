// 更换头像

//1.获取点击的图片
const JheaderImageFocus=$(".header-image-focus");


//2.绑定事件
JheaderImageFocus.click(function(){
	//3.获取input  file的标签
	let  JheaderImageChoose=$(".header-image-choose");
	
	//4.触发input file标签的click事件
	JheaderImageChoose.click();
	JheaderImageChoose.change(function(){
		let file=JheaderImageChoose[0].files[0];
		let fileReader=new FileReader();
		fileReader.readAsDataURL(file);
		//监听文件读取结束后事件
		fileReader.onloadend=function(event){
			JheaderImageFocus.attr("src",event.target.result);
			let JinsureReplaceHeader=$(".insure-replace-header");
			JinsureReplaceHeader.click(function(){
				let JuserHeaderImage=$(".user-header-image");
				JuserHeaderImage.attr("src",event.target.result);
				// $.ajax({
				// 	type: "get",
				// 	url: "../",
				// 	data:JSON.stringify(,
				// 	{
				// 		"headerImage": event.target.result

				// 	}
				// })
				// 点击确定后让拟态框和遮罩层消失
				$("#alterHeaderModal").modal('hide');
			})
		}
	})
})

