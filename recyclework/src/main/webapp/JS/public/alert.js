// 登录提示框
// 让所有提示框都hide

$(".alert").hide();
// 设置提示框显示的位置在屏幕正中间

//1.获取图片的div：id="show-image"
	var Jalert=$(".alert");
	//2.获取屏幕
	const Jwindow=$(window);
	//3.改变图片div的位置
	function changeAlertPosition(){
		let left=Jwindow.width()/2-Jalert.width()/2+"px" ;
		let top=Jwindow.height()/2-Jalert.height()/2+"px";
		Jalert.css({"left":left,"top":top});
	};
	
	changeAlertPosition()
	
	//4.当屏幕大小发生改变时候触发该事件
	Jwindow.on("resize",function(){
		changeAlertPosition()
	})
