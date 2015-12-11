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
    	
    	
    	var arr = new Array();
    	for(var i=0;i<this.fields.length;i++){
    		$.each(fields[i],function(key,value) {
            //    alert(key);
            //    alert(value);
            });
    	}
    }
};