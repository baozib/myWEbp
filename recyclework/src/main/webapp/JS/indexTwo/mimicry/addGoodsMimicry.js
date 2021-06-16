// 添加库存拟态框

$(document).on("click", "#addGarageButton", function() {
	$("#addGoodsImage").attr("src", "../images/indexImages/焦点.png");
})

//1.获取点击的图片
var JaddGoodsImage = $("#addGoodsImage");



//2.绑定事件
JaddGoodsImage.click(function() {
	// 设置图片为默认图片


	//3.获取input  file的标签
	let JaddGoodsInput = $("#addGoodsInput");

	//4.触发input file标签的click事件
	JaddGoodsInput.click();
	JaddGoodsInput.change(function() {
		let file = JaddGoodsInput[0].files[0];
		let fileReader = new FileReader();
		fileReader.readAsDataURL(file);
		//监听文件读取结束后事件
		fileReader.onloadend = function(event) {
			JaddGoodsImage.attr("src", event.target.result);
			let JinsureAddGoodsButton = $("#insureAddGoodsButton");

			// 解绑之前绑定的click方法，要不然会执行多次
			JinsureAddGoodsButton.off("click");
			JinsureAddGoodsButton.click(function() {

				// 获取select的选项
				let options = $("#selectGoodsType option:selected");

				var mydate = new Date();
				var today = "" + mydate.getFullYear() + "/";
				today += (mydate.getMonth() + 1) + "/";
				today += mydate.getDate();

				// 添加li
				// $("#myselfGarage").prepend("<li class=\"goods-item   row h-20 \">\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t<div class=\"type col-3\">\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t" + options.text() + "\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t</div>\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t<div class=\"physical-picture col-3\">\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t<img class=\"seek-image w-100 h-100\"\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t\tsrc=\"" + event.target.result + "\">\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t</div>\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t<div class=\"nearly-update-time col-3\">\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t" + today + "\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t</div>\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t<div class=\"goods-operation col-3\">\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t<button class=\"delete-myself-goods-button btn btn-danger\"\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t\ttype=\"button\">删除</button>\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t\t\n" +
				// 	"\t\t\t\t\t\t\t\t\t\t</div>\n" +
				// 	"\t\t\t\t\t\t\t\t\t</li>")

				// 先garagesList中添加一个数据
				vm.bufferGaragesList.unshift({
					"garageNumber": "7",
					"type": options.text(),
					"woodsImg": event.target.result,
					"time": today
				})
				
				vm.garagesList=vm.bufferGaragesList;

				// $.ajax({
				// 	type: "post",
				// 	url: "",
				// 	data: JSON.stringify({
				// 		"garageNumber": "7",
				// 		"type": options.text(),
				// 		"woodsImg": event.target.result,
				// 		"time": today
				// 	}),
				// })

				// 点击确定后让拟态框和遮罩层消失
				$("#addGarageMimicry").modal('hide');
			})
		}
	})
})
