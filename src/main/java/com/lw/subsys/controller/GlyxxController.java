package com.lw.subsys.controller;

import com.lw.subsys.pojo.Glyxx;
import com.lw.subsys.service.GlyxxService;
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
public class GlyxxController { //管理员信息 控制器
	@Autowired
    GlyxxService glyxxService;

	//=========新增=====================
	@RequestMapping("subsys/glyxx/add")
	public ModelAndView add(){
		ModelAndView mav = new ModelAndView();   //创建mv
		Glyxx glyxx= new Glyxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       glyxx.setGlyid(input_util.get_uuid());  //主键赋值UUID 

       // glyxx.setGlyid("");	// 管理员编码 
       // glyxx.setGlyzh("");	// 管理员账号 
       // glyxx.setGlymc("");	// 管理员名称 
       // glyxx.setGlymm("");	// 管理员密码 
       // glyxx.setGlyyx("");	// 管理员邮箱 
       // glyxx.setGlyzw("");	// 管理员职位 
       // glyxx.setGlyjs("");	// 管理员角色 
       // glyxx.setGlyms("");	// 管理员描述 
       // glyxx.setBz00("");	// 备注项00 
       // glyxx.setBz01("");	// 备注项01 
       // glyxx.setBz02("");	// 备注项02 
       // glyxx.setBz03("");	// 备注项03 
       // glyxx.setBz04("");	// 备注项04 
       // glyxx.setBz05("");	// 备注项05 
       // glyxx.setBz06("");	// 备注项06 
       // glyxx.setBz07("");	// 备注项07 
       // glyxx.setBz08("");	// 备注项08 
       // glyxx.setBz09("");	// 备注项09 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		mav.addObject("glyxx", glyxx);    //加入对象到mv
		mav.setViewName("subsys/glyxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/glyxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Glyxx glyxx){
		int i_res=glyxxService.add(glyxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/glyxx/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/glyxx/remove/{glyid}",method= RequestMethod.GET)
	public ModelAndView remove(Glyxx glyxx){
		int i_res=glyxxService.delete(glyxx.getGlyid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/glyxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/glyxx/modify/{glyid}",method=RequestMethod.GET)
	public ModelAndView modify(Glyxx initGlyxx){
		Glyxx glyxx=glyxxService.get(initGlyxx.getGlyid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("glyxx", glyxx);		//加入对象
		mav.setViewName("subsys/glyxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/glyxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Glyxx glyxx){
		int i_res=glyxxService.update(glyxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/glyxx/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/glyxx/list")
	public ModelAndView list(Glyxx glyxx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("glyid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Glyxx> cs= glyxxService.list(glyxx,initcon,orderby,page);  //查询对象列表
		int total=glyxxService.total(glyxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("glyxx", glyxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/glyxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/glyxx/detail/{glyid}",method= RequestMethod.GET)
	public ModelAndView detail(Glyxx initGlyxx){
		Glyxx glyxx= glyxxService.get(initGlyxx.getGlyid());   //查询单个对象
		String msg="";
		if(glyxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("glyxx",glyxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/glyxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
