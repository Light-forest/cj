$(document).ready(function() {
   //var msg=request.QueryString('msg');

   //_fuid=request.QueryString('_fuid');
   //alert(_fuid);
   //dvd_set_val('id',get_guid32());
   //dvd_set_val('id','');			//编码
   //dvd_set_val('xm','');			//姓名
   //set_table_style('id_table_add');
 });

function btn_add_click(){
	//alert("btn_add_click");
	if(!input_check()){
		return;
	}
    formadd.submit();
}
function  input_check(){
	     //if(!check_length(dvd_get_val('glyid'),'60','管理员编码')){return false;} 
     //if(!check_length(dvd_get_val('glyzh'),'60','管理员账号')){return false;} 
     //if(!check_length(dvd_get_val('glymc'),'60','管理员名称')){return false;} 
     //if(!check_length(dvd_get_val('glymm'),'60','管理员密码')){return false;} 
     //if(!check_length(dvd_get_val('glyyx'),'60','管理员邮箱')){return false;} 
     //if(!check_length(dvd_get_val('glyzw'),'60','管理员职位')){return false;} 
     //if(!check_length(dvd_get_val('glyjs'),'60','管理员角色')){return false;} 
     //if(!check_length(dvd_get_val('glyms'),'60','管理员描述')){return false;} 
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

	         //if(!check_null('glyid','管理员编码')){return false;}  
         //if(!check_null('glyzh','管理员账号')){return false;}  
         //if(!check_null('glymc','管理员名称')){return false;}  
         //if(!check_null('glymm','管理员密码')){return false;}  
         //if(!check_null('glyyx','管理员邮箱')){return false;}  
         //if(!check_null('glyzw','管理员职位')){return false;}  
         //if(!check_null('glyjs','管理员角色')){return false;}  
         //if(!check_null('glyms','管理员描述')){return false;}  
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
