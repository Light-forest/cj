package com.lw.subsys.controller;

import com.lw.subsys.pojo.Bsxx;
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
public class BsxxController { //比赛信息 控制器
	@Autowired
    BsxxService bsxxService;

	//=========新增=====================
	@RequestMapping("subsys/bsxx/add")
	public ModelAndView add(){
		ModelAndView mav = new ModelAndView();   //创建mv
		Bsxx bsxx= new Bsxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       bsxx.setBsid(input_util.get_uuid());  //主键赋值UUID 

       // bsxx.setBsid("");	// 比赛编码 
       // bsxx.setBsbh("");	// 比赛编号 
       // bsxx.setBsqh("");	// 比赛期号 
       // bsxx.setBsjs("");	// 比赛介绍 
       // bsxx.setZgrs("");	// 总共人数 
       // bsxx.setBmrs("");	// 报名人数 
       // bsxx.setBsnd("");	// 比赛年度 
       // bsxx.setBsyf("");	// 比赛月份 
       // bsxx.setKssj("");	// 开始时间 
       // bsxx.setJssj("");	// 结束时间 
       // bsxx.setBz00("");	// 备注项00 
       // bsxx.setBz01("");	// 备注项01 
       // bsxx.setBz02("");	// 备注项02 
       // bsxx.setBz03("");	// 备注项03 
       // bsxx.setBz04("");	// 备注项04 
       // bsxx.setBz05("");	// 备注项05 
       // bsxx.setBz06("");	// 备注项06 
       // bsxx.setBz07("");	// 备注项07 
       // bsxx.setBz08("");	// 备注项08 
       // bsxx.setBz09("");	// 备注项09 
       // bsxx.setBz10("");	// 备注项10 
       // bsxx.setBz11("");	// 备注项11 
       // bsxx.setBz12("");	// 备注项12 
       // bsxx.setBz13("");	// 备注项13 
       // bsxx.setBz14("");	// 备注项14 
       // bsxx.setBz15("");	// 备注项15 
       // bsxx.setBz16("");	// 备注项16 
       // bsxx.setBz17("");	// 备注项17 
       // bsxx.setBz18("");	// 备注项18 
       // bsxx.setBz19("");	// 备注项19 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		mav.addObject("bsxx", bsxx);    //加入对象到mv
		mav.setViewName("subsys/bsxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/bsxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Bsxx bsxx){
		int i_res=bsxxService.add(bsxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/bsxx/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/bsxx/remove/{bsid}",method= RequestMethod.GET)
	public ModelAndView remove(Bsxx bsxx){
		int i_res=bsxxService.delete(bsxx.getBsid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/bsxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/bsxx/modify/{bsid}",method=RequestMethod.GET)
	public ModelAndView modify(Bsxx initBsxx){
		Bsxx bsxx=bsxxService.get(initBsxx.getBsid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("bsxx", bsxx);		//加入对象
		mav.setViewName("subsys/bsxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/bsxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Bsxx bsxx){
		int i_res=bsxxService.update(bsxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/bsxx/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/bsxx/list")
	public ModelAndView list(Bsxx bsxx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("bsid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Bsxx> cs= bsxxService.list(bsxx,initcon,orderby,page);  //查询对象列表
		int total=bsxxService.total(bsxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("bsxx", bsxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/bsxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/bsxx/detail/{bsid}",method= RequestMethod.GET)
	public ModelAndView detail(Bsxx initBsxx){
		Bsxx bsxx= bsxxService.get(initBsxx.getBsid());   //查询单个对象
		String msg="";
		if(bsxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("bsxx",bsxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/bsxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
