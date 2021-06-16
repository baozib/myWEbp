// 捐赠拟态框

// 1.全选
const JdonationAllSelect= $(".donation-all-select");
JdonationAllSelect.click(function(){
	let JstockItem= $(".stock-item");
	JstockItem.children("input[name='ensure-donation']").prop("checked",true);
	
})

// 2.反选
const JdonationAgainstSelect= $(".donation-against-select");
JdonationAgainstSelect.click(function(){
	let JstockItem= $(".stock-item");
	let JensureDonationInput=JstockItem.children("input[name='ensure-donation']");
	for(i=0;i<JensureDonationInput.length;i++){
		let item=JensureDonationInput.eq(i);
		if(item.prop("checked")){
			item.prop("checked",false);
		}else{
			item.prop("checked",true);
		}
	}
})

// 3.取消全选
const JdonationCancerAllSelect= $(".donation-cancer-all-select");
JdonationCancerAllSelect.click(function(){
	let JstockItem= $(".stock-item");
	JstockItem.children("input[name='ensure-donation']").prop("checked",false);
})

// 4.确认捐赠
const JinsureDonation= $(".insure-donation");
JinsureDonation.click(function(){
	
	// 未捐赠的库存资源
	let notGaragesList=[];
	// 未捐赠的库存资源下标
	let notGarageIndex=0;
	
	//确认捐赠后将选择捐赠的那一li删除掉
	let JstockItem= $(".stock-item");
	let JensureDonationInput=JstockItem.children("input[name='ensure-donation']");
	for(i=0;i<JensureDonationInput.length;i++){
		let item=JensureDonationInput.eq(i);
		let donationLi=item.parent("li");
		let dataGarageNumber=donationLi.attr("data-garage-number");
		
		// 确认要捐赠的物资
		if(item.prop("checked")){
			
			// $.ajax({
			// 	type: "get",
			// 	url: "../",
			// 	data: "dataGarageNumber:"+dataGarageNumber;
			// })
			
		}else{//未被删除的
			$.each(vm.garagesList,function(index,garage){
				if(garage.garageNumber==dataGarageNumber){
					notGaragesList[notGarageIndex++]=garage;;
				}
			})
		}
	}
	
	vm.garagesList=notGaragesList;
	
	$("#donationPop").modal('hide');
})

//5.点击爱心捐赠中的捐赠按钮的时候让之前的选项全部未选中
const JwantDonationButton=$(".want-donation-button");
JwantDonationButton.click(function(){
	let JstockItem= $(".stock-item");
	JstockItem.children("input[name='ensure-donation']").prop("checked",false);
	
	// 获取捐赠拟态框
	let JdonationMimicry=$("#donationPop");
	// 找到捐赠拟态框中的物资显示ul
	let JgaragesShow=JdonationMimicry.find(".modal-body .show-stock");
	
	// 清除拟态框的缓存重新载入库存资源列表
	JgaragesShow.children("li").remove();
	
	// 根据VM中的garagesList生成li
	$.each(vm.garagesList,function(index,garage){
		JgaragesShow.append(
		"<li class=\"stock-item w-90 d-flex h-10 \" data-garage-number="+garage.garageNumber+">\n" +
		                "\t\t\t\t\t\t\t\t<p>"+garage.type+"</p>\n" +
		                "\t\t\t\t\t\t\t\t<img class=\"seek-image\" src="+garage.woodsImg+">\n" +
		                "\t\t\t\t\t\t\t\t<input type=\"checkbox\" name=\"ensure-donation\" id=\"\" value=\"\" />\n" +
		                "\t\t\t\t\t\t\t</li>"
		)
	})
})


