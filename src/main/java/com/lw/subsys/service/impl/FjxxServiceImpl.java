package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.FjxxMapper;
import com.lw.subsys.pojo.Fjxx;
import com.lw.subsys.service.FjxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class FjxxServiceImpl implements FjxxService { //附件信息
	@Autowired
	FjxxMapper fjxxMapper;

	public int add(Fjxx fjxx){
		return fjxxMapper.add(fjxx);
	}
	public int delete(String id){
	  	return fjxxMapper.delete(id);
	}
	public int update(Fjxx fjxx){
		return fjxxMapper.update(fjxx);
	}

	public List<Fjxx> list(Fjxx fjxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
	  s+= get_one_field_con(fjxx.getFjid(),"fjid"); //附件编码
      s+= get_one_field_con(fjxx.getFuid(),"fuid"); //父表编码 
      s+= get_one_field_con(fjxx.getFjlx(),"fjlx"); //附件类型 
      s+= get_one_field_con(fjxx.getFjwj(),"fjwj"); //附件文件 
      s+= get_one_field_con(fjxx.getFjsj(),"fjsj"); //附件时间 
      s+= get_one_field_con(fjxx.getFjsm(),"fjsm"); //附件说明 
      s+= get_one_field_con(fjxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(fjxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(fjxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(fjxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(fjxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(fjxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(fjxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(fjxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(fjxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(fjxx.getBz09(),"bz09"); //备注项09 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return fjxxMapper.list(conOrderByPage);

	}

    public int total(Fjxx fjxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(fjxx.getFjid(),"fjid"); //附件编码 
      s+= get_one_field_con(fjxx.getFuid(),"fuid"); //父表编码 
      s+= get_one_field_con(fjxx.getFjlx(),"fjlx"); //附件类型 
      s+= get_one_field_con(fjxx.getFjwj(),"fjwj"); //附件文件 
      s+= get_one_field_con(fjxx.getFjsj(),"fjsj"); //附件时间 
      s+= get_one_field_con(fjxx.getFjsm(),"fjsm"); //附件说明 
      s+= get_one_field_con(fjxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(fjxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(fjxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(fjxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(fjxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(fjxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(fjxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(fjxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(fjxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(fjxx.getBz09(),"bz09"); //备注项09 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return fjxxMapper.total(con);
    }
	public Fjxx get(String id){
	  	return fjxxMapper.get(id);
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
