package com.lw.subsys.controller;

import com.lw.subsys.pojo.Fjxx;
import com.lw.subsys.service.FjxxService;
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
public class FjxxController { //附件信息 控制器
	@Autowired
    FjxxService fjxxService;

	//=========新增=====================
	@RequestMapping("subsys/fjxx/add")
	public ModelAndView add(){
		ModelAndView mav = new ModelAndView();   //创建mv
		Fjxx fjxx= new Fjxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       fjxx.setFjid(input_util.get_uuid());  //主键赋值UUID 

       // fjxx.setFjid("");	// 附件编码 
       // fjxx.setFuid("");	// 父表编码 
       // fjxx.setFjlx("");	// 附件类型 
       // fjxx.setFjwj("");	// 附件文件 
       // fjxx.setFjsj("");	// 附件时间 
       // fjxx.setFjsm("");	// 附件说明 
       // fjxx.setBz00("");	// 备注项00 
       // fjxx.setBz01("");	// 备注项01 
       // fjxx.setBz02("");	// 备注项02 
       // fjxx.setBz03("");	// 备注项03 
       // fjxx.setBz04("");	// 备注项04 
       // fjxx.setBz05("");	// 备注项05 
       // fjxx.setBz06("");	// 备注项06 
       // fjxx.setBz07("");	// 备注项07 
       // fjxx.setBz08("");	// 备注项08 
       // fjxx.setBz09("");	// 备注项09 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		mav.addObject("fjxx", fjxx);    //加入对象到mv
		mav.setViewName("subsys/fjxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/fjxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Fjxx fjxx){
		int i_res=fjxxService.add(fjxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/fjxx/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/fjxx/remove/{fjid}",method= RequestMethod.GET)
	public ModelAndView remove(Fjxx fjxx){
		int i_res=fjxxService.delete(fjxx.getFjid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/fjxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/fjxx/modify/{fjid}",method=RequestMethod.GET)
	public ModelAndView modify(Fjxx initFjxx){
		Fjxx fjxx=fjxxService.get(initFjxx.getFjid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("fjxx", fjxx);		//加入对象
		mav.setViewName("subsys/fjxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/fjxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Fjxx fjxx){
		int i_res=fjxxService.update(fjxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/fjxx/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/fjxx/list")
	public ModelAndView list(Fjxx fjxx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("fjid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Fjxx> cs= fjxxService.list(fjxx,initcon,orderby,page);  //查询对象列表
		int total=fjxxService.total(fjxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("fjxx", fjxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/fjxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/fjxx/detail/{fjid}",method= RequestMethod.GET)
	public ModelAndView detail(Fjxx initFjxx){
		Fjxx fjxx= fjxxService.get(initFjxx.getFjid());   //查询单个对象
		String msg="";
		if(fjxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("fjxx",fjxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/fjxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
