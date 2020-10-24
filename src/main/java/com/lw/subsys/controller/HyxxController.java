package com.lw.subsys.controller;

import com.lw.subsys.pojo.Hyxx;
import com.lw.subsys.service.HyxxService;
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
public class HyxxController { //会员信息 控制器
	@Autowired
    HyxxService hyxxService;

	//=========新增=====================
	@RequestMapping("subsys/hyxx/add")
	public ModelAndView add(){
		ModelAndView mav = new ModelAndView();   //创建mv
		Hyxx hyxx= new Hyxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       hyxx.setHyid(input_util.get_uuid());  //主键赋值UUID 

       // hyxx.setHyid("");	// 会员编码 
       // hyxx.setDlzh("");	// 登录账号 
       // hyxx.setDlmm("");	// 登录密码 
       // hyxx.setHymc("");	// 会员名称 
       // hyxx.setHyjb("");	// 会员级别 
       // hyxx.setZcrq("");	// 注册日期 
       // hyxx.setHyzt("");	// 会员状态 
       // hyxx.setLxdh("");	// 联系电话 
       // hyxx.setYjdz("");	// 邮件地址 
       // hyxx.setQqhm("");	// QQ__号码 
       // hyxx.setMsnh("");	// MSN_号码 
       // hyxx.setTxdz("");	// 通讯地址 
       // hyxx.setYzbm("");	// 邮政编码 
       // hyxx.setBzxx("");	// 备注信息 
       // hyxx.setBz00("");	// 备注项00 
       // hyxx.setBz01("");	// 备注项01 
       // hyxx.setBz02("");	// 备注项02 
       // hyxx.setBz03("");	// 备注项03 
       // hyxx.setBz04("");	// 备注项04 
       // hyxx.setBz05("");	// 备注项05 
       // hyxx.setBz06("");	// 备注项06 
       // hyxx.setBz07("");	// 备注项07 
       // hyxx.setBz08("");	// 备注项08 
       // hyxx.setBz09("");	// 备注项09 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		mav.addObject("hyxx", hyxx);    //加入对象到mv
		mav.setViewName("subsys/hyxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/hyxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Hyxx hyxx){
		int i_res=hyxxService.add(hyxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/hyxx/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/hyxx/remove/{hyid}",method= RequestMethod.GET)
	public ModelAndView remove(Hyxx hyxx){
		int i_res=hyxxService.delete(hyxx.getHyid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/hyxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/hyxx/modify/{hyid}",method=RequestMethod.GET)
	public ModelAndView modify(Hyxx initHyxx){
		Hyxx hyxx=hyxxService.get(initHyxx.getHyid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("hyxx", hyxx);		//加入对象
		mav.setViewName("subsys/hyxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/hyxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Hyxx hyxx){
		int i_res=hyxxService.update(hyxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/hyxx/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/hyxx/list")
	public ModelAndView list(Hyxx hyxx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("hyid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Hyxx> cs= hyxxService.list(hyxx,initcon,orderby,page);  //查询对象列表
		int total=hyxxService.total(hyxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("hyxx", hyxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/hyxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/hyxx/detail/{hyid}",method= RequestMethod.GET)
	public ModelAndView detail(Hyxx initHyxx){
		Hyxx hyxx= hyxxService.get(initHyxx.getHyid());   //查询单个对象
		String msg="";
		if(hyxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("hyxx",hyxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/hyxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
