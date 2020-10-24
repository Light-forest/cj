package com.lw.subsys.controller;

import com.lw.subsys.pojo.Lmxx;
import com.lw.subsys.service.LmxxService;
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
public class LmxxController { //栏目信息 控制器
	@Autowired
    LmxxService lmxxService;

	//=========新增=====================
	@RequestMapping("subsys/lmxx/add")
	public ModelAndView add(){
		ModelAndView mav = new ModelAndView();   //创建mv
		Lmxx lmxx= new Lmxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       lmxx.setLmid(input_util.get_uuid());  //主键赋值UUID 

       // lmxx.setLmid("");	// 栏目编码 
       // lmxx.setLmbh("");	// 栏目编号 
       // lmxx.setLmsx("");	// 栏目顺序 
       // lmxx.setZwbt("");	// 中文标题 
       // lmxx.setYwbt("");	// 英文标题 
       // lmxx.setLmtp("");	// 栏目图片 
       // lmxx.setZwsm("");	// 中文说明 
       // lmxx.setYwsm("");	// 英文说明 
       // lmxx.setDjzx("");	// 点击展现 
       // lmxx.setBjsj("");	// 编辑时间 
       // lmxx.setBjry("");	// 编辑人员 
       // lmxx.setFuid("");	// 父栏编码 
       // lmxx.setFumc("");	// 父栏名称 
       // lmxx.setLmlj("");	// 栏目路径 
       // lmxx.setWldz("");	// 外链地址 
       // lmxx.setLmzt("");	// 栏目状态 
       // lmxx.setGjcy("");	// 关键词语 
       // lmxx.setWzsl("");	// 文章数量 
       // lmxx.setDjsl("");	// 点击数量 
       // lmxx.setBz00("");	// 备注项00 
       // lmxx.setBz01("");	// 备注项01 
       // lmxx.setBz02("");	// 备注项02 
       // lmxx.setBz03("");	// 备注项03 
       // lmxx.setBz04("");	// 备注项04 
       // lmxx.setBz05("");	// 备注项05 
       // lmxx.setBz06("");	// 备注项06 
       // lmxx.setBz07("");	// 备注项07 
       // lmxx.setBz08("");	// 备注项08 
       // lmxx.setBz09("");	// 备注项09 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		mav.addObject("lmxx", lmxx);    //加入对象到mv
		mav.setViewName("subsys/lmxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/lmxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Lmxx lmxx){
		int i_res=lmxxService.add(lmxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/lmxx/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/lmxx/remove/{lmid}",method= RequestMethod.GET)
	public ModelAndView remove(Lmxx lmxx){
		int i_res=lmxxService.delete(lmxx.getLmid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/lmxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/lmxx/modify/{lmid}",method=RequestMethod.GET)
	public ModelAndView modify(Lmxx initLmxx){
		Lmxx lmxx=lmxxService.get(initLmxx.getLmid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("lmxx", lmxx);		//加入对象
		mav.setViewName("subsys/lmxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/lmxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Lmxx lmxx){
		int i_res=lmxxService.update(lmxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/lmxx/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/lmxx/list")
	public ModelAndView list(Lmxx lmxx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("lmid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Lmxx> cs= lmxxService.list(lmxx,initcon,orderby,page);  //查询对象列表
		int total=lmxxService.total(lmxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("lmxx", lmxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/lmxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/lmxx/detail/{lmid}",method= RequestMethod.GET)
	public ModelAndView detail(Lmxx initLmxx){
		Lmxx lmxx= lmxxService.get(initLmxx.getLmid());   //查询单个对象
		String msg="";
		if(lmxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("lmxx",lmxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/lmxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
