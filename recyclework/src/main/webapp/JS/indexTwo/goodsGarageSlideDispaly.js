// 滚轮滚动，物资滑动显示
// 1.当鼠标进入自己的物资显示(.other-row-ul)里头时候
const JmyselftGoodsDisplay=$(".other-row-ul");
var i=0;
JmyselftGoodsDisplay.mousemove(function(){
	
	// 2.当鼠标在里头的时候触发滚轮滚动事件
	$(document).off("mousewheel DOMMouseScroll");
	$(document).on('mousewheel DOMMouseScroll', function (e){
	    e.preventDefault();
	    let wheel = e.originalEvent.wheelDelta || -e.originalEvent.detail;
	    let  delta = Math.max(-1, Math.min(1, wheel) );
		
	    if(delta<0){//向下滚动
		//1.向下滚动的时候将scrollTop减少
	       // JmyselftGoodsDisplay.scrollTop( JmyselftGoodsDisplay.scrollTop()+20);
		    JmyselftGoodsDisplay.scrollTop( 20);
			console.log(1);
			
	    }else{//向上滚动
		//2.先上滚动的时候缩小图片
	        
	    }    
	});
})
