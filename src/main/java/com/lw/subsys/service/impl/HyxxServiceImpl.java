package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.HyxxMapper;
import com.lw.subsys.pojo.Hyxx;
import com.lw.subsys.service.HyxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class HyxxServiceImpl implements HyxxService { //会员信息
	@Autowired
	HyxxMapper hyxxMapper;

	public int add(Hyxx hyxx){
		return hyxxMapper.add(hyxx);
	}
	public int delete(String id){
	  	return hyxxMapper.delete(id);
	}
	public int update(Hyxx hyxx){
		return hyxxMapper.update(hyxx);
	}

	public List<Hyxx> list(Hyxx hyxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(hyxx.getHyid(),"hyid"); //会员编码 
      s+= get_one_field_con(hyxx.getDlzh(),"dlzh"); //登录账号 
      s+= get_one_field_con(hyxx.getDlmm(),"dlmm"); //登录密码 
      s+= get_one_field_con(hyxx.getHymc(),"hymc"); //会员名称 
      s+= get_one_field_con(hyxx.getHyjb(),"hyjb"); //会员级别 
      s+= get_one_field_con(hyxx.getZcrq(),"zcrq"); //注册日期 
      s+= get_one_field_con(hyxx.getHyzt(),"hyzt"); //会员状态 
      s+= get_one_field_con(hyxx.getLxdh(),"lxdh"); //联系电话 
      s+= get_one_field_con(hyxx.getYjdz(),"yjdz"); //邮件地址 
      s+= get_one_field_con(hyxx.getQqhm(),"qqhm"); //QQ__号码 
      s+= get_one_field_con(hyxx.getMsnh(),"msnh"); //MSN_号码 
      s+= get_one_field_con(hyxx.getTxdz(),"txdz"); //通讯地址 
      s+= get_one_field_con(hyxx.getYzbm(),"yzbm"); //邮政编码 
      s+= get_one_field_con(hyxx.getBzxx(),"bzxx"); //备注信息 
      s+= get_one_field_con(hyxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(hyxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(hyxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(hyxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(hyxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(hyxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(hyxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(hyxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(hyxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(hyxx.getBz09(),"bz09"); //备注项09 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return hyxxMapper.list(conOrderByPage);

	}

    public int total(Hyxx hyxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(hyxx.getHyid(),"hyid"); //会员编码 
      s+= get_one_field_con(hyxx.getDlzh(),"dlzh"); //登录账号 
      s+= get_one_field_con(hyxx.getDlmm(),"dlmm"); //登录密码 
      s+= get_one_field_con(hyxx.getHymc(),"hymc"); //会员名称 
      s+= get_one_field_con(hyxx.getHyjb(),"hyjb"); //会员级别 
      s+= get_one_field_con(hyxx.getZcrq(),"zcrq"); //注册日期 
      s+= get_one_field_con(hyxx.getHyzt(),"hyzt"); //会员状态 
      s+= get_one_field_con(hyxx.getLxdh(),"lxdh"); //联系电话 
      s+= get_one_field_con(hyxx.getYjdz(),"yjdz"); //邮件地址 
      s+= get_one_field_con(hyxx.getQqhm(),"qqhm"); //QQ__号码 
      s+= get_one_field_con(hyxx.getMsnh(),"msnh"); //MSN_号码 
      s+= get_one_field_con(hyxx.getTxdz(),"txdz"); //通讯地址 
      s+= get_one_field_con(hyxx.getYzbm(),"yzbm"); //邮政编码 
      s+= get_one_field_con(hyxx.getBzxx(),"bzxx"); //备注信息 
      s+= get_one_field_con(hyxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(hyxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(hyxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(hyxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(hyxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(hyxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(hyxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(hyxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(hyxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(hyxx.getBz09(),"bz09"); //备注项09 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return hyxxMapper.total(con);
    }
	public Hyxx get(String id){
	  	return hyxxMapper.get(id);
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
