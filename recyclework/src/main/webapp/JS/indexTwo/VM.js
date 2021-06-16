
	
	// 公共数据
	// const store = new Vuex.Store({
	// 	// state相当于date
	// 	state:{
	// 		person: new person(),
	// 		donationArr: [],
	// 		garageArr: [],
	// 	},
		
	// 	mutations: {
	// 		initPerson:function(state,jsonData){
	// 			state.person.headerPath=jsonData["headerPath"];
	// 			state.person.name=jsonData["name"];
	// 			state.person.password=jsonData["password"];
	// 			state.person.email=jsonData["email"];
	// 			state.person.birthday=jsonData["birthday"];
	// 			state.person.phone=jsonData["phone"];
	// 			state.person.sex=jsonData["sex"];
	// 			state.person.personalStatus=jsonData["personalStatus"];
				
	// 		},
			
	// 		initDonationList: function(state,donationList){
	// 			$.each(donationList,function(index,donationInformation){
	// 					state.donationArr[index]=donationInformation;
	// 			})
	// 		},
			
			
	// 		initGarageList: function(state,garageList){
	// 			$.each(garageList,function(index,garageInformation){
	// 					state.garageArr[index]=garageInformation;
	// 			})
	// 		}
			
	// 	}
	// })
	
	
	
	
	var vm = new Vue({ 
		el: "#indexPage",
		created(){

			// 计算捐赠页数
			this.computeDonaitonTotalPage();

			// 获取用户信息
			this.getPersonInformation();
			
			// 获取物资库信息
			this.getGaragesList();
			
			// 获取捐赠列表信息
			this.getDonationsList();
		},
		data: {
			// 用户信息绑定
			person: new person(),
			// 显示更改用户信息条件
			changeMessage:true,
			// 显示查看用户信息条件
			showMessage:false,
			// 如果身份是爱心人士那么isGood为true，否则为false
			isLover: false,
			// 时候是困难人士
			isPoor:true,
			// 模拟爱心捐赠内容
			arr: arr,
			// 爱心捐赠总共有多少页
			totalPage: 1,
			// 爱心捐赠当前页数，初始化为1
			currentPage: 1,
			// 爱心捐赠页面单个页面显示个数
			pageSize: 3,
			// 爱心捐赠当前页面显示内容
			currentData: [],
			// 爱心捐赠总有几页标签
			donationButtons:[],
			// 物资库数据
			garagesList:[],
			// 用户缓存一开始加载的库存列表数据
			bufferGaragesList:[],
			// 捐赠列表数据
			donationsList:[],
			
		},

		
		methods: {
			// initState(){
			// 	$.getJSON("../json/personalInformation.json",function(jsonData){
			// 		vm.$store.commit("initPerson",jsonData);
			// 	})
			// },
			
			// changeDonationList(){
			// 	$.getJSON("../json/donationList.json",function(jsonData){
			// 			vm.$store.commit("initDonationList",jsonData);
			// 	})
			// },
			
			// changeGarage(){
			// 	$.getJSON("../json/garageList.json",function(jsonData){
			// 		vm.$store.commit("initGarageList",jsonData);
			// 	})
			// },
			
			// 登录获取用户信息
			getPersonInformation(){
				$.ajax({
					// 后面改成post
					type: "get",
					// 后面更改url
					url: "../json/personalInformation.json",
					dataType: "json",
					context: this,
					success(data){
						this.person.headerPath=data["headerPath"];
						this.person.name=data.name;
						this.person.password=data.password;
						this.person.email=data.email;
						this.person.birthday=data.birthday;
						this.person.phone=data.phone;
						this.person.sex=data.sex;
						this.person.personalStatus=data.personalStatus;
					}
				})
			},
			
			// 获取物资库数据
			getGaragesList(){
				$.ajax({
					// 后面改成post
					type: "get",
					// 后面更改url
					url: "../json/garagesList.json",
					context:this,
					dataType: "json",
					success(garagesList){
						this.garagesList=garagesList;
						this.bufferGaragesList=this.garagesList;
					}
				})
			},
			
			// 获取捐赠列表数据
			getDonationsList(){
				$.ajax({
					// 后面改成post
					type: "get",
					// 后面更改url
					url: "../json/donationsList.json",
					context:this,
					dataType: "json",
					success(donationsList){
						this.donationsList=donationsList;
						
					}
				})
			},
			
			// 更改是否更改用户信息事件
			changeMessageEvent() {
				// 获取姓名、出生日期、性别、电话号码、邮箱和验证码
				let name=$("#inputName").val();
				let birthday=$("#inputBirthday").val();
				let sex=$("input[name='sex']:checked").val();
				let phone=$("#inputUserPhone").val();
				let email=$("#inputUserEmail").val();
				
				// $.ajax({
				// 	type:"get",
				// 	url: "../",
				// 	context:this,
				// 	data: JSON.stringify({
				// 		"operation": "用户信息更改",
				// 		"id": "1",
				// 		"name": name,
				// 		"birthday": birthday,
				// 		"sex": sex,
				// 		"phone": phone,
				// 		"email": email
				// 	}),
					
				// 	success: function(){
				// 		this.changeMessage = false;
				// 		this.showMessage = true;
				// 		this.getPersonInformation();
				// 	}
					
				// })
				
			},
			
			// 更改是否显示用户信息事件
			showMessageEvent() {
				this.changeMessage = true;
				this.showMessage = false;
			},
			
			// 计算爱心捐赠总共多少页
			computeDonaitonTotalPage(){
				this.totalPage=Math.ceil(this.arr.length/this.pageSize);
				this.totalPage=this.totalPage==0?1:this.totalPage;
				this.setDonaitonPageData();
				
				for(i=1;i<=this.totalPage;i++){
					this.donationButtons[i-1]=i;
				}
				
				
			},
			
			// 设置爱心捐赠页面信息
			setDonaitonPageData(){
				let begin=(this.currentPage-1)*this.pageSize;
				let end=this.currentPage*this.pageSize;
				this.currentData=this.arr.slice(begin,end);
			},
			
			setDonationPageLi(index){
				let JcurrentPageLi=$(".donation-template .control-page .total-page li[data-page='"+index+"']");
				JcurrentPageLi.css("background-color","#d9d9d9")
				JcurrentPageLi.siblings("li").css("background-color","transparent")
			},
			
			// 爱心捐赠先前翻一页
			donaitonprePage(){
				if(this.currentPage==1){
					return ;
				}
				this.currentPage--;
				this.setDonationPageLi(this.currentPage);
				this.setDonaitonPageData();
			},
			
			// 爱心捐赠先后翻一页
			donaitonNextPage(){
				if(this.currentPage==this.totalPage){
					return ;
				}
				this.currentPage++;
				this.setDonationPageLi(this.currentPage);
				this.setDonaitonPageData();
			}
			
		},
		
	
	})
	
	







