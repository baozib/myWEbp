
	
	// 公共数据
	const store = new Vuex.Store({
		// state相当于date
		state:{
			person: new person(),
			donationArr: [],
			garageArr: [],
		},
		
		mutations: {
			initPerson:function(state,jsonData){
				state.person.headerPath=jsonData["headerPath"];
				state.person.name=jsonData["name"];
				state.person.password=jsonData["password"];
				state.person.email=jsonData["email"];
				state.person.birthday=jsonData["birthday"];
				state.person.phone=jsonData["phone"];
				state.person.sex=jsonData["sex"];
				state.person.personalStatus=jsonData["personalStatus"];
				
			},
			
			initDonationList: function(state,donationList){
				$.each(donationList,function(index,donationInformation){
						state.donationArr[index]=donationInformation;
				})
			},
			
			
			initGarageList: function(state,garageList){
				$.each(garageList,function(index,garageInformation){
						state.garageArr[index]=garageInformation;
				})
			}
			
		}
	})
	
	
	
	
	var vm = new Vue({
		el: "#indexPage",
		store: store,
		created(){
			this.initState();
			this.changeDonationList();
			this.changeGarage();
		},
		data: {
			changeMessage: false,
			showMessage: true,
			// 如果身份是爱心人士那么isGood为true，否则为false
			isGood: true,
			isPoor:false,
			isExpress:false,
			
		},

		
		methods: {
			initState: function(){
				$.getJSON("../json/personalInformation.json",function(jsonData){
					vm.$store.commit("initPerson",jsonData);
				})
				
			},
			
			changeDonationList: function(){
				$.getJSON("../json/donationList.json",function(jsonData){
						vm.$store.commit("initDonationList",jsonData);
				})
			},
			
			changeGarage: function(){
				$.getJSON("../json/garageList.json",function(jsonData){
					vm.$store.commit("initGarageList",jsonData);
				})
			},
			
			changeMessageEvent() {
				this.changeMessage = false;
				this.showMessage = true;
			},
			showMessageEvent() {
				this.changeMessage = true;
				this.showMessage = false;
			}
		},
		
	
	})
	
	







