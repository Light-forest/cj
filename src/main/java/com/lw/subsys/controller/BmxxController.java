package com.lw.subsys.controller;

import com.lw.subsys.pojo.Bmxx;
import com.lw.subsys.service.BmxxService;
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
public class BmxxController { //报名信息 控制器
	@Autowired
    BmxxService bmxxService;

	//=========新增=====================
	@RequestMapping("subsys/bmxx/add")
	public ModelAndView add(){
		ModelAndView mav = new ModelAndView();   //创建mv
		Bmxx bmxx= new Bmxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       bmxx.setBmid(input_util.get_uuid());  //主键赋值UUID 

       // bmxx.setBmid("");	// 报名编码 
       // bmxx.setBsid("");	// 比赛编码 
       // bmxx.setBsqh("");	// 比赛期号 
       // bmxx.setBmbh("");	// 报名编号 
       // bmxx.setSjhm("");	// 手机号码 
       // bmxx.setYxjsm("");	// 游戏角色名 
       // bmxx.setSfzxm("");	// 身份证姓名 
       // bmxx.setSfzhm("");	// 身份证号码 
       // bmxx.setSfzzp("");	// 身份证照片 
       // bmxx.setBrwxh("");	// 本人微信号 
       // bmxx.setWdddh("");	// 微店订单号 
       // bmxx.setSfhmd("");	// 是否黑名单 
       // bmxx.setRhyy("");	// 入黑原因 
       // bmxx.setBmsj("");	// 报名时间 
       // bmxx.setBscj("");	// 比赛成绩 
       // bmxx.setBsmc("");	// 比赛名次 
       // bmxx.setJjje("");	// 奖金金额 
       // bmxx.setBszm("");	// 比赛证明 
       // bmxx.setBz00("");	// 备注项00 
       // bmxx.setBz01("");	// 备注项01 
       // bmxx.setBz02("");	// 备注项02 
       // bmxx.setBz03("");	// 备注项03 
       // bmxx.setBz04("");	// 备注项04 
       // bmxx.setBz05("");	// 备注项05 
       // bmxx.setBz06("");	// 备注项06 
       // bmxx.setBz07("");	// 备注项07 
       // bmxx.setBz08("");	// 备注项08 
       // bmxx.setBz09("");	// 备注项09 
       // bmxx.setBz10("");	// 备注项10 
       // bmxx.setBz11("");	// 备注项11 
       // bmxx.setBz12("");	// 备注项12 
       // bmxx.setBz13("");	// 备注项13 
       // bmxx.setBz14("");	// 备注项14 
       // bmxx.setBz15("");	// 备注项15 
       // bmxx.setBz16("");	// 备注项16 
       // bmxx.setBz17("");	// 备注项17 
       // bmxx.setBz18("");	// 备注项18 
       // bmxx.setBz19("");	// 备注项19 

		/*
		 gly.setId(input_util.get_uuid()); // 编码 
		 //gly.setId("");	// 编码
		 //gly.setXm("");	// 姓名
		*/ 
		//========end 新增时，对象初始化赋值========

		mav.addObject("bmxx", bmxx);    //加入对象到mv
		mav.setViewName("subsys/bmxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/bmxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Bmxx bmxx){
		int i_res=bmxxService.add(bmxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/bmxx/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/bmxx/remove/{bmid}",method= RequestMethod.GET)
	public ModelAndView remove(Bmxx bmxx){
		int i_res=bmxxService.delete(bmxx.getBmid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/bmxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/bmxx/modify/{bmid}",method=RequestMethod.GET)
	public ModelAndView modify(Bmxx initBmxx){
		Bmxx bmxx=bmxxService.get(initBmxx.getBmid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("bmxx", bmxx);		//加入对象
		mav.setViewName("subsys/bmxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/bmxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Bmxx bmxx){
		int i_res=bmxxService.update(bmxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/bmxx/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/bmxx/list")
	public ModelAndView list(Bmxx bmxx,PageUtil page,OrderByUtil orderby){
		String initcon=" 1=1 ";		//可以在这里设置初始化的条件，会一直带着做查询

		if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("bmid"); // 初始化的排序字段
		}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Bmxx> cs= bmxxService.list(bmxx,initcon,orderby,page);  //查询对象列表
		int total=bmxxService.total(bmxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("bmxx", bmxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/bmxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/bmxx/detail/{bmid}",method= RequestMethod.GET)
	public ModelAndView detail(Bmxx initBmxx){
		Bmxx bmxx= bmxxService.get(initBmxx.getBmid());   //查询单个对象
		String msg="";
		if(bmxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("bmxx",bmxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/bmxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
