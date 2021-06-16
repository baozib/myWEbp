// 物资库输入关键字进行模糊查巡

// 1.给查询框绑定keyUp事件
$(document).on("change","#likeQuery",function(){
	// 重新赋值为一开始查询到的数据
	vm.garagesList=vm.bufferGaragesList;
	var queryKey=$(this).val();
	
	// 后期删除
	// 创建正则
		let reg=new RegExp(queryKey,"i");//i忽略大小写
	
	
	let replace=[];
	var replaceIndex=0;
	
	
	$.each(vm.garagesList,function(index,garage){
		console.log(reg.test(objectToString(garage)));
		console.log(objectToString(garage));
		if(reg.test(objectToString(garage))){
			replace[replaceIndex++]=garage;
		}
	})
	

	vm.garagesList=replace;
	console.log(replace);
	console.log(vm.garagesList);
	// 后期删除end 
	
	// ajax查询，改变VM的相对应的data
})