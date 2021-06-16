function objectToString(obj){
	let str="";
	$.each(obj,function(key,value){
		str+=value;
	})
	return str;
}