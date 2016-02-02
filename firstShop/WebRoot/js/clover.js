function Clover(name,age,id,fields)  
{
    // 实例属性  
    // 实例时多份拷贝  
    this.name=name;  
    this.age=age;  
    this.id=id;
    this.fields=fields;
}  
          
Clover.prototype={  
        //constructor属性始终指向创建当前对象的构造函数  
        // 因为原型被替换，所以需要恢复construtor的默认指向  
    constructor: Clover,  
    showName:function(){  
        alert("ShowName in prototype:"+this.name);  
    },  
    showAge:function(){  
        alert(this.age);  
    },
    init:function(fields){
    	//优先使用类的参数，当类参数为空时，使用方法中的参数
    	if(this.fields==null||this.fields==""){
    		this.fields=fields;
    	}
    },
    autoForm:function(id,fields){
    	//优先使用类的参数，当类参数为空时，使用方法中的参数
    	if(this.id==null||this.id==""){
    		this.id=id;
    	}
    	if(this.fields==null||this.fields==""){
    		this.fields=fields;
    	}
    	
    	//alert("id="+this.id+",fields="+this.fields);
    	
    	//alert(id);
    	$("#"+id).addClass("container-fluid");
    	$("#"+id).html($("#"+id).html()+"<div class='row'>");
    	var arr = new Array();
    	var fieldsTitle="",fieldsId="",fieldsVal="",//标题，id,内容
    		fieldsDisabled="",fieldsReadonly="",//是否禁用,是否只读
    		fieldsType="",fieldsFormatter="";//类型,格式
    	var inputBox="";
    	var calendarList="";
    	for(var i=0;i<this.fields.length;i++){
    		$.each(fields[i],function(key,value) {
    			if(key=="value"){fieldsVal=value;}
    			if(key=="disabled"){fieldsDisabled=value;}
    			if(key=="readonly"){fieldsReadonly=value;}
    			if(key=="title"){fieldsTitle=value;}
    			if(key=="id"){fieldsId=value;}
    			if(key=="type"){fieldsType=value;}
            });
    		//文本框的情况
    		if(fieldsType=="input" || fieldsType=="text"){
    			if(fieldsDisabled==true){
    				inputBox="<div class='clover-bs-input-div'><input class='form-control input-sm' type='text' placeholder='"+fieldsVal+"'  id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"' disabled></div>";
    			}else if(fieldsReadonly==true){
    				inputBox="<div class='clover-bs-input-div'><input class='form-control input-sm' type='text' placeholder='"+fieldsVal+"' value='"+fieldsVal+"' id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"' readonly></div>";
    			}else{
    				inputBox="<div class='clover-bs-input-div'><input class='form-control input-sm' type='text' placeholder='"+fieldsVal+"'  id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"' ></div>";
    			}
    			
				$("#"+id+" .row").html($("#"+id+" .row").html()+"<div class='col-md-4 col-sm-6 col-xs-6 margin-top-bottom'>"
						+"<label class='font-weight-normal autoform-title' style='width:120px;'>"+fieldsTitle+"：</label>"
						+inputBox+"</div>");
			}
    		//隐藏框的情况
			if(fieldsType=="hidden"){
				$("#"+id+" .row").html($("#"+id+" .row").html()+"<div class='col-md-4 col-sm-6 col-xs-6 margin-top-bottom hidden'>"
						+"<label class='font-weight-normal autoform-title' style='width:120px;'>"+fieldsTitle+"：</label>"
						+"<div class='clover-bs-input-div'>"
						+"<input class='form-control input-sm' type='text' placeholder='"+fieldsVal+"' value='"+fieldsVal+"' id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"'></div>"
						+"</div>");
			}
			//单选框的情况
			if(fieldsType=="checkbox"){
				var ckbox=fieldsVal.split(",");
				//alert(ckbox[0]+"-"+ckbox[1]);
				$("#"+id+" .row").html($("#"+id+" .row").html()+"<div class='col-md-4 col-sm-6 col-xs-6 margin-top-bottom'>"
						+"<label class='font-weight-normal autoform-title' style='width:120px;'>"+fieldsTitle+"：</label>"
						+"<div class='clover-bs-input-div'>"
						+"<input  type='checkbox' checked data-size='small' data-on-text='"+ckbox[0]+"' data-off-text='"+ckbox[1]+" "+"' id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"'>"
						+"</div></div>");
			}
			//label的情况
			if(fieldsType=="label"){
				$("#"+id+" .row").html($("#"+id+" .row").html()+"<div class='col-md-4 col-sm-6 col-xs-6 margin-top-bottom' >"
				+"<label class='font-weight-normal autoform-title' style='width:120px;'>"
		        +fieldsTitle+"：</label>"
		  		+"<div class='clover-bs-input-div' style='font-size:18px;' id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"'>"
		  		+fieldsVal
		  		+"</div></div>");
			}
			//文本域的情况
			if(fieldsType=="textarea"){
				$("#"+id+" .row").html($("#"+id+" .row").html()+"<div class='col-md-12 col-sm-12 col-xs-12 margin-top-bottom'>"
				+"<label class='font-weight-normal autoform-title' style='width:120px;'>"
				+fieldsTitle+"：</label>"
				+"<div class='clover-bs-input-div'>"
				+"<textarea class='form-control clover-bs-input-textarea' rows='3' id='"+"c_"+fieldsId+"' name='"+"c_"+fieldsId+"'></textarea>"
				+"</div></div>");		
			}
			//日期选择器情况
			if(fieldsType=="datetime" || fieldsType=="calendar"){
				
				$("#"+id+" .row").html($("#"+id+" .row").html()+"<div class='col-md-4 col-sm-6 col-xs-6 margin-top-bottom'>"
				+"<label class='font-weight-normal autoform-title' style='width:120px;'>"+fieldsTitle+"：</label>"
				+"<div class='clover-bs-input-div'>"
				+"<div class='input-group date form_date col-md-4 col-sm-6 col-xs-6 margin-top-bottom' id='"+fieldsId+"'>"
				+"<input class='input-sm clover-bs-datetimepick-input' size='16' type='text' id='"+"c_"+fieldsId+"'>"
				+"<span class='input-group-addon'><span class='glyphicon glyphicon-calendar'></span></span>"
				+"</div></div></div>");
				if(calendarList==""){
					calendarList=calendarList+fieldsId;
				}else{
				calendarList=calendarList+","+fieldsId;
				}  
			}
			
    		fieldsReadonly=false;
    		fieldsDisabled=false;
    		fieldsVal="";
    	}
    	
    	//开始处理日期选择器
    	if(calendarList!=""){
    		var Cal=calendarList.split(",");
    		for(var j=0;j<Cal.length;j++){
    			$('#'+Cal[j]).datetimepicker({
    		         language: 'zh-CN',
    		         weekStart: 1,
    		         todayBtn: 1,
    				 autoclose: 1,
    				 todayHighlight: 1,
    				 forceParse: 0,
    				 startView: 2,
    				 format: 'yyyy-mm-dd hh:ii',
    				 minView: 2
    				    });
    		}
    	}
    	//处理日期选择器结束
    	
    	 
    	 
    	$("#"+id).append("</div>");
    }
};