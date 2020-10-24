package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.BmxxMapper;
import com.lw.subsys.pojo.Bmxx;
import com.lw.subsys.service.BmxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BmxxServiceImpl implements BmxxService { //报名信息
	@Autowired
	BmxxMapper bmxxMapper;

	public int add(Bmxx bmxx){
		return bmxxMapper.add(bmxx);
	}
	public int delete(String id){
	  	return bmxxMapper.delete(id);
	}
	public int update(Bmxx bmxx){
		return bmxxMapper.update(bmxx);
	}

	public List<Bmxx> list(Bmxx bmxx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(bmxx.getBmid(),"bmid"); //报名编码 
      s+= get_one_field_con(bmxx.getBsid(),"bsid"); //比赛编码 
      s+= get_one_field_con(bmxx.getBsqh(),"bsqh"); //比赛期号 
      s+= get_one_field_con(bmxx.getBmbh(),"bmbh"); //报名编号 
      s+= get_one_field_con(bmxx.getSjhm(),"sjhm"); //手机号码 
      s+= get_one_field_con(bmxx.getYxjsm(),"yxjsm"); //游戏角色名 
      s+= get_one_field_con(bmxx.getSfzxm(),"sfzxm"); //身份证姓名 
      s+= get_one_field_con(bmxx.getSfzhm(),"sfzhm"); //身份证号码 
      s+= get_one_field_con(bmxx.getSfzzp(),"sfzzp"); //身份证照片 
      s+= get_one_field_con(bmxx.getBrwxh(),"brwxh"); //本人微信号 
      s+= get_one_field_con(bmxx.getWdddh(),"wdddh"); //微店订单号 
      s+= get_one_field_con(bmxx.getSfhmd(),"sfhmd"); //是否黑名单 
      s+= get_one_field_con(bmxx.getRhyy(),"rhyy"); //入黑原因 
      s+= get_one_field_con(bmxx.getBmsj(),"bmsj"); //报名时间 
      s+= get_one_field_con(bmxx.getBscj(),"bscj"); //比赛成绩 
      s+= get_one_field_con(bmxx.getBsmc(),"bsmc"); //比赛名次 
      s+= get_one_field_con(bmxx.getJjje(),"jjje"); //奖金金额 
      s+= get_one_field_con(bmxx.getBszm(),"bszm"); //比赛证明 
      s+= get_one_field_con(bmxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(bmxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(bmxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(bmxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(bmxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(bmxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(bmxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(bmxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(bmxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(bmxx.getBz09(),"bz09"); //备注项09 
      s+= get_one_field_con(bmxx.getBz10(),"bz10"); //备注项10 
      s+= get_one_field_con(bmxx.getBz11(),"bz11"); //备注项11 
      s+= get_one_field_con(bmxx.getBz12(),"bz12"); //备注项12 
      s+= get_one_field_con(bmxx.getBz13(),"bz13"); //备注项13 
      s+= get_one_field_con(bmxx.getBz14(),"bz14"); //备注项14 
      s+= get_one_field_con(bmxx.getBz15(),"bz15"); //备注项15 
      s+= get_one_field_con(bmxx.getBz16(),"bz16"); //备注项16 
      s+= get_one_field_con(bmxx.getBz17(),"bz17"); //备注项17 
      s+= get_one_field_con(bmxx.getBz18(),"bz18"); //备注项18 
      s+= get_one_field_con(bmxx.getBz19(),"bz19"); //备注项19 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return bmxxMapper.list(conOrderByPage);

	}

    public int total(Bmxx bmxx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(bmxx.getBmid(),"bmid"); //报名编码 
      s+= get_one_field_con(bmxx.getBsid(),"bsid"); //比赛编码 
      s+= get_one_field_con(bmxx.getBsqh(),"bsqh"); //比赛期号 
      s+= get_one_field_con(bmxx.getBmbh(),"bmbh"); //报名编号 
      s+= get_one_field_con(bmxx.getSjhm(),"sjhm"); //手机号码 
      s+= get_one_field_con(bmxx.getYxjsm(),"yxjsm"); //游戏角色名 
      s+= get_one_field_con(bmxx.getSfzxm(),"sfzxm"); //身份证姓名 
      s+= get_one_field_con(bmxx.getSfzhm(),"sfzhm"); //身份证号码 
      s+= get_one_field_con(bmxx.getSfzzp(),"sfzzp"); //身份证照片 
      s+= get_one_field_con(bmxx.getBrwxh(),"brwxh"); //本人微信号 
      s+= get_one_field_con(bmxx.getWdddh(),"wdddh"); //微店订单号 
      s+= get_one_field_con(bmxx.getSfhmd(),"sfhmd"); //是否黑名单 
      s+= get_one_field_con(bmxx.getRhyy(),"rhyy"); //入黑原因 
      s+= get_one_field_con(bmxx.getBmsj(),"bmsj"); //报名时间 
      s+= get_one_field_con(bmxx.getBscj(),"bscj"); //比赛成绩 
      s+= get_one_field_con(bmxx.getBsmc(),"bsmc"); //比赛名次 
      s+= get_one_field_con(bmxx.getJjje(),"jjje"); //奖金金额 
      s+= get_one_field_con(bmxx.getBszm(),"bszm"); //比赛证明 
      s+= get_one_field_con(bmxx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(bmxx.getBz01(),"bz01"); //备注项01 
      s+= get_one_field_con(bmxx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(bmxx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(bmxx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(bmxx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(bmxx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(bmxx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(bmxx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(bmxx.getBz09(),"bz09"); //备注项09 
      s+= get_one_field_con(bmxx.getBz10(),"bz10"); //备注项10 
      s+= get_one_field_con(bmxx.getBz11(),"bz11"); //备注项11 
      s+= get_one_field_con(bmxx.getBz12(),"bz12"); //备注项12 
      s+= get_one_field_con(bmxx.getBz13(),"bz13"); //备注项13 
      s+= get_one_field_con(bmxx.getBz14(),"bz14"); //备注项14 
      s+= get_one_field_con(bmxx.getBz15(),"bz15"); //备注项15 
      s+= get_one_field_con(bmxx.getBz16(),"bz16"); //备注项16 
      s+= get_one_field_con(bmxx.getBz17(),"bz17"); //备注项17 
      s+= get_one_field_con(bmxx.getBz18(),"bz18"); //备注项18 
      s+= get_one_field_con(bmxx.getBz19(),"bz19"); //备注项19 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return bmxxMapper.total(con);
    }
	public Bmxx get(String id){
	  	return bmxxMapper.get(id);
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
