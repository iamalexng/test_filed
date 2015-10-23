//工具js

//设置title 传入格式以逗号进行分割,并设置在result-title的样式中 <p><a>ar[0]</a> > <a>ar[1]</a></p>
function setSearchTitle(name){
 	var arrayObj = name.split(",");
 	//alert(arrayObj.length);
 	var result="";
 	for(var i=0;i<arrayObj.length;i++){
 		if(i==arrayObj.length-1){//为最后一个强调加粗
 			result=result+"<a class='emphasize'>"+arrayObj[i]+"</a>"+">";
 		}else{
 			result=result+"<a>"+arrayObj[i]+"</a>"+">";
 		}
 	}
 	//删掉最后的>并放到p中
 	result="<p>"+result.substring(0, result.length-1)+"</p>";
 	
 	$(".result-title").html(result);
}