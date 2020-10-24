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
	     //if(!check_length(dvd_get_val('bmid'),'60','报名编码')){return false;} 
     //if(!check_length(dvd_get_val('bsid'),'60','比赛编码')){return false;} 
     //if(!check_length(dvd_get_val('bsqh'),'60','比赛期号')){return false;} 
     //if(!check_length(dvd_get_val('bmbh'),'60','报名编号')){return false;} 
     //if(!check_length(dvd_get_val('sjhm'),'60','手机号码')){return false;} 
     //if(!check_length(dvd_get_val('yxjsm'),'60','游戏角色名')){return false;} 
     //if(!check_length(dvd_get_val('sfzxm'),'60','身份证姓名')){return false;} 
     //if(!check_length(dvd_get_val('sfzhm'),'60','身份证号码')){return false;} 
     //if(!check_length(dvd_get_val('sfzzp'),'60','身份证照片')){return false;} 
     //if(!check_length(dvd_get_val('brwxh'),'60','本人微信号')){return false;} 
     //if(!check_length(dvd_get_val('wdddh'),'60','微店订单号')){return false;} 
     //if(!check_length(dvd_get_val('sfhmd'),'60','是否黑名单')){return false;} 
     //if(!check_length(dvd_get_val('rhyy'),'60','入黑原因')){return false;} 
     //if(!check_length(dvd_get_val('bmsj'),'60','报名时间')){return false;} 
     //if(!check_length(dvd_get_val('bscj'),'60','比赛成绩')){return false;} 
     //if(!check_length(dvd_get_val('bsmc'),'60','比赛名次')){return false;} 
     //if(!check_length(dvd_get_val('jjje'),'60','奖金金额')){return false;} 
     //if(!check_length(dvd_get_val('bszm'),'60','比赛证明')){return false;} 
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
     //if(!check_length(dvd_get_val('bz10'),'60','备注项10')){return false;} 
     //if(!check_length(dvd_get_val('bz11'),'60','备注项11')){return false;} 
     //if(!check_length(dvd_get_val('bz12'),'60','备注项12')){return false;} 
     //if(!check_length(dvd_get_val('bz13'),'60','备注项13')){return false;} 
     //if(!check_length(dvd_get_val('bz14'),'60','备注项14')){return false;} 
     //if(!check_length(dvd_get_val('bz15'),'60','备注项15')){return false;} 
     //if(!check_length(dvd_get_val('bz16'),'60','备注项16')){return false;} 
     //if(!check_length(dvd_get_val('bz17'),'60','备注项17')){return false;} 
     //if(!check_length(dvd_get_val('bz18'),'60','备注项18')){return false;} 
     //if(!check_length(dvd_get_val('bz19'),'60','备注项19')){return false;} 

    //if(!check_length(dvd_get_val('id'),'60','编码')){return false;}
    //if(!check_length(dvd_get_val('xm'),'60','姓名')){return false;}

	         //if(!check_null('bmid','报名编码')){return false;}  
         //if(!check_null('bsid','比赛编码')){return false;}  
         //if(!check_null('bsqh','比赛期号')){return false;}  
         //if(!check_null('bmbh','报名编号')){return false;}  
         //if(!check_null('sjhm','手机号码')){return false;}  
         //if(!check_null('yxjsm','游戏角色名')){return false;}  
         //if(!check_null('sfzxm','身份证姓名')){return false;}  
         //if(!check_null('sfzhm','身份证号码')){return false;}  
         //if(!check_null('sfzzp','身份证照片')){return false;}  
         //if(!check_null('brwxh','本人微信号')){return false;}  
         //if(!check_null('wdddh','微店订单号')){return false;}  
         //if(!check_null('sfhmd','是否黑名单')){return false;}  
         //if(!check_null('rhyy','入黑原因')){return false;}  
         //if(!check_null('bmsj','报名时间')){return false;}  
         //if(!check_null('bscj','比赛成绩')){return false;}  
         //if(!check_null('bsmc','比赛名次')){return false;}  
         //if(!check_null('jjje','奖金金额')){return false;}  
         //if(!check_null('bszm','比赛证明')){return false;}  
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
         //if(!check_null('bz10','备注项10')){return false;}  
         //if(!check_null('bz11','备注项11')){return false;}  
         //if(!check_null('bz12','备注项12')){return false;}  
         //if(!check_null('bz13','备注项13')){return false;}  
         //if(!check_null('bz14','备注项14')){return false;}  
         //if(!check_null('bz15','备注项15')){return false;}  
         //if(!check_null('bz16','备注项16')){return false;}  
         //if(!check_null('bz17','备注项17')){return false;}  
         //if(!check_null('bz18','备注项18')){return false;}  
         //if(!check_null('bz19','备注项19')){return false;}  

    //if(!check_null('id','编码')){return false;}
    //if(!check_null('xm','姓名')){return false;}

    return true;
}
