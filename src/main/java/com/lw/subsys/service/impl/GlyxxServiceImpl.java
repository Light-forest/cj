package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.GlyxxMapper;
import com.lw.subsys.pojo.Glyxx;
import com.lw.subsys.service.GlyxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class GlyxxServiceImpl implements GlyxxService { //管理员信息
	@Autowired
	GlyxxMapper glyxxMapper;

	public int add(Glyxx glyxx){
		return glyxxMapper.add(glyxx);
	}
	public int delete(String id){
	  	return glyxxMapper.delete(id);
	}
	public int update(Glyxx glyxx){
		return glyxxMapper.update(glyxx);
	}

	public List<Glyxx> list(Glyxx glyxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(glyxx.getGlyid(),"glyid"); //管理员编码 
      s+= get_one_field_con(glyxx.getGlyzh(),"glyzh"); //管理员账号 
      s+= get_one_field_con(glyxx.getGlymc(),"glymc"); //管理员名称 
      s+= get_one_field_con(glyxx.getGlymm(),"glymm"); //管理员密码 
      s+= get_one_field_con(glyxx.getGlyyx(),"glyyx"); //管理员邮箱 
      s+= get_one_field_con(glyxx.getGlyzw(),"glyzw"); //管理员职位 
      s+= get_one_field_con(glyxx.getGlyjs(),"glyjs"); //管理员角色 
      s+= get_one_field_con(glyxx.getGlyms(),"glyms"); //管理员描述 
      s+= get_one_field_con(glyxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(glyxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(glyxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(glyxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(glyxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(glyxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(glyxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(glyxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(glyxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(glyxx.getBz09(),"bz09"); //备注项09 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return glyxxMapper.list(conOrderByPage);

	}

    public int total(Glyxx glyxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(glyxx.getGlyid(),"glyid"); //管理员编码 
      s+= get_one_field_con(glyxx.getGlyzh(),"glyzh"); //管理员账号 
      s+= get_one_field_con(glyxx.getGlymc(),"glymc"); //管理员名称 
      s+= get_one_field_con(glyxx.getGlymm(),"glymm"); //管理员密码 
      s+= get_one_field_con(glyxx.getGlyyx(),"glyyx"); //管理员邮箱 
      s+= get_one_field_con(glyxx.getGlyzw(),"glyzw"); //管理员职位 
      s+= get_one_field_con(glyxx.getGlyjs(),"glyjs"); //管理员角色 
      s+= get_one_field_con(glyxx.getGlyms(),"glyms"); //管理员描述 
      s+= get_one_field_con(glyxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(glyxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(glyxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(glyxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(glyxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(glyxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(glyxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(glyxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(glyxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(glyxx.getBz09(),"bz09"); //备注项09 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return glyxxMapper.total(con);
    }
	public Glyxx get(String id){
	  	return glyxxMapper.get(id);
	}

    private  String get_one_field_con(Object obj,String fieldname){
        if(obj!=(null)){
            if(!((String)obj).equals("")){
                return " and "+fieldname+" like '%"+(String)obj+"%' ";
            }
        }
        return "";
    }


}
