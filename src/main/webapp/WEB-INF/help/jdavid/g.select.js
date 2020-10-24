// JScript 文件

function init_select_mc(id_select_mc,tablename,fieldname_dm,fieldname_mc){//仅放入名称
  //
     //alert(5);
     select_Clear(document.getElementById(id_select_mc));
  
    var p0="";                                               
    var p1=tablename;                                        
    var p2="";                                              
    var p3="order by "+fieldname_dm+" ";     
	
	//alert(13);
	
	var url_ashx_c=get_url_ashx_c(); 
	 //alert(url_ashx_c); 
	var xml_data_c=get_xml_data_c(p0,p1,p2,p3); 
	//alert(xml_data_c);
	//start_process();            
	$.post(url_ashx_c,xml_data_c,function(msg_xml_info_return){ 
                       //alert(msg_xml_info_return);
                // do something with xml
                        var rows_count=get_rows_count_form_xml_info(msg_xml_info_return);
                             //alert("用户名("+val_username+")可以使用！");
                        var Element_rows=get_root_Element_from_str_xml(msg_xml_info_return,"rows");
                        var Elements_row = Element_rows.getElementsByTagName("row");
                        select_AddItem(document.getElementById(id_select_mc),"-","");
                        for (var i_row = 0; i_row < Elements_row.length; i_row++) {
                                var Element_row = Elements_row[i_row];
                                var val_dm = Element_row.getAttribute(fieldname_dm.toLowerCase());
                                var val_mc = Element_row.getAttribute(fieldname_mc.toLowerCase());
                                
                                select_AddItem(document.getElementById(id_select_mc),val_mc,val_dm);
                                //var s_html="<option value=\""+dm+"\">"+mc+"</option>";
                                ///$("#id_bankno").append(s_html); 
                                //alert("登录成功!"+dl_memberno+"-"+dl_username);
                        }
                }
         ); 

  
}


function init_select_dm_mc(id_input_dm,id_select_mc,tablename,fieldname_dm,fieldname_mc){//仅放入名称，并且可以放入代码到另一个代码输入框
  //
  select_Clear(document.getElementById(id_select_mc));
  var  sql1 = "select distinct "+fieldname_dm+","+fieldname_mc+" from "+tablename+" group by "+fieldname_dm+","+fieldname_mc+" order by "+fieldname_dm+" ";
  //alert(sql1);
  var url_ashx="../q.ashx?q="+escape(sql1)+("&t="+getGuid32());
  //alert(url_ashx);
   $.get(
                url_ashx, 
                "",
                function(msg_xml_info_return){ 
                //alert(msg_xml_info_return);
                // do something with xml
                        var rows_count=get_rows_count_form_xml_info(msg_xml_info_return);
                             //alert("用户名("+val_username+")可以使用！");
                        var Element_rows=get_root_Element_from_str_xml(msg_xml_info_return,"rows");
                        var Elements_row = Element_rows.getElementsByTagName("row");
                        select_AddItem(document.getElementById(id_select_mc),"-","");
                        for (var i_row = 0; i_row < Elements_row.length; i_row++) {
                                var Element_row = Elements_row[i_row];
                                var val_dm = Element_row.getAttribute(fieldname_dm.toLowerCase());
                                var val_mc = Element_row.getAttribute(fieldname_mc.toLowerCase());
                                
                                select_AddItem(document.getElementById(id_select_mc),val_mc,val_dm);
                                
                                //var s_html="<option value=\""+dm+"\">"+mc+"</option>";
                                ///$("#id_bankno").append(s_html); 
                                //alert("登录成功!"+dl_memberno+"-"+dl_username);
                        }
                }
         ); 
   
   //
 
   $("#"+id_select_mc).change(function(){
    
      document.getElementById(id_input_dm).value
            =select_GetValue(document.getElementById(id_select_mc)); 
            
   });
}
function init_select_dm_mc_selector(id_select,id_input_dm,id_input_mc,tablename,fieldname_dm,fieldname_mc){
   //放入代码、名称到选择器中，可以把选中的值放到代码框和名称框中
   
  select_Clear(document.getElementById(id_select));
  
  var  sql1 = "select distinct "+fieldname_dm+","+fieldname_mc+" from "
        +tablename+" group by "+fieldname_dm+","+fieldname_mc+" order by "+fieldname_dm+" ";
  //alert(sql1);
  var url_ashx="../q.ashx?q="+escape(sql1)+("&t="+getGuid32());
  //alert(url_ashx);
   $.get(
                url_ashx, 
                "",
                function(msg_xml_info_return){ 
                //alert(msg_xml_info_return);
                // do something with xml
                        var rows_count=get_rows_count_form_xml_info(msg_xml_info_return);
                             //alert("用户名("+val_username+")可以使用！");
                        var Element_rows=get_root_Element_from_str_xml(msg_xml_info_return,"rows");
                        var Elements_row = Element_rows.getElementsByTagName("row");
                        select_AddItem(document.getElementById(id_select),"-","");
                        for (var i_row = 0; i_row < Elements_row.length; i_row++) {
                                var Element_row = Elements_row[i_row];
                                var val_dm = Element_row.getAttribute(fieldname_dm.toLowerCase());
                                var val_mc = Element_row.getAttribute(fieldname_mc.toLowerCase());
                                
                                select_AddItem(document.getElementById(id_select),val_mc,val_dm);
                                
                                //var s_html="<option value=\""+dm+"\">"+mc+"</option>";
                                ///$("#id_bankno").append(s_html); 
                                //alert("登录成功!"+dl_memberno+"-"+dl_username);
                        }
						if(document.getElementById(id_input_dm).value!=""){
					    	select_SelectItemByValue(document.getElementById(id_select),document.getElementById(id_input_dm).value);
						}
                }
         ); 
   
   //
 
   $("#"+id_select).change(function(){
    
      document.getElementById(id_input_dm).value
            =select_GetValue(document.getElementById(id_select)); 
	  document.getElementById(id_input_mc).value
            =select_GetText(document.getElementById(id_select)); 
            
   });
   
}

/*------------------------------------------------------
 *语言：JavaScript
 *说明：select元素javascript常用操作
 * 1.判断是否存在指定value的Item
 * 2.加入一个Item
 * 3.删除值为value的所有Item
 * 4.删除某一个index的选项
 * 5.更新第index项的value和text
 * 6.设置select中指定text的第一个Item为选中
 * 7.设置select中指定value的第一个Item为选中
 * 8.得到当前选中项的value
 * 9.得到当前选中项的index
 *  10.得到当前选中项的text
 * 11.清空所有选项
-------------------------------------------------------*/
//1.判断是否存在指定value的Item
function select_ExistValue(obj,value){
    for(var i=0;i<obj.options.length;i++){
        if(obj.options[i].value == value){
            return true;
        }
    }      
    return false;
} 
//2.加入一个Item
function select_AddItem(obj,text,value){
 var varItem = new Option(text,value);
 obj.options.add(varItem);
}
//3.删除值为value的所有Item
function select_RemoveItems(obj,value){
 for(var i=0;i<obj.options.length;i++){
  if(obj.options[i].value == ItemValue){
   obj.options.remove(i);
  }
 }        
}
//4.删除某一个index的选项
function select_RemoveItem(obj,index){
 obj.options.remove(index);
}

//5.更新第index项的value和text
function select_UpdateItem(obj,index,value,text){
 obj.options[index].value = value;
 obj.options[index].text = text;
}
        
//6.设置select中指定text的第一个Item为选中
function select_SelectItemByText(obj,text){    
    var isExit = false;
    for(var i=0;i<obj.options.length;i++){
        if(obj.options[i].text == text){
            obj.options[i].selected = true;
            return true;
        }
    }
 return false;
 
}
//7.设置select中指定value的第一个Item为选中
function select_SelectItemByValue(obj,value){    
    var isExit = false;
    for(var i=0;i<obj.options.length;i++){
        if(obj.options[i].value == value){
            obj.options[i].selected = true;
            return true;
        }
    }
 return false;
 
}
//8.得到当前选中项的value，index,text
function select_GetValue(obj){
 return obj.value; 
}
//9.得到当前选中项的index
function select_GetIndex(obj){
 return obj.selectedIndex; 
}
//10.得到当前选中项的text
function select_GetText(obj){
 return obj.options[obj.selectedIndex].text;
}
//11.清空所有选项
function select_Clear(obj){
 obj.options.length = 0; 
}

