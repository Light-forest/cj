$(document).ready(function() {
    // btn_query_click();
	// set_quanxian();

    init_select_gotopage();  //初始化转到第xx页的下拉框
    init_select_pagecount(); //选定每页记录数量下拉框
	init_paixu_flag();       //设置排序的标记
    init_show_msg();         //显示提示信息
});
function init_show_msg() {

    //var msg=  $("#div_msg_nr").html();//;

    var msg=  request.QueryString('msg');
    if(!msg){return;}
    if(msg.trim()==""){return;}
    //alert(msg);
    var s1= //unescape(msg)+decodeURIComponent(msg)+
        decodeURI(msg);
    alert(s1);
    s1=replace_piliang(s1,"add","新增"   );
    s1=replace_piliang(s1,"insert","新增");
    s1=replace_piliang(s1,"remove","删除");
    s1=replace_piliang(s1,"delete","删除");
    s1=replace_piliang(s1,"modify","修改");
    s1=replace_piliang(s1,"update","修改");
    s1=replace_piliang(s1,"list","查询"  );
    s1=replace_piliang(s1,"query","查询" );
    s1=replace_piliang(s1,"ok","成功"    );
    s1=replace_piliang(s1,"true","成功"  );
    s1=replace_piliang(s1,"false","失败" );
    s1=replace_piliang(s1,"%20"," "   );
    $("#div_msg_nr").html(s1);
    //$("#div_msg").css("display","");
}

function init_paixu_flag(){
    var orderbyfield=dvd_get_val("orderbyfield");
    var is_desc=true;
    if(orderbyfield.indexOf("desc")>=0){
    
    }else{
        is_desc=false;
    }
    var s1= replace_piliang(orderbyfield,"desc","").trim();
    var s2= replace_piliang(s1,"asc","").trim();

    var s3=s2.split(",")[0];
    if(!s3){return;}
    if(s3==""){return; }

    //▲▼
    var fieldhint=$("#a_"+s3).html();
    fieldhint=replace_piliang(fieldhint,"▲","");
    fieldhint=replace_piliang(fieldhint,"▼","");

    if(is_desc){
        $("#a_"+s3).html(fieldhint+"▼");
     }else{
        $("#a_"+s3).html(fieldhint+"▲");
     }

}
 

function btn_qry_click(){
    formlist.submit();
}

function btn_add_click(){
    var lmid=dvd_get_val("lmid");
    var s_url='add?lmid='+lmid+'&_='+get_guid32();
    alert(s_url);
    location=s_url;
}

function btn_del_click(id){
    if(!confirm('确定要删除该条数据吗?')){
        return;
    }
    var s_url='remove/'+id;
    location=s_url;
}

function btn_mod_click(id){
    var s_url='g.jsp?_id='+id+'&_='+get_guid32();
    location=s_url;
}

function btn_detail_click(id){
    var s_url='detail/'+id;
    window.open(s_url);
}

function btn_jieguo_click(id){
    open_bsmx(id);
    //var s_url='../cj_bsmx/c.jsp?_bsid='+id+'&_='+get_guid32();
    //window.open(s_url);
}

function btn_clear_click() {
	
}


function gotopage(s_start){
    //alert(s_start);
	if(!s_start){return;}
    document.getElementById("start").value=s_start;
    formlist.submit();
}
function gotopagePerior(){
    var count=document.getElementById("count").value;
    var i_count=parseInt(count);

    var start=document.getElementById("start").value;
    var i_start=parseInt(start);

    i_start=i_start-i_count;
    if(i_start<0){
        i_start=i_start+i_count;
    }
    gotopage(i_start.toString());
}
function gotopageNext(){
    var count=document.getElementById("count").value;
    var i_count=parseInt(count);

    var start=document.getElementById("start").value;
    var i_start=parseInt(start);

    i_start=i_start+i_count;

    var total=document.getElementById("total").value;
    var i_total=parseInt(total);

    if(i_start>=i_total){
        i_start= i_start-i_count;
    }

    gotopage(i_start.toString());
}
//▲▼
function paixu(fieldname){
     var fieldhint=$("#a_"+fieldname).html();
     fieldhint=replace_piliang(fieldhint,"▲","");
     fieldhint=replace_piliang(fieldhint,"▼","");

    var order_field_old=document.getElementById('orderbyfield').value;
    if(order_field_old.indexOf(fieldname)>=0){ //还是当前字段，反序
        if(order_field_old.indexOf("desc")>=0){
            document.getElementById('orderbyfield').value=fieldname+' asc ';
             $("#a_"+fieldname).html(fieldhint+"▲");
        }else{
            document.getElementById('orderbyfield').value=fieldname+' desc ';
            $("#a_"+fieldname).html(fieldhint+"▼");
        }
    }else{//换另外一个字段排序
        document.getElementById('orderbyfield').value=fieldname;
        $("#a_"+fieldname).html(fieldhint+"▲");
    }
    formlist.submit();
    return;
}


function init_select_gotopage(){

    var count=document.getElementById("count").value;
    var i_count=parseInt(count);

    var start=document.getElementById("start").value;
    var i_start=parseInt(start);

    var pageindex= i_start/i_count+1;

    var total=document.getElementById("total").value;
    var i_total=parseInt(total);

    var pagecount=((i_total-1)/i_count)+1;

    var s="<option value='1'></option>";

    for(var i=1;i<=pagecount;i++){

        if(pageindex==i){
            s+="<option value='"+i+"' selected>"+i+"</option>";

        }else{

            s+="<option value='"+i+"'>"+i+"</option>";
        }
    }
    // alert(s);

    $("#select_gotopage").html(s);


}

function init_select_pagecount(){
    var count=document.getElementById("count").value;
    select_SelectItemByValue(document.getElementById("select_pagecount"),count);
}



//设置权限
function set_quanxian(){
	var can_z=document.getElementById("id_input_can_z").value;
	var can_s=document.getElementById("id_input_can_s").value;
	var can_g=document.getElementById("id_input_can_g").value;
	var can_c=document.getElementById("id_input_can_c").value;
	var can_x=document.getElementById("id_input_can_x").value;

	if(can_z=="1"){$("#id_btn_add").css("display","");   }else{$("#id_btn_add").css("display","none");}
	if(can_s=="1"){$(".btn_del").css("display","");      }else{$(".btn_del").css("display","none");     }
	if(can_g=="1"){$(".btn_mod").css("display","");      }else{$(".btn_mod").css("display","none");     }
	if(can_c=="1"){$("#id_btn_qry").css("display","");$("#id_btn_clear").css("display",""); }else{$("#id_btn_qry").css("display","none");$("#id_btn_clear").css("display","none");}
	if(can_x=="1"){$(".btn_detail").css("display","");   }else{$(".btn_detail").css("display","none");  }
}




function btn_con_hide_click(){
	//alert('btn_con_hide_click');
	$('#id_div_con').css('display','none');
    $('#id_row_qry_btn').css('display','none');
}

function btn_con_show_click(){
	//alert('btn_con_show_click');
	$('#id_div_con').css('display','block');
    $('#id_row_qry_btn').css('display','block');
}
