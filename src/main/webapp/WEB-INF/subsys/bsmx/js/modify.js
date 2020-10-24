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
	     //if(!check_length(dvd_get_val('mxid'),'60','明细编码')){return false;} 
     //if(!check_length(dvd_get_val('bsid'),'60','比赛编码')){return false;} 
     //if(!check_length(dvd_get_val('bmid'),'60','报名编码')){return false;} 
     //if(!check_length(dvd_get_val('bsqh'),'60','比赛期号')){return false;} 
     //if(!check_length(dvd_get_val('jsmc'),'60','游戏角色名')){return false;} 
     //if(!check_length(dvd_get_val('bssj'),'60','比赛时间')){return false;} 
     //if(!check_length(dvd_get_val('bscc'),'60','吃鸡次数')){return false;} 
     //if(!check_length(dvd_get_val('bsmc'),'60','比赛名次')){return false;} 
     //if(!check_length(dvd_get_val('bszm'),'60','比赛证明')){return false;} 
     //if(!check_length(dvd_get_val('bz00'),'60','备注项00')){return false;} 
     //if(!check_length(dvd_get_val('bz01'),'60','比赛奖金')){return false;} 
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

	         //if(!check_null('mxid','明细编码')){return false;}  
         //if(!check_null('bsid','比赛编码')){return false;}  
         //if(!check_null('bmid','报名编码')){return false;}  
         //if(!check_null('bsqh','比赛期号')){return false;}  
         //if(!check_null('jsmc','游戏角色名')){return false;}  
         //if(!check_null('bssj','比赛时间')){return false;}  
         //if(!check_null('bscc','吃鸡次数')){return false;}  
         //if(!check_null('bsmc','比赛名次')){return false;}  
         //if(!check_null('bszm','比赛证明')){return false;}  
         //if(!check_null('bz00','备注项00')){return false;}  
         //if(!check_null('bz01','比赛奖金')){return false;}  
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

function goto_last(){
	history.go(-1);

}
function close_self(){
	 window.open('','_parent','');
	 window.close();
}


