package com.lw.subsys.service.impl;
import com.lw.subsys.mapper.BsmxMapper;
import com.lw.subsys.pojo.Bsmx;
import com.lw.subsys.service.BsmxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
public class BsmxServiceImpl implements BsmxService { //比赛明细
	@Autowired
	BsmxMapper bsmxMapper;

	public int add(Bsmx bsmx){
		return bsmxMapper.add(bsmx);
	}
	public int delete(String id){
	  	return bsmxMapper.delete(id);
	}
	public int update(Bsmx bsmx){
		return bsmxMapper.update(bsmx);
	}

	public List<Bsmx> list(Bsmx bsmx, String initcon, OrderByUtil orderby, PageUtil page){

	    String conOrderByPage="";
	    String s="";
	    if(!initcon.trim().equals("")){
            s+=" and  "+ initcon;
        }
		      s+= get_one_field_con(bsmx.getMxid(),"mxid"); //明细编码 
      s+= get_one_field_con(bsmx.getBsid(),"bsid"); //比赛编码 
      s+= get_one_field_con(bsmx.getBmid(),"bmid"); //报名编码 
      s+= get_one_field_con(bsmx.getBsqh(),"bsqh"); //比赛期号 
      s+= get_one_field_con(bsmx.getJsmc(),"jsmc"); //游戏角色名 
      s+= get_one_field_con(bsmx.getBssj(),"bssj"); //比赛时间 
      s+= get_one_field_con(bsmx.getBscc(),"bscc"); //吃鸡次数 
      s+= get_one_field_con(bsmx.getBsmc(),"bsmc"); //比赛名次 
      s+= get_one_field_con(bsmx.getBszm(),"bszm"); //比赛证明 
      s+= get_one_field_con(bsmx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(bsmx.getBz01(),"bz01"); //比赛奖金 
      s+= get_one_field_con(bsmx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(bsmx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(bsmx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(bsmx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(bsmx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(bsmx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(bsmx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(bsmx.getBz09(),"bz09"); //备注项09 
      s+= get_one_field_con(bsmx.getBz10(),"bz10"); //备注项10 
      s+= get_one_field_con(bsmx.getBz11(),"bz11"); //备注项11 
      s+= get_one_field_con(bsmx.getBz12(),"bz12"); //备注项12 
      s+= get_one_field_con(bsmx.getBz13(),"bz13"); //备注项13 
      s+= get_one_field_con(bsmx.getBz14(),"bz14"); //备注项14 
      s+= get_one_field_con(bsmx.getBz15(),"bz15"); //备注项15 
      s+= get_one_field_con(bsmx.getBz16(),"bz16"); //备注项16 
      s+= get_one_field_con(bsmx.getBz17(),"bz17"); //备注项17 
      s+= get_one_field_con(bsmx.getBz18(),"bz18"); //备注项18 
      s+= get_one_field_con(bsmx.getBz19(),"bz19"); //备注项19 

		/*
        s+= get_one_field_con(gly.getId(),"id"); //编码
        s+= get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
        if(!orderby.getOrderbyfield().trim().equals("")){
            s+= " order by "+ orderby.getOrderbyfield();
        }

        s+= " limit "+page.getStart()+","+page.getCount()+" ";
        conOrderByPage=s;
		return bsmxMapper.list(conOrderByPage);

	}

    public int total(Bsmx bsmx,String initcon){
        String con="";
        String s="";
        if(!initcon.trim().equals("")){
            s+=" and "+ initcon;
        }

       	      s+= get_one_field_con(bsmx.getMxid(),"mxid"); //明细编码 
      s+= get_one_field_con(bsmx.getBsid(),"bsid"); //比赛编码 
      s+= get_one_field_con(bsmx.getBmid(),"bmid"); //报名编码 
      s+= get_one_field_con(bsmx.getBsqh(),"bsqh"); //比赛期号 
      s+= get_one_field_con(bsmx.getJsmc(),"jsmc"); //游戏角色名 
      s+= get_one_field_con(bsmx.getBssj(),"bssj"); //比赛时间 
      s+= get_one_field_con(bsmx.getBscc(),"bscc"); //吃鸡次数 
      s+= get_one_field_con(bsmx.getBsmc(),"bsmc"); //比赛名次 
      s+= get_one_field_con(bsmx.getBszm(),"bszm"); //比赛证明 
      s+= get_one_field_con(bsmx.getBz00(),"bz00"); //备注项00 
      s+= get_one_field_con(bsmx.getBz01(),"bz01"); //比赛奖金 
      s+= get_one_field_con(bsmx.getBz02(),"bz02"); //备注项02 
      s+= get_one_field_con(bsmx.getBz03(),"bz03"); //备注项03 
      s+= get_one_field_con(bsmx.getBz04(),"bz04"); //备注项04 
      s+= get_one_field_con(bsmx.getBz05(),"bz05"); //备注项05 
      s+= get_one_field_con(bsmx.getBz06(),"bz06"); //备注项06 
      s+= get_one_field_con(bsmx.getBz07(),"bz07"); //备注项07 
      s+= get_one_field_con(bsmx.getBz08(),"bz08"); //备注项08 
      s+= get_one_field_con(bsmx.getBz09(),"bz09"); //备注项09 
      s+= get_one_field_con(bsmx.getBz10(),"bz10"); //备注项10 
      s+= get_one_field_con(bsmx.getBz11(),"bz11"); //备注项11 
      s+= get_one_field_con(bsmx.getBz12(),"bz12"); //备注项12 
      s+= get_one_field_con(bsmx.getBz13(),"bz13"); //备注项13 
      s+= get_one_field_con(bsmx.getBz14(),"bz14"); //备注项14 
      s+= get_one_field_con(bsmx.getBz15(),"bz15"); //备注项15 
      s+= get_one_field_con(bsmx.getBz16(),"bz16"); //备注项16 
      s+= get_one_field_con(bsmx.getBz17(),"bz17"); //备注项17 
      s+= get_one_field_con(bsmx.getBz18(),"bz18"); //备注项18 
      s+= get_one_field_con(bsmx.getBz19(),"bz19"); //备注项19 

		/*
        s+=get_one_field_con(gly.getId(),"id"); //编码
        s+=get_one_field_con(gly.getXm(),"xm"); //姓名
		*/
		
        con=s;
        return bsmxMapper.total(con);
    }
	public Bsmx get(String id){
	  	return bsmxMapper.get(id);
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
