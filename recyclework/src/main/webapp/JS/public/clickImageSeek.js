// 点击图片查看JS
(()=>{
	//大事件一、调整图片显示位置
	//1.获取图片的div：id="show-image"
	const $showImage=$("#show-image");
	//2.获取屏幕
	const $window=$(window);
	//3.改变图片div的位置
	function changeShowImageFun(){
		let left=$window.width()/2-$showImage.width()/2+"px" ;
		let top=$window.height()/2-$showImage.height()/2+"px";
		$showImage.css({"left":left,"top":top});
	};
	
	changeShowImageFun();
	
	//4.当屏幕大小发生改变时候触发该事件
	$window.on("resize",function(){
		changeShowImageFun();
	})
	
	// 大事件二、点击图片时时候将图片放大显示出来
	
	//1.获取需要查看的图片对象
	const $seekImages= $(".seek-image");
	//2.给它们绑定单击事件
	$(document).on("click",".seek-image",function(){
		//3.获取当前点击图片对象
		let $this= $(this);
		//4.获取遮罩层
		let $imageMask=$(".image-mask");
		//5.当点击查看图片时，让mask显示出来并且让show-image里头的image的src显示的是自己的src
		$imageMask.addClass("d-block");
		
		//6.每次显示图片的时候都要调整大小并且调整位置
		$showImage.width("600px");
		$showImage.height("400px");
		changeShowImageFun();
		$showImage.children("img").attr("src",$this.attr("src"));
		$showImage.addClass("d-block");
		
		
		
		//7.当点击imageMask时候将遮罩层和查看图片给隐藏起来
		$imageMask.click(function(){
			$(this).removeClass("d-block");
			$showImage.removeClass("d-block")
		})
		
		
		//大事件三、当查看图片有d-block类名的时候将它放大或缩小
		$(document).off("mousewheel DOMMouseScroll");
		
		$(document).on('mousewheel DOMMouseScroll', onMouseScroll);
		function onMouseScroll(e){
		    e.preventDefault();
		    let wheel = e.originalEvent.wheelDelta || -e.originalEvent.detail;
		    let  delta = Math.max(-1, Math.min(1, wheel) );
			let lock=false;
			if($showImage.hasClass("d-block")){
				lock=true;
			}
		    if(delta<0){//向下滚动
			//1.向下滚动的时候放大图片
		        if(lock){
					$showImage.width($showImage.width()+20);
					$showImage.height($showImage.height()+20);
					changeShowImageFun();
				}
				
		    }else{//向上滚动
			//2.先上滚动的时候缩小图片
		        $showImage.width($showImage.width()-20);
		        $showImage.height($showImage.height()-20);
		        changeShowImageFun();
		    }    
		}
		
	})
	// $seekImages.click()
	
	
	
	
})();