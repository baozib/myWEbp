$(()=>{
	
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
	
	
	var indexSideFence = Vue.component("index-side-fence", {
		template: "#indexSideFence",
	})
	
	var indexFuctionImplementDonation = Vue.component("index-fuction-implement-donation", {
		template: "#indexFuctionImplementDonation"
	})
	
	var indexFuctionImplementMessage = Vue.component("index-fuction-implement-message", {
		template: "#indexFuctionImplementMessage" ,
		data: function(){
			return {
				changeMessage: false,
				showMessage: true
			}
		},
		methods: {
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
	
	var indexFuctionImplementStatus=Vue.component("index-fuction-implement-status",{
		template: "#indexFuctionImplementStatus",
		
	})
	
	var indexFuctionImplementGarage=Vue.component("index-fuction-implement-garage",{
		template: "#indexFuctionImplementGarage",
		
	})
	
	var indexFuctionImplementDonationList=Vue.component("index-fuction-implement-donation-list",{
		template: "#indexFuctionImplementDonationList",
		data: function(){
			return {
				// 如果身份是爱心人士那么isGood为true，否则为false
				isGood: true,
				isPoor:false,
				isExpress:false,
			}
		}
		
	})
	
	
	
	const routes = [
		{
			path: "/",
			redirect: "/personMessage"
		},
		{
			path: "/donation",
			name: "donation",
			component: indexFuctionImplementDonation
		},
	
		{
			path: "/personMessage",
			name: "personMessgae",
			component: indexFuctionImplementMessage
		},
		
		{
			path: "/status",
			name: "status",
			component: indexFuctionImplementStatus
		},
		
		{
			path: "/garage",
			name: "garage",
			component: indexFuctionImplementGarage
		},
		
		{
			path: "/donationList",
			name: "donationList",
			component: indexFuctionImplementDonationList
		},
	
	]
	
	const router = new VueRouter({
		routes: routes
	})
	
	const vm = new Vue({
		el: ".index-page",
		store: store,
		created(){
			this.initState();
			this.changeDonationList();
			this.changeGarage();
		},
		data: {
			
			
		},
		components: {
			"index-side-fence":indexSideFence
		},
		
		methods: {
			initState: function(){
				$.getJSON("./json/personalInformation.json",function(jsonData){
					vm.$store.commit("initPerson",jsonData);
				})
				
			},
			
			changeDonationList: function(){
				$.getJSON("./json/donationList.json",function(jsonData){
						vm.$store.commit("initDonationList",jsonData);
				})
			},
			
			changeGarage: function(){
				$.getJSON("./json/garageList.json",function(jsonData){
					vm.$store.commit("initGarageList",jsonData);
				})
			}
		},
		
		router: router
	
	})
	
	
})







