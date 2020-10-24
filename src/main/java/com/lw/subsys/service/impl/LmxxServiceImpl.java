package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.LmxxMapper;
import com.lw.subsys.pojo.Lmxx;
import com.lw.subsys.service.LmxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class LmxxServiceImpl implements LmxxService { //栏目信息
	@Autowired
	LmxxMapper lmxxMapper;

	public int add(Lmxx lmxx){
		return lmxxMapper.add(lmxx);
	}
	public int delete(String id){
	  	return lmxxMapper.delete(id);
	}
	public int update(Lmxx lmxx){
		return lmxxMapper.update(lmxx);
	}

	public List<Lmxx> list(Lmxx lmxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(lmxx.getLmid(),"lmid"); //栏目编码 
      s+= get_one_field_con(lmxx.getLmbh(),"lmbh"); //栏目编号 
      s+= get_one_field_con(lmxx.getLmsx(),"lmsx"); //栏目顺序 
      s+= get_one_field_con(lmxx.getZwbt(),"zwbt"); //中文标题 
      s+= get_one_field_con(lmxx.getYwbt(),"ywbt"); //英文标题 
      s+= get_one_field_con(lmxx.getLmtp(),"lmtp"); //栏目图片 
      s+= get_one_field_con(lmxx.getZwsm(),"zwsm"); //中文说明 
      s+= get_one_field_con(lmxx.getYwsm(),"ywsm"); //英文说明 
      s+= get_one_field_con(lmxx.getDjzx(),"djzx"); //点击展现 
      s+= get_one_field_con(lmxx.getBjsj(),"bjsj"); //编辑时间 
      s+= get_one_field_con(lmxx.getBjry(),"bjry"); //编辑人员 
      s+= get_one_field_con(lmxx.getFuid(),"fuid"); //父栏编码 
      s+= get_one_field_con(lmxx.getFumc(),"fumc"); //父栏名称 
      s+= get_one_field_con(lmxx.getLmlj(),"lmlj"); //栏目路径 
      s+= get_one_field_con(lmxx.getWldz(),"wldz"); //外链地址 
      s+= get_one_field_con(lmxx.getLmzt(),"lmzt"); //栏目状态 
      s+= get_one_field_con(lmxx.getGjcy(),"gjcy"); //关键词语 
      s+= get_one_field_con(lmxx.getWzsl(),"wzsl"); //文章数量 
      s+= get_one_field_con(lmxx.getDjsl(),"djsl"); //点击数量 
      s+= get_one_field_con(lmxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(lmxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(lmxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(lmxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(lmxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(lmxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(lmxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(lmxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(lmxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(lmxx.getBz09(),"bz09"); //备注项09 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return lmxxMapper.list(conOrderByPage);

	}

    public int total(Lmxx lmxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(lmxx.getLmid(),"lmid"); //栏目编码 
      s+= get_one_field_con(lmxx.getLmbh(),"lmbh"); //栏目编号 
      s+= get_one_field_con(lmxx.getLmsx(),"lmsx"); //栏目顺序 
      s+= get_one_field_con(lmxx.getZwbt(),"zwbt"); //中文标题 
      s+= get_one_field_con(lmxx.getYwbt(),"ywbt"); //英文标题 
      s+= get_one_field_con(lmxx.getLmtp(),"lmtp"); //栏目图片 
      s+= get_one_field_con(lmxx.getZwsm(),"zwsm"); //中文说明 
      s+= get_one_field_con(lmxx.getYwsm(),"ywsm"); //英文说明 
      s+= get_one_field_con(lmxx.getDjzx(),"djzx"); //点击展现 
      s+= get_one_field_con(lmxx.getBjsj(),"bjsj"); //编辑时间 
      s+= get_one_field_con(lmxx.getBjry(),"bjry"); //编辑人员 
      s+= get_one_field_con(lmxx.getFuid(),"fuid"); //父栏编码 
      s+= get_one_field_con(lmxx.getFumc(),"fumc"); //父栏名称 
      s+= get_one_field_con(lmxx.getLmlj(),"lmlj"); //栏目路径 
      s+= get_one_field_con(lmxx.getWldz(),"wldz"); //外链地址 
      s+= get_one_field_con(lmxx.getLmzt(),"lmzt"); //栏目状态 
      s+= get_one_field_con(lmxx.getGjcy(),"gjcy"); //关键词语 
      s+= get_one_field_con(lmxx.getWzsl(),"wzsl"); //文章数量 
      s+= get_one_field_con(lmxx.getDjsl(),"djsl"); //点击数量 
      s+= get_one_field_con(lmxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(lmxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(lmxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(lmxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(lmxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(lmxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(lmxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(lmxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(lmxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(lmxx.getBz09(),"bz09"); //备注项09 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return lmxxMapper.total(con);
    }
	public Lmxx get(String id){
	  	return lmxxMapper.get(id);
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
