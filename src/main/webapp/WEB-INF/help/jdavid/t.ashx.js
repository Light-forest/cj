/*
function get_url_q_ashx_by_param(param0_value_list,param1_table_wiew,param2_where,param3_else){
    //alert(parem0_value_list);
    //if(!parem0_value_list){alert("get_q_url_ashx:parem0_value_list is null!");return "";}
    //if(!param1_table_wiew){alert("get_q_url_ashx:param1_table_wiew is null!");return "";}
    var p0="*";
    //alert(param0_value_list);
    if(Trim(param0_value_list)!=""){
        p0=param0_value_list;
    }
    //alert(p0);
    var  mql_sel = " sElEcT "+p0+" fRoM "+param1_table_wiew+" ";
    if(param2_where){
         mql_sel = mql_sel+" wHeRe "+param2_where+" ";
    }
    if(param3_else){
         mql_sel = mql_sel+" "+param3_else+" ";
    }
	//alert(mql_sel);
	var  url_ashx="../ashx/q.ashx?q="+escape(enc_me(mql_sel))+"&t="+getGuid32();
	return url_ashx;
}
function get_url_q_ashx_by_mql(mql){
	var  url_ashx="../ashx/q.ashx?q="+escape(enc_me(mql))+"&t="+getGuid32();
	//alert(url_ashx);
	return url_ashx;
}
function get_url_u_ashx_for_del(param0_table_wiew,param1_where){
    var  mql_del = " dElEtE fRoM "+param0_table_wiew+" wHeRe "+param1_where+" ";
    //alert(mql_del);
    var  url_ashx="../ashx/u.ashx?u="+escape(enc_me(mql_del))+"&t="+getGuid32();
    //alert(url_ashx);
	return url_ashx;
}


function get_url_u_ashx_by_param(table_name,array_param,array_value,s_con){
   var mql_upd="";
   var s1="uPdAtE  "+table_name+" sEt ";
   var s2="";
   //alert(s1);
   for(var i=0;i<array_param.length;i++){
	   s2+=" "+array_param[i]+" = '"+array_value[i]+"' ";
	   if(parseInt(i,10)!=parseInt((array_param.length-1),10)){
	     s2+=",";
	   }
   }
   
   var s3=" wHeRe "+s_con;
   mql_upd=s1+s2+s3;
   //alert(mql_upd);
   var url_ashx="../ashx/u.ashx?u="+escape(enc_me(mql_upd))+"&t="+getGuid32();
   return url_ashx;
}

function get_url_u_ashx_by_mql(mql){
	var  url_ashx="../ashx/u.ashx?u="+escape(enc_me(mql))+"&t="+getGuid32();
	//alert(url_ashx);
	return url_ashx;
}


function get_url_a_ashx_by_param(table_name,array_param,array_value,s_con){
   var mql_upd="";
   var s1="iNsErT iNtO "+table_name+"";
   
   var s2="";
   //alert(s1);
   for(var i=0;i<array_param.length;i++){
	   s2+=" "+array_param[i]+" ";
	   if(parseInt(i,10)!=parseInt((array_param.length-1),10)){
	     s2+=",";
	   }
   }
   
   var s3="";
   for(var i=0;i<array_value.length;i++){
	   s3+=" '"+array_value[i]+"' ";
	   if(parseInt(i,10)!=parseInt((array_value.length-1),10)){
	      s3+=",";
	   }
   }
   
    
   mql_upd=s1+"("+s2+") vAlUeS("+s3+")";
   //alert(mql_upd);
   var url_ashx="../ashx/a.ashx?a="+escape(enc_me(mql_upd))+"&t="+getGuid32();
   return url_ashx;
}

function get_url_a_ashx_by_mql(mql){
	var  url_ashx="../ashx/a.ashx?u="+escape(enc_me(mql))+"&t="+getGuid32();
	//alert(url_ashx);
	return url_ashx;
}
*/
/*

//构造jason数据包
function get_jason_data_z(table_name,array_param,array_value){
   var mql_upd="";
   var s1="iNsErT iNtO "+table_name+"";
   
   var s2="";
   //alert(s1);
   for(var i=0;i<array_param.length;i++){
	   s2+=" "+array_param[i]+" ";
	   if(parseInt(i,10)!=parseInt((array_param.length-1),10)){
	     s2+=",";
	   }
   }
   
   var s3="";
   for(var i=0;i<array_value.length;i++){
	   s3+=" '"+array_value[i]+"' ";
	   if(parseInt(i,10)!=parseInt((array_value.length-1),10)){
	      s3+=",";
	   }
   }
   
    
   mql_upd=s1+"("+s2+") vAlUeS("+s3+")";
   //alert(mql_upd);
   var jason_data="{mql:\""+escape(enc_me(mql_upd))+"\",yzm:\""+getGuid32()+"\"}";
   return jason_data;
}

//============================================

*/




//构造xml数据包===============================


function get_url_ashx_z(){
   var s_url="../"+"model_servlet/z.servlet";
   return s_url;
}

function get_url_ashx_s(){
   //var s_url="../"+"model_ashx/s.ashx";
   var s_url="../"+"model_servlet/s.servlet";
   return s_url;
}


function get_url_ashx_g(){
   //var s_url="../"+"model_ashx/g.ashx";
   var s_url="../"+"model_servlet/g.servlet";
   return s_url;
}

function get_url_ashx_c(){
   //var s_url="../"+"model_ashx/c.ashx";
   var s_url="../"+"model_servlet/c.servlet";
   return s_url;
}
function get_xml_data_z(table_name,array_param,array_value){
   var mql_upd="";
   var s1="iNsErT iNtO "+table_name+"";
   
   var s2="";
   //alert(s1);
   for(var i=0;i<array_param.length;i++){
	   s2+=" "+array_param[i]+" ";
	   if(parseInt(i,10)!=parseInt((array_param.length-1),10)){
	     s2+=",";
	   }
   }
   
   var s3="";
   for(var i=0;i<array_value.length;i++){
	   s3+=" '"+array_value[i]+"' ";
	   if(parseInt(i,10)!=parseInt((array_value.length-1),10)){
	      s3+=",";
	   }
   }
   
    
   mql_upd=s1+"("+s2+") vAlUeS("+s3+")";
   //alert(mql_upd);
   var xml_data="";
   xml_data+="<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>";
   xml_data+="<rows>";
   xml_data+="<val>";
   //xml_data+=escape(enc_me(mql_upd));
   xml_data+=(enc_me(mql_upd));
   xml_data+="</val>";
   xml_data+="<code>";
   xml_data+=getGuid32();
   xml_data+="</code>";
   xml_data+="</rows>";
   
   //alert(xml_data); 
   return xml_data;
}


function get_xml_data_c(param0_value_list,param1_table_wiew,param2_where,param3_else){
    //alert(parem0_value_list);
    //if(!parem0_value_list){alert("get_q_url_ashx:parem0_value_list is null!");return "";}
    //if(!param1_table_wiew){alert("get_q_url_ashx:param1_table_wiew is null!");return "";}
    var p0="*";
    //alert(param0_value_list);
    if(Trim(param0_value_list)!=""){
        p0=param0_value_list;
    }
    //alert(p0);
    var  mql_sel = " sElEcT "+p0+" fRoM "+param1_table_wiew+" ";
    if(param2_where){
         mql_sel = mql_sel+" wHeRe "+param2_where+" ";
    }
    if(param3_else){
         mql_sel = mql_sel+" "+param3_else+" ";
    }
	//alert(mql_sel);
    var xml_data="";
    xml_data+="<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>";
    xml_data+="<rows>";
    xml_data+="<val>";
    //xml_data+=escape(enc_me(mql_sel));
    xml_data+=(enc_me(mql_sel));
    
    xml_data+="</val>";
    xml_data+="<code>";
    xml_data+=getGuid32();
    xml_data+="</code>";
    xml_data+="</rows>";

    //alert(xml_data); 
    return xml_data;
}

function get_xml_data_g(table_name,array_param,array_value,s_con){
    var mql_upd="";
    var s1="uPdAtE "+table_name+" sEt ";
    var s2="";
    //alert(s1);
    for(var i=0;i<array_param.length;i++){
	   s2+=" "+array_param[i]+"='"+array_value[i]+"'";
	   if(parseInt(i,10)!=parseInt((array_param.length-1),10)){
	     s2+=",";
	   }
    }
   
    var s3=" wHeRe "+s_con;
    mql_upd=s1+s2+s3;
    //alert(mql_upd);
    var xml_data="";
    xml_data+="<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>";
    xml_data+="<rows>";
    xml_data+="<val>";
   // xml_data+=escape(enc_me(mql_upd));
    xml_data+=(enc_me(mql_upd));
    
    xml_data+="</val>";
    xml_data+="<code>";
    xml_data+=getGuid32();
    xml_data+="</code>";
    xml_data+="</rows>";

    //alert(xml_data); 
    return xml_data;
}
function get_xml_data_c_by_mql(mql_sel){
	//alert(mql_sel);
    var xml_data="";
    xml_data+="<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>";
    xml_data+="<rows>";
    xml_data+="<val>";
    //xml_data+=escape(enc_me(mql_sel));
    xml_data+=(enc_me(mql_sel));
    
    xml_data+="</val>";
    xml_data+="<code>";
    xml_data+=getGuid32();
    xml_data+="</code>";
    xml_data+="</rows>";

    //alert(xml_data); 
    return xml_data;
}

function get_xml_data_s(param0_table_wiew,param1_where){
    var  mql_del = " dElEtE fRoM "+param0_table_wiew+" wHeRe "+param1_where+" ";
    //alert(mql_del);
    var xml_data="";
    xml_data+="<?xml version=\"1.0\" encoding=\"utf-8\" standalone=\"yes\" ?>";
    xml_data+="<rows>";
    xml_data+="<val>";
    //xml_data+=escape(enc_me(mql_del));
    xml_data+=(enc_me(mql_del));
    
    xml_data+="</val>";
    xml_data+="<code>";
    xml_data+=getGuid32();
    xml_data+="</code>";
    xml_data+="</rows>";
    //alert(xml_data); 
    return xml_data;
}