(()=>{
	//1.获取id为：personMessage、loveDonation、statusApply、goodsGarage、donationList这五个A标签
	const $personMessage= $("#personMessage");
	const $loveDonation= $("#loveDonation");
	const $statusApply= $("#statusApply");
	const $goodsGarage= $("#goodsGarage");
	const $donationList= $("#donationList");
	
	// //2.获取类名为index-function-implement-item的板块
	const $displays= $(".index-function-implement-donation");
	console.log($displays);
	
	
	console.log($(".index-page").height());
	
	$displays.click(function(){
		alert(123)
	})
	
	
	console.log($loveDonation);
	
	//2.给他们绑定事件
	$loveDonation.click(function(){
		// let donation= $(".index-function-implement-donation");
		// let $borther= donation.siblings(".index-function-implement-item");
		// console.log($brother);
		alert(123)
	})
	
})();