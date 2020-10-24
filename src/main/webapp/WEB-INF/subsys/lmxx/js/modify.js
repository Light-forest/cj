$(document).ready(function() {
});

function btn_mod_click(){
	//alert('btn_mod_click');
	if(!input_check()){
		return;
	}
    form_modify.submit();
}

function  input_check(){
	     //if(!check_length(dvd_get_val('lmid'),'60','栏目编码')){return false;} 
     //if(!check_length(dvd_get_val('lmbh'),'60','栏目编号')){return false;} 
     //if(!check_length(dvd_get_val('lmsx'),'60','栏目顺序')){return false;} 
     //if(!check_length(dvd_get_val('zwbt'),'60','中文标题')){return false;} 
     //if(!check_length(dvd_get_val('ywbt'),'60','英文标题')){return false;} 
     //if(!check_length(dvd_get_val('lmtp'),'60','栏目图片')){return false;} 
     //if(!check_length(dvd_get_val('zwsm'),'60','中文说明')){return false;} 
     //if(!check_length(dvd_get_val('ywsm'),'60','英文说明')){return false;} 
     //if(!check_length(dvd_get_val('djzx'),'60','点击展现')){return false;} 
     //if(!check_length(dvd_get_val('bjsj'),'60','编辑时间')){return false;} 
     //if(!check_length(dvd_get_val('bjry'),'60','编辑人员')){return false;} 
     //if(!check_length(dvd_get_val('fuid'),'60','父栏编码')){return false;} 
     //if(!check_length(dvd_get_val('fumc'),'60','父栏名称')){return false;} 
     //if(!check_length(dvd_get_val('lmlj'),'60','栏目路径')){return false;} 
     //if(!check_length(dvd_get_val('wldz'),'60','外链地址')){return false;} 
     //if(!check_length(dvd_get_val('lmzt'),'60','栏目状态')){return false;} 
     //if(!check_length(dvd_get_val('gjcy'),'60','关键词语')){return false;} 
     //if(!check_length(dvd_get_val('wzsl'),'60','文章数量')){return false;} 
     //if(!check_length(dvd_get_val('djsl'),'60','点击数量')){return false;} 
     //if(!check_length(dvd_get_val('bz00'),'60','备注项00')){return false;} 
     //if(!check_length(dvd_get_val('bz01'),'60','备注项01')){return false;} 
     //if(!check_length(dvd_get_val('bz02'),'60','备注项02')){return false;} 
     //if(!check_length(dvd_get_val('bz03'),'60','备注项03')){return false;} 
     //if(!check_length(dvd_get_val('bz04'),'60','备注项04')){return false;} 
     //if(!check_length(dvd_get_val('bz05'),'60','备注项05')){return false;} 
     //if(!check_length(dvd_get_val('bz06'),'60','备注项06')){return false;} 
     //if(!check_length(dvd_get_val('bz07'),'60','备注项07')){return false;} 
     //if(!check_length(dvd_get_val('bz08'),'60','备注项08')){return false;} 
     //if(!check_length(dvd_get_val('bz09'),'60','备注项09')){return false;} 

    //if(!check_length(dvd_get_val('id'),'60','编码')){return false;}
    //if(!check_length(dvd_get_val('xm'),'60','姓名')){return false;}

	         //if(!check_null('lmid','栏目编码')){return false;}  
         //if(!check_null('lmbh','栏目编号')){return false;}  
         //if(!check_null('lmsx','栏目顺序')){return false;}  
         //if(!check_null('zwbt','中文标题')){return false;}  
         //if(!check_null('ywbt','英文标题')){return false;}  
         //if(!check_null('lmtp','栏目图片')){return false;}  
         //if(!check_null('zwsm','中文说明')){return false;}  
         //if(!check_null('ywsm','英文说明')){return false;}  
         //if(!check_null('djzx','点击展现')){return false;}  
         //if(!check_null('bjsj','编辑时间')){return false;}  
         //if(!check_null('bjry','编辑人员')){return false;}  
         //if(!check_null('fuid','父栏编码')){return false;}  
         //if(!check_null('fumc','父栏名称')){return false;}  
         //if(!check_null('lmlj','栏目路径')){return false;}  
         //if(!check_null('wldz','外链地址')){return false;}  
         //if(!check_null('lmzt','栏目状态')){return false;}  
         //if(!check_null('gjcy','关键词语')){return false;}  
         //if(!check_null('wzsl','文章数量')){return false;}  
         //if(!check_null('djsl','点击数量')){return false;}  
         //if(!check_null('bz00','备注项00')){return false;}  
         //if(!check_null('bz01','备注项01')){return false;}  
         //if(!check_null('bz02','备注项02')){return false;}  
         //if(!check_null('bz03','备注项03')){return false;}  
         //if(!check_null('bz04','备注项04')){return false;}  
         //if(!check_null('bz05','备注项05')){return false;}  
         //if(!check_null('bz06','备注项06')){return false;}  
         //if(!check_null('bz07','备注项07')){return false;}  
         //if(!check_null('bz08','备注项08')){return false;}  
         //if(!check_null('bz09','备注项09')){return false;}  

    //if(!check_null('id','编码')){return false;}
    //if(!check_null('xm','姓名')){return false;}

    return true;
}

function goto_last(){
	history.go(-1);

}
function close_self(){
	 window.open('','_parent','');
	 window.close();
}


