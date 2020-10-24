package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.WzxxMapper;
import com.lw.subsys.pojo.Wzxx;
import com.lw.subsys.service.WzxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class WzxxServiceImpl implements WzxxService { //文章信息
	@Autowired
	WzxxMapper wzxxMapper;

	public int add(Wzxx wzxx){
		return wzxxMapper.add(wzxx);
	}
	public int delete(String id){
	  	return wzxxMapper.delete(id);
	}
	public int update(Wzxx wzxx){
		return wzxxMapper.update(wzxx);
	}

	public List<Wzxx> list(Wzxx wzxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(wzxx.getWzid(),"wzid"); //文章编码 
      s+= get_one_field_con(wzxx.getWzbh(),"wzbh"); //文章编号 
      s+= get_one_field_con(wzxx.getWzxh(),"wzxh"); //文章序号 
      s+= get_one_field_con(wzxx.getZwbt(),"zwbt"); //中文标题 
      s+= get_one_field_con(wzxx.getYwbt(),"ywbt"); //英文标题 
      s+= get_one_field_con(wzxx.getBtys(),"btys"); //标题颜色 
      s+= get_one_field_con(wzxx.getWztp(),"wztp"); //文章图片 
      s+= get_one_field_con(wzxx.getZwzy(),"zwzy"); //中文摘要 
      s+= get_one_field_con(wzxx.getYwzy(),"ywzy"); //英文摘要 
      s+= get_one_field_con(wzxx.getWzlx(),"wzlx"); //文章类型 
      s+= get_one_field_con(wzxx.getZwnr(),"zwnr"); //文章内容 
      s+= get_one_field_con(wzxx.getYwnr(),"ywnr"); //英文内容 
      s+= get_one_field_con(wzxx.getWzbq(),"wzbq"); //文章标签 
      s+= get_one_field_con(wzxx.getGjcy(),"gjcy"); //关键词语 
      s+= get_one_field_con(wzxx.getFbsj(),"fbsj"); //发布时间 
      s+= get_one_field_con(wzxx.getWzzz(),"wzzz"); //文章作者 
      s+= get_one_field_con(wzxx.getWzly(),"wzly"); //文章来源 
      s+= get_one_field_con(wzxx.getBjsj(),"bjsj"); //编辑时间 
      s+= get_one_field_con(wzxx.getWzzt(),"wzzt"); //文章状态 
      s+= get_one_field_con(wzxx.getLmid(),"lmid"); //栏目编码 
      s+= get_one_field_con(wzxx.getLmmc(),"lmmc"); //栏目名称 
      s+= get_one_field_con(wzxx.getFyfs(),"fyfs"); //分页方式 
      s+= get_one_field_con(wzxx.getFydx(),"fydx"); //分页大小 
      s+= get_one_field_con(wzxx.getSftt(),"sftt"); //是否头条 
      s+= get_one_field_con(wzxx.getSftj(),"sftj"); //是否推荐 
      s+= get_one_field_con(wzxx.getZdjb(),"zdjb"); //置顶级别 
      s+= get_one_field_con(wzxx.getSfgd(),"sfgd"); //是否归档 
      s+= get_one_field_con(wzxx.getPlsl(),"plsl"); //评论数量 
      s+= get_one_field_con(wzxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(wzxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(wzxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(wzxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(wzxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(wzxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(wzxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(wzxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(wzxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(wzxx.getBz09(),"bz09"); //备注项09 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return wzxxMapper.list(conOrderByPage);

	}

    public int total(Wzxx wzxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(wzxx.getWzid(),"wzid"); //文章编码 
      s+= get_one_field_con(wzxx.getWzbh(),"wzbh"); //文章编号 
      s+= get_one_field_con(wzxx.getWzxh(),"wzxh"); //文章序号 
      s+= get_one_field_con(wzxx.getZwbt(),"zwbt"); //中文标题 
      s+= get_one_field_con(wzxx.getYwbt(),"ywbt"); //英文标题 
      s+= get_one_field_con(wzxx.getBtys(),"btys"); //标题颜色 
      s+= get_one_field_con(wzxx.getWztp(),"wztp"); //文章图片 
      s+= get_one_field_con(wzxx.getZwzy(),"zwzy"); //中文摘要 
      s+= get_one_field_con(wzxx.getYwzy(),"ywzy"); //英文摘要 
      s+= get_one_field_con(wzxx.getWzlx(),"wzlx"); //文章类型 
      s+= get_one_field_con(wzxx.getZwnr(),"zwnr"); //文章内容 
      s+= get_one_field_con(wzxx.getYwnr(),"ywnr"); //英文内容 
      s+= get_one_field_con(wzxx.getWzbq(),"wzbq"); //文章标签 
      s+= get_one_field_con(wzxx.getGjcy(),"gjcy"); //关键词语 
      s+= get_one_field_con(wzxx.getFbsj(),"fbsj"); //发布时间 
      s+= get_one_field_con(wzxx.getWzzz(),"wzzz"); //文章作者 
      s+= get_one_field_con(wzxx.getWzly(),"wzly"); //文章来源 
      s+= get_one_field_con(wzxx.getBjsj(),"bjsj"); //编辑时间 
      s+= get_one_field_con(wzxx.getWzzt(),"wzzt"); //文章状态 
      s+= get_one_field_con(wzxx.getLmid(),"lmid"); //栏目编码 
      s+= get_one_field_con(wzxx.getLmmc(),"lmmc"); //栏目名称 
      s+= get_one_field_con(wzxx.getFyfs(),"fyfs"); //分页方式 
      s+= get_one_field_con(wzxx.getFydx(),"fydx"); //分页大小 
      s+= get_one_field_con(wzxx.getSftt(),"sftt"); //是否头条 
      s+= get_one_field_con(wzxx.getSftj(),"sftj"); //是否推荐 
      s+= get_one_field_con(wzxx.getZdjb(),"zdjb"); //置顶级别 
      s+= get_one_field_con(wzxx.getSfgd(),"sfgd"); //是否归档 
      s+= get_one_field_con(wzxx.getPlsl(),"plsl"); //评论数量 
      s+= get_one_field_con(wzxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(wzxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(wzxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(wzxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(wzxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(wzxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(wzxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(wzxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(wzxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(wzxx.getBz09(),"bz09"); //备注项09 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return wzxxMapper.total(con);
    }
	public Wzxx get(String id){
	  	return wzxxMapper.get(id);
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
