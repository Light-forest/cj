package com.lw.subsys.controller;

import com.lw.subsys.pojo.Bmxx;
import com.lw.subsys.pojo.Bsmx;
import com.lw.subsys.pojo.Bsxx;
import com.lw.subsys.service.BmxxService;
import com.lw.subsys.service.BsmxService;
import com.lw.subsys.service.BsxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import com.lw.util.input_util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class BsmxController { //比赛明细 控制器
	@Autowired
	BsxxService bsxxService;
	@Autowired
    BsmxService bsmxService;
	@Autowired
	BmxxService bmxxService;
	//=========新增=====================
	//bsid=
	@RequestMapping("subsys/bsmx/add")
	public ModelAndView add(Bsmx aBsmx){
		String bsid=aBsmx.getBsid();
		Bsxx bsxx= bsxxService.get(bsid);



		ModelAndView mav = new ModelAndView();   //创建mv
		Bsmx bsmx= new Bsmx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       bsmx.setMxid(input_util.get_uuid());  //主键赋值UUID 

       // bsmx.setMxid("");	// 明细编码 
         bsmx.setBsid(aBsmx.getBsid());	// 比赛编码
       // bsmx.setBmid("");	// 报名编码 
        bsmx.setBsqh(bsxx.getBsqh());	// 比赛期号
       // bsmx.setJsmc("");	// 游戏角色名 
       // bsmx.setBssj("");	// 比赛时间 
       // bsmx.setBscc("");	// 吃鸡次数 
       // bsmx.setBsmc("");	// 比赛名次 
       // bsmx.setBszm("");	// 比赛证明 
       // bsmx.setBz00("");	// 备注项00 
       // bsmx.setBz01("");	// 比赛奖金 
       // bsmx.setBz02("");	// 备注项02 
       // bsmx.setBz03("");	// 备注项03 
       // bsmx.setBz04("");	// 备注项04 
       // bsmx.setBz05("");	// 备注项05 
       // bsmx.setBz06("");	// 备注项06 
       // bsmx.setBz07("");	// 备注项07 
       // bsmx.setBz08("");	// 备注项08 
       // bsmx.setBz09("");	// 备注项09 
       // bsmx.setBz10("");	// 备注项10 
       // bsmx.setBz11("");	// 备注项11 
       // bsmx.setBz12("");	// 备注项12 
       // bsmx.setBz13("");	// 备注项13 
       // bsmx.setBz14("");	// 备注项14 
       // bsmx.setBz15("");	// 备注项15 
       // bsmx.setBz16("");	// 备注项16 
       // bsmx.setBz17("");	// 备注项17 
       // bsmx.setBz18("");	// 备注项18 
       // bsmx.setBz19("");	// 备注项19 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		String jsmclist="";
		List<Bmxx> listBmxx=bmxxService.list(new Bmxx(),"bsid='"+bsmx.getBsid()+"'",new OrderByUtil(),new PageUtil());

		for(Bmxx bmxx:listBmxx){
			jsmclist+=bmxx.getYxjsm()+"|";
		}
		mav.addObject("jsmclist", jsmclist);    //加入对象到mv


		mav.addObject("bsmx", bsmx);    //加入对象到mv
		mav.setViewName("subsys/bsmx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/bsmx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Bsmx bsmx){
		int i_res=bsmxService.add(bsmx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/bsmx/list?bsid="+bsmx.getBsid()+"");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/bsmx/remove/{mxid}",method= RequestMethod.GET)
	public ModelAndView remove(Bsmx bsmx){
		Bsmx bsmx2=bsmxService.get(bsmx.getMxid());
		String bsid=bsmx2.getBsid();

		int i_res=bsmxService.delete(bsmx.getMxid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/bsmx/list?bsid="+bsid);	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/bsmx/modify/{mxid}",method=RequestMethod.GET)
	public ModelAndView modify(Bsmx initBsmx){
		Bsmx bsmx=bsmxService.get(initBsmx.getMxid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV

		String jsmclist="dadada|";
		List<Bmxx> listBmxx=bmxxService.list(new Bmxx(),"bsid='"+bsmx.getBsid()+"'",new OrderByUtil(),new PageUtil());
		for(Bmxx bmxx:listBmxx){
			jsmclist+=bmxx.getBmsj()+"|";
		}
		mav.addObject("jsmclist", jsmclist);    //加入对象到mv

		mav.addObject("bsmx", bsmx);		//加入对象
		mav.setViewName("subsys/bsmx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/bsmx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Bsmx bsmx){
		int i_res=bsmxService.update(bsmx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/bsmx/list?bsid="+bsmx.getBsid());	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	// bsid
	@RequestMapping("subsys/bsmx/list")
	public ModelAndView list(Bsmx bsmx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 and bsid='"+bsmx.getBsid()+"' ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("mxid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Bsmx> cs= bsmxService.list(bsmx,initcon,orderby,page);  //查询对象列表
		int total=bsmxService.total(bsmx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("bsmx", bsmx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/bsmx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/bsmx/detail/{mxid}",method= RequestMethod.GET)
	public ModelAndView detail(Bsmx initBsmx){
		Bsmx bsmx= bsmxService.get(initBsmx.getMxid());   //查询单个对象
		String msg="";
		if(bsmx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("bsmx",bsmx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/bsmx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
