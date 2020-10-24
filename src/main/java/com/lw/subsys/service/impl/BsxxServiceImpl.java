package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.BsxxMapper;
import com.lw.subsys.pojo.Bsxx;
import com.lw.subsys.service.BsxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BsxxServiceImpl implements BsxxService { //比赛信息
	@Autowired
	BsxxMapper bsxxMapper;

	public int add(Bsxx bsxx){
		return bsxxMapper.add(bsxx);
	}
	public int delete(String id){
	  	return bsxxMapper.delete(id);
	}
	public int update(Bsxx bsxx){
		return bsxxMapper.update(bsxx);
	}

	public List<Bsxx> list(Bsxx bsxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(bsxx.getBsid(),"bsid"); //比赛编码 
      s+= get_one_field_con(bsxx.getBsbh(),"bsbh"); //比赛编号 
      s+= get_one_field_con(bsxx.getBsqh(),"bsqh"); //比赛期号 
      s+= get_one_field_con(bsxx.getBsjs(),"bsjs"); //比赛介绍 
      s+= get_one_field_con(bsxx.getZgrs(),"zgrs"); //总共人数 
      s+= get_one_field_con(bsxx.getBmrs(),"bmrs"); //报名人数 
      s+= get_one_field_con(bsxx.getBsnd(),"bsnd"); //比赛年度 
      s+= get_one_field_con(bsxx.getBsyf(),"bsyf"); //比赛月份 
      s+= get_one_field_con(bsxx.getKssj(),"kssj"); //开始时间 
      s+= get_one_field_con(bsxx.getJssj(),"jssj"); //结束时间 
      s+= get_one_field_con(bsxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(bsxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(bsxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(bsxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(bsxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(bsxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(bsxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(bsxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(bsxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(bsxx.getBz09(),"bz09"); //备注项09 
      s+= get_one_field_con(bsxx.getBz10(),"bz10"); //备注项10 
      s+= get_one_field_con(bsxx.getBz11(),"bz11"); //备注项11 
      s+= get_one_field_con(bsxx.getBz12(),"bz12"); //备注项12 
      s+= get_one_field_con(bsxx.getBz13(),"bz13"); //备注项13 
      s+= get_one_field_con(bsxx.getBz14(),"bz14"); //备注项14 
      s+= get_one_field_con(bsxx.getBz15(),"bz15"); //备注项15 
      s+= get_one_field_con(bsxx.getBz16(),"bz16"); //备注项16 
      s+= get_one_field_con(bsxx.getBz17(),"bz17"); //备注项17 
      s+= get_one_field_con(bsxx.getBz18(),"bz18"); //备注项18 
      s+= get_one_field_con(bsxx.getBz19(),"bz19"); //备注项19 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return bsxxMapper.list(conOrderByPage);

	}

    public int total(Bsxx bsxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(bsxx.getBsid(),"bsid"); //比赛编码 
      s+= get_one_field_con(bsxx.getBsbh(),"bsbh"); //比赛编号 
      s+= get_one_field_con(bsxx.getBsqh(),"bsqh"); //比赛期号 
      s+= get_one_field_con(bsxx.getBsjs(),"bsjs"); //比赛介绍 
      s+= get_one_field_con(bsxx.getZgrs(),"zgrs"); //总共人数 
      s+= get_one_field_con(bsxx.getBmrs(),"bmrs"); //报名人数 
      s+= get_one_field_con(bsxx.getBsnd(),"bsnd"); //比赛年度 
      s+= get_one_field_con(bsxx.getBsyf(),"bsyf"); //比赛月份 
      s+= get_one_field_con(bsxx.getKssj(),"kssj"); //开始时间 
      s+= get_one_field_con(bsxx.getJssj(),"jssj"); //结束时间 
      s+= get_one_field_con(bsxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(bsxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(bsxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(bsxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(bsxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(bsxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(bsxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(bsxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(bsxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(bsxx.getBz09(),"bz09"); //备注项09 
      s+= get_one_field_con(bsxx.getBz10(),"bz10"); //备注项10 
      s+= get_one_field_con(bsxx.getBz11(),"bz11"); //备注项11 
      s+= get_one_field_con(bsxx.getBz12(),"bz12"); //备注项12 
      s+= get_one_field_con(bsxx.getBz13(),"bz13"); //备注项13 
      s+= get_one_field_con(bsxx.getBz14(),"bz14"); //备注项14 
      s+= get_one_field_con(bsxx.getBz15(),"bz15"); //备注项15 
      s+= get_one_field_con(bsxx.getBz16(),"bz16"); //备注项16 
      s+= get_one_field_con(bsxx.getBz17(),"bz17"); //备注项17 
      s+= get_one_field_con(bsxx.getBz18(),"bz18"); //备注项18 
      s+= get_one_field_con(bsxx.getBz19(),"bz19"); //备注项19 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return bsxxMapper.total(con);
    }
	public Bsxx get(String id){
	  	return bsxxMapper.get(id);
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
