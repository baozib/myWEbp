// 物资库点击删除物资按钮
// 1.获取按钮,事件委托,因为点击添加库存有动态生成库存
$(document).on("click",".delete-myself-goods-button",function(){
	let deleteItem=$(this).parents(".goods-item");
	// $.ajax({
	// 	type: "post",
	// 	url:"../",
	// 	data: JSON.stringify({
	// 		"deleteGarageID": deleteItem
	// 	})
	// })
	
	let dataGarageNumber=deleteItem.attr("data-garage-number");
	console.log(dataGarageNumber);
	$.each(vm.garagesList,function(index,garage){
		
		if(garage.garageNumber==dataGarageNumber){
			vm.garagesList.splice(index,1);
		}
	})
	
})