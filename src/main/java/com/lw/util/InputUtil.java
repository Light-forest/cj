package com.lw.util;

import java.io.IOException;
import java.io.ByteArrayOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.ServletInputStream;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sun.misc.BASE64Decoder;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;



public class InputUtil {

	public static String  get_crud_msg(int i_res,String oper,String error){
		String s1="";
		if(i_res==1){s1= oper+"ok!"; }else{
			  s1 = "false！"+String.valueOf(i_res)+error;
		}
		s1= s1.replace("add", "新增");
		s1=s1.replace("insert","新增");
		s1=s1.replace("remove","删除");
		s1=s1.replace("delete","删除");
		s1=s1.replace("modify","修改");
		s1=s1.replace("update","修改");
		s1=s1.replace("list","查询"  );
		s1=s1.replace("query","查询" );
		s1=s1.replace("ok","成功"    );
		s1=s1.replace("true","成功"  );
		s1=s1.replace("false","失败" );
        return s1;

	}
	public static String  get_crud_msg(int i_res,String oper){
		return InputUtil.get_crud_msg(i_res,oper,"");

	}

	public static String get_request_value_url(HttpServletRequest request,
			String name_input) {
		if (request.getParameter(name_input) == null) {
			return "";
		}

		String val_s = request.getParameter(name_input).toString();
		String val_s1 = val_s;
		// System.out.println(val_s1);
		try {

			val_s1 = new String(val_s1.getBytes("iso-8859-1"), "utf-8");
			// System.out.println(val_s1);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// try {
		// val_s1=new String(val_s1.getBytes("iso-8859-1"),"gbk");
		// val_s1=java.net.URLDecoder.decode(val_s1 ,"GB2312");
		// s = java.net.URLDecoder.decode(s,"");

		// } catch (UnsupportedEncodingException e) {
		// TODO Auto-generated catch block
		// e.printStackTrace();
		// }

		/*
		 * try{ byte B[]=val_s.getBytes("ISO-8859-1"); val_s1=new String(B);
		 * 
		 * }catch(Exception ex){ val_s1=val_s; }
		 */
		val_s1 = val_s1.replace("'", "＇");
		val_s1 = val_s1.replace("'", "＇");
		val_s1 = val_s1.replace("'", "＇");
		val_s1 = val_s1.replace("'", "＇");

		val_s1 = val_s1.replace("'", "＇");
		val_s1 = val_s1.replace("<", "＜");
		val_s1 = val_s1.replace(">", "＞");
		val_s1 = val_s1.replace("＂", "\"");
		val_s1 = val_s1.replace("&", "＆");
		val_s1 = val_s1.replace(";", "；");
		val_s1 = val_s1.replace("\"", "“");

		return val_s1;

	}

	public static String get_request_value(HttpServletRequest request,
			String name_input) {
		if (request.getParameter(name_input) == null) {
			return "null";
		}

		String val_s = request.getParameter(name_input).toString();

		String val_s1 = val_s;

		/*
		 * try{ byte B[]=val_s.getBytes("ISO-8859-1"); val_s1=new String(B);
		 * 
		 * }catch(Exception ex){ val_s1=val_s; }
		 */
		// if(name_input.equals("name_input_con_AffairName")){
		// return val_s1;

		// }

		val_s1 = val_s1.replace("'", "＇");
		val_s1 = val_s1.replace("<", "＜");
		val_s1 = val_s1.replace(">", "＞");
		val_s1 = val_s1.replace("＂", "\"");
		val_s1 = val_s1.replace("&", "＆");
		val_s1 = val_s1.replace(";", "；");
		val_s1 = val_s1.replace("\"", "“");

		// val_s1 = val_s1.replace("'", "＇");
		// val_s1 = val_s1.replace("'", "＇");
		// val_s1 = val_s1.replace("'", "＇");
		// val_s1 = val_s1.replace("'", "＇");

		return val_s1;

	}



	public static int get_s_len(String s) {
		return s.length();
	}

	public static Date get_date_by_string(String s_date) {

		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Date dt1;
		try {
			dt1 = sf.parse(s_date);
			return dt1;
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return null;
	}

	public static boolean IsStartAndEndTime(String startdate, String enddate,
			String date) throws Exception {

		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		Date dt1 = sf.parse(startdate);
		Date dt2 = sf.parse(enddate);
		Date dt3 = sf.parse(date);
		if (dt3.before(dt1) || dt3.after(dt2)) {
			return false;
		}

		return true;
	}

	static public boolean is_alpha_daoqi() {
		try {
			String s_now = InputUtil.get_date_bz();
			// message_box.show_message(this, s_now);
			// s_now="2014-11-12";
			if (!IsStartAndEndTime("2014-09-01", "2014-11-01", s_now)) {
				return true;
			}
			return false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return true;
	}

	public static String get_substring(String s, int len) {
		String sfzhm1 = s;
		if (sfzhm1.length() < len) {
			return sfzhm1;
		}
		String s1 = sfzhm1.substring(0, len);
		String s2 = s1 + "...";
		return s2;

	}

	public static String get_sfzhm_14(String sfzhm) {
		String sfzhm1 = sfzhm;
		if (sfzhm1.length() < 18) {
			return sfzhm;
		}
		String s1 = sfzhm1.substring(0, 14);
		String s2 = s1 + "****";
		return s2;

	}

	public static String get_html_mtxx_pcdj(String pcdj) {

		String s = "";
		if (pcdj.equals("简易")) {
			s += "<img src='../main/images/blue.gif' height='18' width='18'/>";

		}
		if (pcdj.equals("一般")) {
			s += "<img src='../main/images/chen.gif'  height='18' width='18'/>";

		}
		if (pcdj.equals("复杂")) {
			s += "<img src='../main/images/red.gif' height='18' width='18'/>";

		}
		return s;
	}

	public static String get_html_mtxx_cqyj(String val) {

		String s = "";
		s += "<img src='../main/images/green.gif' height='18' width='18'/>";

		return s;
	}

	// public static String
	// get_bigdict_2_div_html("mzhz","d_mz","id_input_mzdm","_id_input_mc"){
	public static String get_bigdict_2_div_html(String fieldname,
			String _dictname, String _id_input_dm, String _id_input_mc,
			String _value, String _con) {
		/*
		 * <!--大字典弹出式选择框的处理--- --> <img src='../img/dict.gif'
		 * onClick="$('#id_div_dict_mzhz').css('display','');"
		 * class="img_dict"/> <br/> <div id="id_div_dict_mzhz" style=
		 * "position:absolute; z-index:2000; width:300px;height:320px;border:2px solid skyblue; background-color:skyblue;margin-top:4px; margin-left:1px;"
		 * > <div style="height:16px;"> <div style=
		 * "float:right; width:16px;height:16px;line-height:16px;font-weight:bold;"
		 * > <a style="font-weight:bold;font-size:16px;" href="#"
		 * onClick="$(this).parent().parent().parent().css('display','none');"
		 * >×</a>
		 * 
		 * </div> </div> <iframe src=
		 * "../dict/dict.jsp?_dict_name=d_mz&_id_input_dm=id_input_mzdm&_id_input_mc=id_input_mzhz&_value=<%=val_mzhz %>&_con=&_id_div_dict=id_div_dict_mzhz"
		 * style="width:300px; height:300px;">
		 * 
		 * </iframe> </div>
		 * 
		 * 
		 * <!--end 大字典弹出式选择框的处理----->
		 */
		String _con1 = InputUtil.get_string_to_BASE64(_con);
		String s = "";
		s += "<!--大字典弹出式选择框的处理--- -->  ";
		s += "<script language='javascript'>";
		s += "$('#id_input_'+" + fieldname
				+ ").parent().css('position','relative');";
		s += "$('#id_input_'+" + fieldname
				+ ").css('background-color','skyblue');";

		s += "";
		s += "</script>";
		s += "";
		s += "";
		s += "";

		String id_iframe = "id_iframe_" + InputUtil.get_uuid();
		String src_iframe = "../dict/dict.jsp?_dict_name=" + _dictname
				+ "&_id_input_dm=" + _id_input_dm + "&_id_input_mc="
				+ _id_input_mc + "&_value=" + _value + "&_con=" + _con1
				+ "&_id_div_dict=id_div_dict_" + fieldname + "";

		s += "   <img src='../img/dict.gif' onClick=\"$('#id_div_dict_"
				+ fieldname + "').css('display','');document.getElementById('"
				+ id_iframe + "').src='" + src_iframe
				+ "' \" class=\"img_dict\"/>";
		s += "  <br/> ";

		s += "  <div id=\"id_div_dict_" + fieldname + "\"   ";
		s += "    style=\"position:absolute; z-index:2000; width:300px;height:320px;border:2px solid skyblue; background-color:skyblue;margin-top:4px; margin-left:1px;display:none;\"> ";

		s += "  <div style=\"height:16px;\"> ";
		s += "  <div style=\"float:right; width:16px;height:16px;line-height:16px;font-weight:bold;\">";
		s += "     <a style=\"font-weight:bold;font-size:16px;\" href=\"#\" onClick=\"$(this).parent().parent().parent().css('display','none');\">×</a>";
		s += "     ";
		s += "     </div>";
		s += "  </div>";

		s += "  <iframe id='" + id_iframe + "' src=\"\" ";
		s += "   style=\"width:300px; height:300px;\">";
		s += "  ";
		s += "  </iframe>";
		s += "  </div> ";
		s += "  ";
		s += "  ";
		s += "  <!--end 大字典弹出式选择框的处理----->";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		s += "";
		return s;
	}

	public static String get_uuid() {
		String uuid = UUID.randomUUID().toString();
		return uuid;
	}
	public static String get_guid() {
		String uuid = UUID.randomUUID().toString();
		return uuid;
	}
	public static String get_date_bz() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
		return formatter.format(new Date());
	}

	public static String get_datetime_bz() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return formatter.format(new Date());
	}
	public static String get_datetime_haomiaoStr() {
		SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmssSSS");
		return formatter.format(new Date());
	}
	public static String getPostContent(HttpServletRequest request) {
		try {
			ServletInputStream is = request.getInputStream();
			ByteArrayOutputStream baos = null;
			baos = new ByteArrayOutputStream();
			int iLength = 1024;
			int bytesRead = 0;
			byte[] buff = new byte[iLength];
			while (true) {
				bytesRead = is.read(buff);
				if (bytesRead < 1)
					break;
				baos.write(buff, 0, bytesRead);
			}
			return new String(baos.toByteArray(), "utf-8");
		} catch (Exception e) {
			return "exception";
		}
	}


	public static String get_map_val(Map map, String fieldname) {
		Object obj = map.get(fieldname.toLowerCase());
		if (obj == null) {
			return "";
		}
		String val_s = (String) map.get(fieldname.toLowerCase()).toString();

		if (fieldname.equals("sfzh")) {

			val_s = InputUtil.get_sfzhm_14(val_s);
		}
		return val_s;
	}

	public static String get_list_val(List list, int i, String fieldname) {

		if (i >= list.size()) {
			return "";
		}
		Map map = (Map) list.get(i);
		return get_map_val(map, fieldname);

	}

	public static String get_attr_val_str(Object attr) {
		 if(attr==null) {return "";}
		 return attr.toString();
	}

	@SuppressWarnings("unchecked")
	public static void request_add_key_value(HttpServletRequest request,
			String key, String value) {
		if (request.getParameter(key) == null) {
			// Map<String, String> map = new HashMap<String, String>();
			Map map = request.getParameterMap();
			map.put(key, value);

		}
	}

	public static String get_string_to_BASE64(String s) {
		if (s == null)
			return null;
		return (new sun.misc.BASE64Encoder()).encode(s.getBytes());
	}

	// 将 BASE64 编码的字符串 s 进行解码
	public static String get_string_From_BASE64(String s) {
		if (s == null)
			return null;
		BASE64Decoder decoder = new BASE64Decoder();
		try {
			byte[] b = decoder.decodeBuffer(s);
			return new String(b);
		} catch (Exception e) {
			return null;
		}
	}

	/*
	 * private static String get_rybh(String val_bylx) { // 2 09 01 重度精神病人
	 * 一般精神病人 // 2 09 02 重度精神病人 正在肇事肇祸精神病人
	 * 
	 * if(val_bylx.equals("一般精神病人")){ return
	 * InputUtil.get_max_bh_next("ts_zdjsbr","rybh like '20901%' ","rybh"); }
	 * 
	 * if(val_bylx.equals("正在肇事肇祸精神病人")){ return
	 * InputUtil.get_max_bh_next("ts_zdjsbr","rybh like '20902%' ","rybh"); }
	 * return ""; }
	 */
	/*
	 * public static String get_max_bh_next(String tablename, String con, String
	 * fieldname) { String
	 * sql="select max("+fieldname+")  as m from "+tablename+" where "+con+"";
	 * System.out.println(sql); List list=dao.query_sql_and_return_list(sql);
	 * 
	 * String s1=InputUtil.get_list_val(list, 0, "m"); if(s1.equals("")){return
	 * "000001";}
	 * 
	 * if(s1.length()>6){ s1=s1.substring(s1.length()-6); }
	 * 
	 * String s2= add_6wei_jia_1(s1); return s2; }
	 * 
	 * private static String add_6wei_jia_1(String s1) { int i=0; try{
	 * i=Integer.parseInt(s1); }catch(Exception e2){
	 * 
	 * } i++; String s2=String.valueOf(i);
	 * 
	 * String s3="000000"+s2; String s4=s3.substring(s3.length()-6);
	 * 
	 * return s4; }
	 */

//	public static String get_new_bh_6(String mc2, String tablename, String con,
//			String fieldname) {
//		String s1 = get_5_first_of_bh_6(mc2);
//		String s2 = get_max_bh_next(tablename, con, fieldname);
//		return s1 + s2;
//	}

//	public static String get_new_bh_5(String mc2, String tablename, String con,
//			String fieldname) {
//		String s1 = get_5_first_of_bh_5(mc2);
//		String s2 = get_max_bh_next(tablename, con, fieldname);
//		return s1 + s2;
//	}
//
//	public static String get_new_bh(String mc2, String tablename, String con,
//			String fieldname) {
//		String s1 = get_5_first_of_bh(mc2);
//		String s2 = get_max_bh_next(tablename, con, fieldname);
//		return s1 + s2;
//	}

//	public static String get_5_first_of_bh(String mc2) {
//		// 根据二级字典名称获取前五位编号。
//		String s = dao.query_and_return_value("d_bh", "zdmc='" + mc2 + "'",
//				"zddm");
//		if (s.equals("")) {
//			String s2 = mc2.split("\\-")[1];
//			s = dao.query_and_return_value("d_bh", "zdmc='" + s2 + "'", "zddm");
//		}
//		return s;
//
//	}
//
//	public static String get_5_first_of_bh_6(String mc2) {
//		// 根据二级字典名称获取前五位编号。
//		String s = dao.query_and_return_value("d_bh", "zdmc='" + mc2
//				+ "' and zdid like '6%' ", "zddm");
//		if (s.equals("")) {
//			String s2 = mc2.split("\\-")[1];
//			s = dao.query_and_return_value("d_bh", "zdmc='" + s2
//					+ "' and zdid like '6%' ", "zddm");
//		}
//		return s;
//
//	}
//
//	public static String get_5_first_of_bh_5(String mc2) {
//		// 根据二级字典名称获取前五位编号。
//		String s = dao.query_and_return_value("d_bh", "zdmc='" + mc2
//				+ "' and zdid like '5%' ", "zddm");
//		if (s.equals("")) {
//			String s2 = mc2.split("\\-")[1];
//			s = dao.query_and_return_value("d_bh", "zdmc='" + s2
//					+ "' and zdid like '5%' ", "zddm");
//		}
//		return s;
//
//	}
//
//	public static String get_max_bh_next(String tablename, String con,
//			String fieldname) {
//		String sql = "select max(" + fieldname + ")  as m from " + tablename
//				+ " where  (1=1)  and (" + con + ") ";
//		System.out.println(sql);
//
//		List list = dao.query_sql_and_return_list(sql);
//
//		String s1 = InputUtil.get_list_val(list, 0, "m");
//		if (s1.equals("")) {
//			return "000001";
//		}
//
//		if (s1.length() > 6) {
//			s1 = s1.substring(s1.length() - 6);
//		}
//
//		String s2 = add_6wei_jia_1(s1);
//		return s2;
//	}
	private static String add_6wei_jia_1(String s1) {
		int i = 0;
		try {
			i = Integer.parseInt(s1);
		} catch (Exception e2) {

		}
		i++;
		String s2 = String.valueOf(i);

		String s3 = "000000" + s2;
		String s4 = s3.substring(s3.length() - 6);

		return s4;
	}

//	public static String get_html_photo(String _wtid) {
//
//		String sql = "select * from cms_fjxx where fuid='" + _wtid
//				+ "' order by fjsj desc";
//		List list = dao.query_sql_and_return_list(sql);
//
//		String s = "";
//		for (int i = 0; i < list.size(); i++) {
//			Map map = (Map) list.get(i);
//
//			String val_fjid = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "fjid")); // 附件编码
//			String val_fuid = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "fuid")); // 父表编码
//			String val_fjlx = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "fjlx")); // 附件类型
//			String val_fjwj = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "fjwj")); // 附件文件
//			String val_fjsj = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "fjsj")); // 附件时间
//			String val_fjsm = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "fjsm")); // 附件说明
//			String val_bz00 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz00")); // 备注项00
//			String val_bz01 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz01")); // 备注项01
//			String val_bz02 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz02")); // 备注项02
//			String val_bz03 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz03")); // 备注项03
//			String val_bz04 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz04")); // 备注项04
//			String val_bz05 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz05")); // 备注项05
//			String val_bz06 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz06")); // 备注项06
//			String val_bz07 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz07")); // 备注项07
//			String val_bz08 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz08")); // 备注项08
//			String val_bz09 = InputUtil.get_db_value(InputUtil.get_map_val(
//					map, "bz09")); // 备注项09
//
//			s += "<div >";
//			s += "<img src='../../zppic/"
//					+ val_fjwj
//					+ "' style='width:500px; border:1px solid #ddd; padding:1px;' />";
//
//			s += "</div>";
//
//			// s += "<td class='qry_td1'>" + val_fjid + "&nbsp;</td>"; // 附件编码
//			// s +=
//			// "<td class='qry_td1'><a href=\"javascript:btn_detail_click('" +
//			// val_fjid + "');\">" + val_fuid + "</a>&nbsp;</td>"; // 父表编码
//			// s += "<td class='qry_td1'>" + val_fjlx + "&nbsp;</td>"; // 附件类型
//			// s += "<td class='qry_td1'>" + val_fjwj + "&nbsp;</td>"; // 附件文件
//			// s += "<td class='qry_td1'>" + val_fjsj + "&nbsp;</td>"; // 附件时间
//			// s += "<td class='qry_td1'>" + val_fjsm + "&nbsp;</td>"; // 附件说明
//			// //s += "<td class='qry_td1'>" + val_bz00 + "&nbsp;</td>"; //
//			// 备注项00
//			// s += "<td class='qry_td1'>" + val_bz01 + "&nbsp;</td>"; // 备注项01
//			// s += "<td class='qry_td1'>" + val_bz02 + "&nbsp;</td>"; // 备注项02
//			// s += "<td class='qry_td1'>" + val_bz03 + "&nbsp;</td>"; // 备注项03
//			// s += "<td class='qry_td1'>" + val_bz04 + "&nbsp;</td>"; // 备注项04
//			// s += "<td class='qry_td1'>" + val_bz05 + "&nbsp;</td>"; // 备注项05
//			// s += "<td class='qry_td1'>" + val_bz06 + "&nbsp;</td>"; // 备注项06
//			// s += "<td class='qry_td1'>" + val_bz07 + "&nbsp;</td>"; // 备注项07
//			// s += "<td class='qry_td1'>" + val_bz08 + "&nbsp;</td>"; // 备注项08
//			// s += "<td class='qry_td1'>" + val_bz09 + "&nbsp;</td>"; // 备注项09
//
//		}
//		return s;
//	}

	public static List get_list_from_str_data(String s) {
		List list = new ArrayList();
		String[] s1 = s.split(";");
		for (int i = 0; i < s1.length; i++) {
			String s2 = s1[i];
			String[] s3 = s2.split("\\|");
			Map map = new HashMap();
			for (int j = 0; j < s3.length; j++) {
				String fieldname = "field" + String.valueOf(j);
				String fieldvalue = s3[i];
				map.put(fieldname, fieldvalue);
			}
			list.add(map);
		}
		return list;
	}

	public static String get_input_value_inner(String s_input){
	 		String val_s1=s_input;
			val_s1 = val_s1.replace("'", "＇");
			val_s1 = val_s1.replace("<", "＜");
			val_s1 = val_s1.replace(">", "＞");
			val_s1 = val_s1.replace("\"", "＂");
			val_s1 = val_s1.replace("&", "＆");
			val_s1 = val_s1.replace(";",  "；");
			val_s1 = val_s1.replace("\\", "＼");
			val_s1 = val_s1.replace(":", "：");

//			val_s1 = val_s1.replace("\r\n", "＜br/＞");
//			val_s1 = val_s1.replace("\n\r", "＜br/＞");
//			val_s1 = val_s1.replace("\r", "＜br/＞");
//			val_s1 = val_s1.replace("\n", "＜br/＞");

//			val_s1 = val_s1.replaceAll("(\r\n)", "＜br/＞");
//			val_s1 = val_s1.replaceAll("(\n\r)", "＜br/＞");
//			val_s1 = val_s1.replaceAll("(\n)", "＜br/＞");
//			val_s1 = val_s1.replaceAll("(\r)", "＜br/＞");
//			val_s1 = val_s1.replaceAll("(\t)", "　");

		val_s1 = val_s1.replaceAll("(\r\n)", "");
		val_s1 = val_s1.replaceAll("(\n\r)", "");
		val_s1 = val_s1.replaceAll("(\n)", "");
		val_s1 = val_s1.replaceAll("(\r)", "");
		val_s1 = val_s1.replaceAll("(\t)", "　");


			return val_s1;

	}

	public static String get_input_value(Object obj){
		if(obj==null){return "";}
		return get_input_value_inner(obj.toString());

	}
	public static String get_db_value(String val_s_db) {
		String val_s1 = val_s_db;
		val_s1 = val_s1.replace("＇", "'");
		val_s1 = val_s1.replace("＜","<");
		val_s1 = val_s1.replace("＞",">");
		val_s1 = val_s1.replace("＂","\"");
		val_s1 = val_s1.replace("＆","&");
		val_s1 = val_s1.replace("；",";");
		val_s1 = val_s1.replace("＼", "\\");
		val_s1 = val_s1.replace("：", ":");

		// val_s1=val_s1.replace("'","＇");
		// val_s1=val_s1.replace("'","＇");
		// val_s1=val_s1.replace("'","＇");

		return val_s1;

	}

//	public static String get_uuid(){
//		String uuid=UUID.randomUUID().toString();
//		return uuid;
//	}


	public static String get_val_of_field(List list,int i,String fieldname){
		if((list.size()-1)<i){return "";}
		try{
			Map map=(Map)list.get(i);
			String s_val=(String)map.get(fieldname);
			if(s_val.equals("null")){
				s_val="";
			}
			return s_val;
		}
		catch(Exception e1){
			return "";
		}
	}
	public static String get_val_of_first_row_field(List list,String fieldname){
		if(list==null){return "";}
		if(list.size()<=0){return "";}
		try{
			Map map=(Map)list.get(0);
			String s_val=(String)map.get(fieldname);
			if(s_val.equals("null")){

				s_val="";
			}

			if(fieldname.equals("sfzh")){
				s_val= InputUtil.get_sfzhm_14(s_val);
			}
			return s_val;
		}
		catch(Exception e1){
			return "";
		}
	}

	public static void  jsp_set_encoding(HttpServletRequest request, HttpServletResponse response)
	{
		try{
			request.setCharacterEncoding("UTF-8");
			response.setCharacterEncoding("UTF-8");
		}catch(Exception e){
			return;
		}
		return;
	}

	public static String get_path(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String path = request.getContextPath();
		return path;
	}

	public static String get_base_path(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException{
		String path = request.getContextPath();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

		// PrintWriter out= response.getWriter();
		return basePath;
	}
	public static String get_base_path_current(HttpServletRequest request, HttpServletResponse response,String path_short) {
		try{
			String path = request.getContextPath();

			String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
			String basePath_cur = basePath+path_short;


			return basePath_cur;
		}catch(Exception e){
			return "";

		}
	}

	public static String getRemoteHost(HttpServletRequest request){
		String ip = request.getHeader("x-forwarded-for");
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
			ip = request.getHeader("Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
			ip = request.getHeader("WL-Proxy-Client-IP");
		}
		if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)){
			ip = request.getRemoteAddr();
		}
		return ip.equals("0:0:0:0:0:0:0:1")?"127.0.0.1":ip;
	}

}
