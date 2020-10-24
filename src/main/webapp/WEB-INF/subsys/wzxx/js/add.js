$(document).ready(function() {
   //var msg=request.QueryString('msg');

   //_fuid=request.QueryString('_fuid');
   //alert(_fuid);
   //dvd_set_val('id',get_guid32());
   //dvd_set_val('id','');			//编码
   //dvd_set_val('xm','');			//姓名
   //set_table_style('id_table_add');

    var _wzid=dvd_get_val("wzid");
    //alert(_wzid);
    var urlZp="../../cms/cmsfjZpUpload/list?fuid="+_wzid+"&t="+get_guid32();
    //window.open(urlZp);
    document.getElementById("iframeZp").src=urlZp;
 });

function btn_add_click(){
    aKindEditor.sync();

    //alert("btn_add_click");
	if(!input_check()){
		return;
	}
    formadd.submit();
}
function  input_check(){
	     //if(!check_length(dvd_get_val('wzid'),'60','文章编码')){return false;} 
     //if(!check_length(dvd_get_val('wzbh'),'60','文章编号')){return false;} 
     //if(!check_length(dvd_get_val('wzxh'),'60','文章序号')){return false;} 
     //if(!check_length(dvd_get_val('zwbt'),'60','中文标题')){return false;} 
     //if(!check_length(dvd_get_val('ywbt'),'60','英文标题')){return false;} 
     //if(!check_length(dvd_get_val('btys'),'60','标题颜色')){return false;} 
     //if(!check_length(dvd_get_val('wztp'),'60','文章图片')){return false;} 
     //if(!check_length(dvd_get_val('zwzy'),'60','中文摘要')){return false;} 
     //if(!check_length(dvd_get_val('ywzy'),'60','英文摘要')){return false;} 
     //if(!check_length(dvd_get_val('wzlx'),'60','文章类型')){return false;} 
     //if(!check_length(dvd_get_val('zwnr'),'60','文章内容')){return false;} 
     //if(!check_length(dvd_get_val('ywnr'),'60','英文内容')){return false;} 
     //if(!check_length(dvd_get_val('wzbq'),'60','文章标签')){return false;} 
     //if(!check_length(dvd_get_val('gjcy'),'60','关键词语')){return false;} 
     //if(!check_length(dvd_get_val('fbsj'),'60','发布时间')){return false;} 
     //if(!check_length(dvd_get_val('wzzz'),'60','文章作者')){return false;} 
     //if(!check_length(dvd_get_val('wzly'),'60','文章来源')){return false;} 
     //if(!check_length(dvd_get_val('bjsj'),'60','编辑时间')){return false;} 
     //if(!check_length(dvd_get_val('wzzt'),'60','文章状态')){return false;} 
     //if(!check_length(dvd_get_val('lmid'),'60','栏目编码')){return false;} 
     //if(!check_length(dvd_get_val('lmmc'),'60','栏目名称')){return false;} 
     //if(!check_length(dvd_get_val('fyfs'),'60','分页方式')){return false;} 
     //if(!check_length(dvd_get_val('fydx'),'60','分页大小')){return false;} 
     //if(!check_length(dvd_get_val('sftt'),'60','是否头条')){return false;} 
     //if(!check_length(dvd_get_val('sftj'),'60','是否推荐')){return false;} 
     //if(!check_length(dvd_get_val('zdjb'),'60','置顶级别')){return false;} 
     //if(!check_length(dvd_get_val('sfgd'),'60','是否归档')){return false;} 
     //if(!check_length(dvd_get_val('plsl'),'60','评论数量')){return false;} 
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

	         //if(!check_null('wzid','文章编码')){return false;}  
         //if(!check_null('wzbh','文章编号')){return false;}  
         //if(!check_null('wzxh','文章序号')){return false;}  
         //if(!check_null('zwbt','中文标题')){return false;}  
         //if(!check_null('ywbt','英文标题')){return false;}  
         //if(!check_null('btys','标题颜色')){return false;}  
         //if(!check_null('wztp','文章图片')){return false;}  
         //if(!check_null('zwzy','中文摘要')){return false;}  
         //if(!check_null('ywzy','英文摘要')){return false;}  
         //if(!check_null('wzlx','文章类型')){return false;}  
         //if(!check_null('zwnr','文章内容')){return false;}  
         //if(!check_null('ywnr','英文内容')){return false;}  
         //if(!check_null('wzbq','文章标签')){return false;}  
         //if(!check_null('gjcy','关键词语')){return false;}  
         //if(!check_null('fbsj','发布时间')){return false;}  
         //if(!check_null('wzzz','文章作者')){return false;}  
         //if(!check_null('wzly','文章来源')){return false;}  
         //if(!check_null('bjsj','编辑时间')){return false;}  
         //if(!check_null('wzzt','文章状态')){return false;}  
         //if(!check_null('lmid','栏目编码')){return false;}  
         //if(!check_null('lmmc','栏目名称')){return false;}  
         //if(!check_null('fyfs','分页方式')){return false;}  
         //if(!check_null('fydx','分页大小')){return false;}  
         //if(!check_null('sftt','是否头条')){return false;}  
         //if(!check_null('sftj','是否推荐')){return false;}  
         //if(!check_null('zdjb','置顶级别')){return false;}  
         //if(!check_null('sfgd','是否归档')){return false;}  
         //if(!check_null('plsl','评论数量')){return false;}  
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
