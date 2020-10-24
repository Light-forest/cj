initCSS();


function initCSS() {

    $(".input-group-addon").css("width", "60px");
   // $(".table-info > thead > tr > th > a").css("color", "white");

}

//========加入qq群=======================
//<a target="_blank" href="//shang.qq.com/wpa/qunwpa?idkey=729794c57c58f2b3953228dabd45e748ab43ab8abb3d284c0a7cf85bd762cefa"><img border="0" src="//pub.idqqimg.com/wpa/images/group.png" alt="牛哥.快乐编程大本营" title="牛哥.快乐编程大本营"></a>
//========加入qq群=======================

function openQQ() {
    var qq = "1325821989";//$(this).attr('data-qq');//获取qq号
    window.open('http://wpa.qq.com/msgrd?v=3&uin='+qq+'&site=qq&menu=yes','_brank');
}



//==========  登陆校验及本地化存储信息==========
function is_login() {
    var storage = window.localStorage;
    var glyzh=get_storage_val("glyzh");
    if(!glyzh){
    	return false;
	}
    if(glyzh==""){
        return false;
    }
    return true;

    // var cj_islogin = storage.getItem("cj_islogin");
    // if (cj_islogin) {
    //     if (cj_islogin === "true") {
    //        return true;
    //     } else {
    //        return false;
    //     }
    // } else {
    //     return false;
    // }
}
function logout(){
    var storage = window.localStorage;
    storage.setItem("glyzh","");
}

function get_storage_val(itemname){
    var storage = window.localStorage;
    var s=storage.getItem(itemname);
    if(!s){return ""};
    return s;
}
function set_storage_val(itemname,val){
    var storage = window.localStorage;
    storage.setItem(itemname,val);

}
//==========end 登陆校验及本地化存储信息==========


//var is_login=false;

//=================begin 执行平台组件===========================
/*
  执行平台组件用法：
    init_datetime("kssj");//初始化日期控件
    init_datetime("jssj");//初始化日期控件
    init_textarea("bsjs");//初始化大文本框控件
    init_select("bsqh","1期|2期|3期|4期|5期");//初始化下拉框控件
 */

function select_GetValue(obj){
    return obj.value;
}
function set_selct_val_to_input(id_input){

    var s=select_GetValue(document.getElementById("select_"+id_input));
    document.getElementById(id_input).value=s;
}
function init_select(id_input,s_txt){
    $("#div_"+id_input).children("input").css("display","none");

    var val_init=dvd_get_val(id_input);

    var s2=s_txt.split("|");
    var s3="";
    for(var i=0;i<s2.length;i++){
    	if(val_init==s2[i]){
            s3+="<option selected value='"+s2[i]+"'>"+s2[i]+"</option>";
		}else{
            s3+="<option value='"+s2[i]+"'>"+s2[i]+"</option>";
		}

    }

   var s="";
    s+="<select class=\"form-control\" id='select_"+id_input+"' onChange=\"set_selct_val_to_input('"+id_input+"');\">";
    s+="<option></option>";
    s+=s3;
    s+="</select>";
    var s0=$("#div_"+id_input).html();

    $("#div_"+id_input).html(s0+s);


    //alert(s0);

   /*  <select class="form-control">
		<option>1</option>
		<option>2</option>
		<option>3</option>
		<option>4</option>
		<option>5</option>
		</select>
  */

}
function init_datetime(id_dt){
    var s="#"+id_dt;
    layui.use('laydate', function(){
        var laydate = layui.laydate;
        //执行一个laydate实例
        laydate.render({
            elem: s
        });
    });
}

function init_textarea(id_input){

	var hint= $("#div_"+id_input).children(0).text();

	var val = $("#"+id_input).val();

	//alert(val);
	//alert($("#div_"+id_input).children(1).val());
    //alert($("#div_"+id_input).children(1).value);
    //alert($("#div_"+id_input).attr("value"));

    var s="";
	s+="<div style=\"font-size:12px\">"+hint+":</div>";
    s+="<textarea style=' ' rows=\"8\" id=\""+id_input+"\" name=\""+id_input+"\"   class=\"form-control\"   placeholder=\""+hint+"\" >"+val+"</textarea> ";//

    $("#div_"+id_input).removeClass("col-xs-5");
    $("#div_"+id_input).addClass("col-xs-12");
    $("#div_"+id_input).html(s);
	/*
    $("#div_"+id_input).children(0).removeClass("input-group-addon");
    $("#div_"+id_input).children(0).css("font-size","12px");


    $("#div_"+id_input).css("height","100px");
    $("#"+id_input).css("height","100px");
    */

	//<div id="div_bsjs" class="input-group col-xs-5" style="display:;">
	//        <div class="input-group-addon">比赛介绍</div>
	//        <input id="bsjs" name="bsjs" type="text" class="form-control"   placeholder="比赛介绍" value="<%=bsjs %>">
	//        </div>


}
//=================end 执行平台组件===========================



//===========start 设置高度======================
var browserVersion = window.navigator.userAgent.toUpperCase();
var isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
var isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
var isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
var isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
var isIE = (!!window.ActiveXObject || "ActiveXObject" in window);
var isIE9More = (! -[1, ] == false);

function reinitIframe(iframeId, minHeight) {
    try {
        var iframe = document.getElementById(iframeId);
        var bHeight = 0;
        if (isChrome == false && isSafari == false)
            bHeight = iframe.contentWindow.document.body.scrollHeight;

        var dHeight = 0;
        if (isFireFox == true)
            dHeight = iframe.contentWindow.document.documentElement.offsetHeight + 2;
        else if (isIE == false && isOpera == false)
            dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
        else if (isIE == true && isIE9More) {//ie9+
            var heightDeviation = bHeight - eval("window.IE9MoreRealHeight" + iframeId);
            if (heightDeviation == 0) {
                bHeight += 3;
            } else if (heightDeviation != 3) {
                eval("window.IE9MoreRealHeight" + iframeId + "=" + bHeight);
                bHeight += 3;
            }
        }
        else//ie[6-8]、OPERA
            bHeight += 3;

        var height = Math.max(bHeight, dHeight);
        if (height < minHeight) height = minHeight;
        iframe.style.height = height + "px";
    } catch (ex) { }
}
function startInit(iframeId, minHeight) {
    eval("window.IE9MoreRealHeight" + iframeId + "=0");
    window.setInterval("reinitIframe('" + iframeId + "'," + minHeight + ")", 800);
}
//var minHeight = $(window).height();
//startInit('mainframe', minHeight);
//===========end 设置高度======================















/*
var IE = document.all?true:false

if (!IE) document.captureEvents(Event.MOUSEMOVE)

document.onmousemove = getMouseXY;

var tempX = 0
var tempY = 0

function getMouseXY_and_do_sth(e) {
 if (IE) { // grab the x-y pos.s if browser is IE
   tempX = event.clientX + document.body.scrollLeft
   tempY = event.clientY + document.body.scrollTop
 } else {  // grab the x-y pos.s if browser is NS
   tempX = e.pageX
   tempY = e.pageY
 }
 // catch possible negative values in NS4
 if (tempX < 0){tempX = 0}
 if (tempY < 0){tempY = 0}
 // show the position values in the form named Show
 // in the text fields named MouseX and MouseY
 document.Show.MouseX.value = tempX
 document.Show.MouseY.value = tempY
 return true
}

function getMouseX(e) {
 if (IE) { // grab the x-y pos.s if browser is IE
   tempX = event.clientX + document.body.scrollLeft;
   tempY = event.clientY + document.body.scrollTop;
 } else {  // grab the x-y pos.s if browser is NS
   tempX = e.pageX;
   tempY = e.pageY;
 }
 // catch possible negative values in NS4
 if (tempX < 0){tempX = 0;}
 if (tempY < 0){tempY = 0;}
 // show the position values in the form named Show
 // in the text fields named MouseX and MouseY
 return tempX;
 //document.Show.MouseX.value = tempX
 //document.Show.MouseY.value = tempY
 //return true
}

function getMouseY(e) {
 if (IE) { // grab the x-y pos.s if browser is IE
   tempX = event.clientX + document.body.scrollLeft;
   tempY = event.clientY + document.body.scrollTop;
 } else {  // grab the x-y pos.s if browser is NS
   tempX = e.pageX;
   tempY = e.pageY;
 }
 // catch possible negative values in NS4
 if (tempX < 0){tempX = 0;}
 if (tempY < 0){tempY = 0;}
 // show the position values in the form named Show
 // in the text fields named MouseX and MouseY
 return tempY;
 //document.Show.MouseX.value = tempX
 //document.Show.MouseY.value = tempY
 //return true
}

*/
//项目特殊用途的js公用代码
/*


//==============记录点击信息==============================================
  function  log_lm_click(_lmid,_lmmc){
	  jilu_dw_djrz(_lmid,_lmmc,"栏目");
	  
  }
  function  log_sp_click(_spid,_spmc){
	  jilu_dw_djrz(_spid,_spmc,"商品");
	  
	  
  }
  function  log_wz_click(_wzid,_wzmc){
	  jilu_dw_djrz(_wzid,_wzmc,"文章");
	  
	  
  }
  
  function get_mql_ins_dw_djrz(_dxid,_dxmc,_dxlx){
       var  val_djid  = get_guid32();
       var  val_dxid  = _dxid;
       var  val_dxmc  = _dxmc;
       var  val_dxlx  = _dxlx;
       var  val_djip  = "CLIENTIP";
       var  val_djzh  = "";
       var  val_djnc  = "";
       var  val_djxm  = "";
       var  val_djsj  = get_datetime14_bz();
       var  val_bz1  = "";
       var  val_bz2  = "";
       var  val_bz3  = "";
       var  val_bz4  = "";

       var mql ="insert into dw_djrz( djid, dxid, dxmc, dxlx, djip, djzh, djnc, djxm, djsj, bz1, bz2, bz3, bz4 ) values("+"'"+val_djid +"',"+"'"+val_dxid +"',"+"'"+val_dxmc +"',"+"'"+val_dxlx +"',"+"'"+val_djip +"',"+"'"+val_djzh +"',"+"'"+val_djnc +"',"+"'"+val_djxm +"',"+"'"+val_djsj +"',"+"'"+val_bz1 +"',"+"'"+val_bz2 +"',"+"'"+val_bz3 +"',"+"'"+val_bz4+"'"+");";

       return mql;
  }
 
    function jilu_dw_djrz(_dxid,_dxmc,_dxlx){
        var mql_ins=get_mql_ins_dw_djrz(_dxid,_dxmc,_dxlx);
        // alert(mql_ins);
        var url_ashx="../u.ashx?u="+escape(dvd_pack_mql(mql_ins))+"&t="+getGuid32();
        // alert(url_ashx);
        $.get(
                url_ashx, 
                "",
                function(msg_xml_info_return){ 
                     //alert("u return--"+msg_xml_info_return);
                    if(msg_xml_info_return=="True"){
                       //alert("新增操作成功!");
                    }else{
                       alert("新增点击量操作失败!");
                    }
                }
        );
    }

//==========end====记录点击信息==============================================

*/

function call_qq(qq){
  var s_url
    //="http://wpa.qq.com/msgrd?V=1&Uin="+qq+"&Site=Sciencoo&menu=no";	
      = "http://wpa.qq.com/msgrd?V=1&Uin=807624849&Site=Sciencoo&menu=no";
  window.open(s_url);
}

function start_process(){
  $("#id_div_process").html("正在进行数据提交，请稍候......");
  $("#id_div_process").css("display","block");

}
function end_process(){
  $("#id_div_process").css("display","none");
}

function get_day_by_date(s_date){
	if(s_date.split(' ')[0]){
	  return s_date.split(' ')[0];
	}else{
	  return "";
	}

}


//============弹出窗口，处理字典=========================================



function messagebox_show(url,include_close,_width,_height){

 
    //alert(url);
	
	
	//var basePath=$("#id_basePath").html();
    //alert(basePath);
	
	//alert(_swid+"---"+_yhid);
	//var url="";
	
	 
    //url=basePath+"doAffairsTree.action";
	 
    var s_html= "";
	s_html+="<div style='text-align:center;'>";
 
	if(include_close=="1"){
		s_html+="  <div style='height:30px;text-align:right; line-height:20px; margin:0px; padding:0px;margin-right:5px;'>"
		s_html+="    <a href=\"javascript:messagebox_close();\" style='font-size:13px; color:blue;'>[×]</a>";
		s_html+="  </div>"; 
	}

	s_html+="  <div>"; 
	s_html+="  <iframe id='id_iframe_messagebox' style='width:98%;height:92%;border:0px solid red;' src='"
		+url+"' scrolling='auto' frameborder='0' ></iframe>";
    s_html+="  </div>"; 

	
	s_html+="</div>";
	
	//alert(s_html);
    $("#id_div_temp").html(s_html);
	$("#id_div_temp").css("display","block");
	$("#id_div_temp0").css("display","block");

	$("#id_div_temp").css("top","30px");
	
	alert(_width+_height);
	if(_width){
		alert(_width);
		$("#id_div_temp").css("width",_width); 
	}
	
	if(_height){
		alert(_height);
		$("#id_div_temp").css("height",_height); 
	}
	
	 
	
}


 
function messagebox_show(url,include_close){
    //alert(url);
	
	
	//var basePath=$("#id_basePath").html();
    //alert(basePath);
	
	//alert(_swid+"---"+_yhid);
	//var url="";
	
	 
    //url=basePath+"doAffairsTree.action";
	 
    var s_html= "";
	s_html+="<div style='text-align:center;'>";
 
	if(include_close=="1"){
		s_html+="  <div style='height:30px;text-align:right; line-height:20px; margin:0px; padding:0px;margin-right:5px;'>"
		s_html+="    <a href=\"javascript:messagebox_close();\" style='font-size:13px; color:blue;'>[×]</a>";
		s_html+="  </div>"; 
	}

	s_html+="  <div>"; 
	s_html+="  <iframe id='id_iframe_messagebox' style='width:98%;height:92%;border:0px solid red;' src='"
		+url+"' scrolling='auto' frameborder='0' ></iframe>";
    s_html+="  </div>"; 

	
	s_html+="</div>";
	
	//alert(s_html);
    $("#id_div_temp").html(s_html);
	$("#id_div_temp").css("display","block");
	$("#id_div_temp0").css("display","block");
	
}


function messagebox_show_and_reload(url,include_close){
    //alert(url);
	
	
	//var basePath=$("#id_basePath").html();
    //alert(basePath);
	
	//alert(_swid+"---"+_yhid);
	//var url="";
	
	 
    //url=basePath+"doAffairsTree.action";
	 
    var s_html= "";
	s_html+="<div style='text-align:center;'>";
 
	if(include_close=="1"){
		s_html+="  <div style='height:30px;text-align:right; line-height:20px; margin:0px; padding:0px;margin-right:5px;'>"
		s_html+="    <a href=\"javascript:messagebox_close_and_reload();\" style='font-size:13px; color:blue;'>[×]</a>";
		s_html+="  </div>"; 
	}

	s_html+="  <div>"; 
	s_html+="  <iframe id='id_iframe_messagebox' style='width:98%;height:92%;border:0px solid red;' src='"
		+url+"' scrolling='auto' frameborder='0' ></iframe>";
    s_html+="  </div>"; 

	
	s_html+="</div>";
	
	//alert(s_html);
    $("#id_div_temp").html(s_html);
	$("#id_div_temp").css("display","block");
	$("#id_div_temp0").css("display","block");
	
}



function messagebox_show_black(url,include_close){
     
	var s_html= "";
	s_html+="<div style='text-align:center;'>";
 
	if(include_close=="1"){
		s_html+="  <div style='height:30px;text-align:right; line-height:20px; margin:0px; padding:0px;margin-right:0px; background-color:black;'>"
		s_html+="    <a href=\"javascript:messagebox_close();\" style='font-size:13px; color:#BA9468;'>[×]</a>　";
		s_html+="  </div>"; 
	}

	s_html+="  <div>"; 
	s_html+="  <iframe id='id_iframe_messagebox_black' style='width:100%;height:550px;border:0px solid red;' src='"+url+"' scrolling='auto' frameborder='0' ></iframe>";
    s_html+="  </div>"; 

	
	s_html+="</div>";
	
	//alert(s_html);
	
	
	
	$("#id_div_temp").css("border","0px solid green");
	
	$("#id_div_temp").css("background-color","black");
	
	
	$("#id_div_temp").css("padding","0px");
	
	
    $("#id_div_temp").html(s_html);
	$("#id_div_temp").css("display","block");
	$("#id_div_temp0").css("display","block");
	
	
	
	 /*
    var s_html= "";
	s_html+="<div>";
 
	if(include_close=="1"){
		s_html+="  <div style='height:30px;text-align:right; line-height:20px; margin:0px; padding:0px;background-color:black;margin-right:5px;'>"
		s_html+="    <a href=\"javascript:messagebox_close_black();\" style='background-color:black;font-size:13px; color:#BA9468;'>[×]</a>";
		s_html+="  </div>"; 
	}
	s_html+="  <iframe style='width:100%;height:550px;' src='"+url+"' scrolling='auto' frameborder='0'></iframe>";
	s_html+="</div>";
	
	//alert(s_html);
    $("#id_div_temp_pic").html(s_html);
	$("#id_div_temp_pic").css("display","block");
	$("#id_div_temp0_pic").css("display","block");
	*/
	
}

/*
function messagebox_close_black(){
    $("#id_div_temp_pic").html("");
	$("#id_div_temp_pic").css("display","none");
	$("#id_div_temp0_pic").css("display","none");

}
*/



function messagebox_show_small(url,include_close){
     
	var s_html= "";
	s_html+="<div style='text-align:center;'>";
 
	if(include_close=="1"){
		s_html+="  <div class='div_messagebox_title'>"
		s_html+="    <a href=\"javascript:messagebox_close();\"   class='a_messagebox_close'><img src='../img/close.gif' /></a>　";
		s_html+="  </div>"; 
	}

	s_html+="  <div id='id_div_messagebox_show_small_client'>"; 
	s_html+="  <iframe id='id_iframe_messagebox_black' style='width:100%;height:90%;border:0px solid red;' src='"+url+"' scrolling='no' frameborder='0' ></iframe>";
    s_html+="  </div>"; 

	
	s_html+="</div>";
	
	s_html+="<div>";
	/*
    s_html+="<script>";
	s_html+="	var divHeight = document.getElementById('id_div_temp').style.height;";
	
	s_html+="	alert(divHeight);";
	s_html+="	document.getElementById('id_iframe_messagebox_black').style.height= divHeight; ";
	s_html+="</script>";
	s_html+="</div>";
	*/
	//alert(s_html);
	
	
	
	$("#id_div_temp").css("border","2px solid #7eadd9");
	$("#id_div_temp").css("border-top","1px solid #7eadd9");
	
	$("#id_div_temp").css("background-color","white");
	
	$("#id_div_temp").css("width","80%");
	$("#id_div_temp").css("height","80%");

	//$("#id_div_temp").css("margin-left","100px!important");
	
	
	$("#id_div_temp").css("padding","0px");
	
	
    $("#id_div_temp").html(s_html);
	
	$("#id_div_temp").css("display","block");
	$("#id_div_temp0").css("display","block");
	
	
	
	 /*
    var s_html= "";
	s_html+="<div>";
 
	if(include_close=="1"){
		s_html+="  <div style='height:30px;text-align:right; line-height:20px; margin:0px; padding:0px;background-color:black;margin-right:5px;'>"
		s_html+="    <a href=\"javascript:messagebox_close_black();\" style='background-color:black;font-size:13px; color:#BA9468;'>[×]</a>";
		s_html+="  </div>"; 
	}
	s_html+="  <iframe style='width:100%;height:550px;' src='"+url+"' scrolling='auto' frameborder='0'></iframe>";
	s_html+="</div>";
	
	//alert(s_html);
    $("#id_div_temp_pic").html(s_html);
	$("#id_div_temp_pic").css("display","block");
	$("#id_div_temp0_pic").css("display","block");
	*/
	
}


function messagebox_close(){
	    $("#id_div_temp").html("");
		$("#id_div_temp").css("display","none");
		$("#id_div_temp0").css("display","none");
		//window.location.reload();
	
}


function messagebox_close_and_reload(){
    $("#id_div_temp").html("");
	$("#id_div_temp").css("display","none");
	$("#id_div_temp0").css("display","none");
	 window.location.reload();

}


//==================================================================





//======begin==大字典处理 ==========================================================

function get_dict(id_input,tablename,fieldname_dm,filedname_mc,in_input_dm,id_input_mc){
    // alert(id_input_mc);
	var url="../vm_util_dict/c.jsp?"
		+"tablename_dict="+tablename+"&fieldname_dm="+fieldname_dm
	    +"&fieldname_mc="+filedname_mc+"&id_input_dm="+in_input_dm+"&id_input_mc="+id_input_mc+"&_z="+get_guid32()+"";

    //alert(url);

    messagebox_show_small(url,"1");
}

//======end ==大字典处理 ==========================================================






//=====begin=小字典处理===================================================

function set_smalldict_select_init_value(id_select,id_input_dm,id_input_mc){

    if(document.getElementById(id_input_dm)!=null){
	  select_SelectItemByValue(document.getElementById(id_select),document.getElementById(id_input_dm).value);
	}
    if(document.getElementById(id_input_mc)!=null){
	  select_SelectItemByText(document.getElementById(id_select),document.getElementById(id_input_mc).value);
	}

	//select_SelectItemByText(document.getElementById('id_input_ryxb_select'),document.getElementById('id_input_ryxb').value);

}

function set_smalldict_value_from_select_to_input(dm,mc,id_input_dm,id_input_mc){

    if(id_input_dm!=""){
		if(document.getElementById(id_input_dm)!=null){
		   document.getElementById(id_input_dm).value=dm;
		   //	  select_SelectItemByValue(document.getElementById(id_select),document.getElementById(id_input_dm).value);
		}
	}
    if(id_input_mc!=""){
		if(document.getElementById(id_input_mc)!=null){
		   document.getElementById(id_input_mc).value=mc;
		  //select_SelectItemByText(document.getElementById(id_select),document.getElementById(id_input_mc).value);
	    }
	}

}


//=====end=小字典处理===================================================












//========行政区划-街镇-居委级联======================================

function set_jiezheng_by_xzqh(_xzqh_dm,id_select_jiezheng,id_input_dm,id_input_mc){
	    var url_ashx_c="../dict/get_option_jiezheng.jsp?_xzqh_dm="+_xzqh_dm+"&_="+get_guid32();
	    var xml_data_c="";
	    $.post(
			url_ashx_c,
			xml_data_c,
			function(msg_xml_info_return){
		     //set_list_info_by_xml_info_cq_jwzd(msg_xml_info_return);
				//alert(msg_xml_info_return);
				$("#"+id_select_jiezheng).html(msg_xml_info_return);
				$("#"+id_input_dm).val("");
				$("#"+id_input_mc).val("");
		});  
	
}



function set_juwei_by_jiezheng(_jiezheng_dm,id_select_juwei,id_input_dm,id_input_mc){
	    var url_ashx_c="../dict/get_option_juwei.jsp?_jiezheng_dm="+_jiezheng_dm+"&_="+get_guid32();
	    var xml_data_c="";
	    $.post(
			url_ashx_c,
			xml_data_c,
			function(msg_xml_info_return){
		     //set_list_info_by_xml_info_cq_jwzd(msg_xml_info_return);
				//alert(msg_xml_info_return);
				$("#"+id_select_juwei).html(msg_xml_info_return);
				$("#"+id_input_dm).val("");
				$("#"+id_input_mc).val("");
		});  
	
}
//======end 行政区划-街镇-居委级联======================================================


//============大字典处理，小框=========================================================

function set_bigdict_value(_zdid,_zddm,_zdmc,_id_input_dm,_id_input_mc){
	
	
	
	
}




//============end 大字典处理，小框=======================================================================