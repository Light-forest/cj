package com.lw.subsys.controller;

import com.lw.subsys.pojo.Fjxx;
import com.lw.subsys.pojo.Lmxx;
import com.lw.subsys.pojo.Wzxx;
import com.lw.subsys.service.FjxxService;
import com.lw.subsys.service.LmxxService;
import com.lw.subsys.service.WzxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import com.lw.util.input_util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class WzxxController { //文章信息 控制器
	@Autowired
    WzxxService wzxxService;

	@Autowired
	LmxxService lmxxService;

	@Autowired
	FjxxService cmsfjService;



	//=========新增=====================
	@RequestMapping("subsys/wzxx/add")
	public ModelAndView add(Wzxx initWzxx){

		Lmxx tmpCmslm=lmxxService.get(initWzxx.getLmid()); //获取对象


		ModelAndView mav = new ModelAndView();   //创建mv
		Wzxx wzxx= new Wzxx(); //建立对象

		//========  新增时，对象初始化赋值  ========
		
       wzxx.setWzid(input_util.get_uuid());  //主键赋值UUID 


		wzxx.setWzbh("001");	// 文章编号
		wzxx.setWzxh("001");	// 文章序号
		wzxx.setZwbt("文章标题");	// 中文标题

		wzxx.setZwnr("文章内容");	// 文章内容

		wzxx.setFbsj(input_util.get_datetime_bz());	// 发布时间

		wzxx.setBjsj(wzxx.getFbsj());	// 编辑时间

		wzxx.setLmid(initWzxx.getLmid());	// 栏目编码
		wzxx.setLmmc(tmpCmslm.getZwbt());	// 栏目名称

		//========end 新增时，对象初始化赋值========

		mav.addObject("wzxx", wzxx);    //加入对象到mv
		mav.setViewName("subsys/wzxx/add"); //流转到jsp页面
		return mav;
	}

	@RequestMapping(value="subsys/wzxx/add.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Wzxx wzxx){

		List<Fjxx> list = cmsfjService.list((new Fjxx())," fuid='"+wzxx.getWzid()+"' ",new OrderByUtil(),new PageUtil());
		if(list.size()>0){
			wzxx.setWztp(list.get(0).getFjwj());
		}

		int i_res=wzxxService.add(wzxx);		//插入对象
		String msg=input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/subsys/wzxx/list?lmid="+wzxx.getLmid()+"");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============

	//=========删除====================
	@RequestMapping(value="subsys/wzxx/remove/{wzid}",method= RequestMethod.GET)
	public ModelAndView remove(Wzxx wzxx){
		int i_res=wzxxService.delete(wzxx.getWzid());	//删除对象
		String msg=input_util.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/subsys/wzxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="subsys/wzxx/modify/{wzid}",method=RequestMethod.GET)
	public ModelAndView modify(Wzxx initWzxx){
		Wzxx wzxx=wzxxService.get(initWzxx.getWzid()); //获取对象
		wzxx.setZwnr(input_util.get_db_value(wzxx.getZwnr()));

		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("wzxx", wzxx);		//加入对象
		mav.setViewName("subsys/wzxx/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="subsys/wzxx/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Wzxx wzxx){



		//更新文章的缩略图
//        List<Fjxx> list = cmsfjService.list((new Fjxx()),"fuid='"+fuid+"'",new OrderByUtil(),new PageUtil());
//        if(list.size()>0){
//            update_zpxx_of_wzxx(fuid,list.get(0).getFjwj());
//        }


		List<Fjxx> list = cmsfjService.list((new Fjxx())," fuid='"+wzxx.getWzid()+"' ",new OrderByUtil(),new PageUtil());
		if(list.size()>0){
			wzxx.setWztp(list.get(0).getFjwj());
		}

		int i_res=wzxxService.update(wzxx);		//更新对象
		String msg=input_util.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/subsys/wzxx/list?lmid="+wzxx.getLmid()+"");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============



    //=========查询===================
	@RequestMapping("subsys/wzxx/list")
	public ModelAndView list(Wzxx wzxx, PageUtil page, OrderByUtil orderby, HttpServletRequest request){

		String lmid=wzxx.getLmid(); //input_util.get_request_value(request,"lmid");

		String initcon=" 1=1 and lmid='"+lmid+"' ";		//可以在这里设置初始化的条件，会一直带着做查询

		//if((orderby.getOrderbyfield()==null)||(orderby.getOrderbyfield().equals(""))){
			orderby.setOrderbyfield("wzxh"); // 初始化的排序字段
		//}

		ModelAndView mav = new ModelAndView();  //创建MV

		List<Wzxx> cs= wzxxService.list(wzxx,initcon,orderby,page);  //查询对象列表
		int total=wzxxService.total(wzxx,initcon);							//统计记录条数
		page.caculateLast(total);														//计算分页信息

		mav.addObject("wzxx", wzxx);	//放入查询对象条件参数
		mav.addObject("orderby", orderby);			//放入排序参数
		mav.addObject("page", page);				//放入分页参数
		mav.addObject("cs", cs);					//放入对象列表

		mav.setViewName("subsys/wzxx/list");	//流转到jsp页面
		return mav;
	}
	//=========end 查询================

	//=========详情====================
	@RequestMapping(value="subsys/wzxx/detail/{wzid}",method= RequestMethod.GET)
	public ModelAndView detail(Wzxx initWzxx){
		Wzxx wzxx= wzxxService.get(initWzxx.getWzid());   //查询单个对象
		wzxx.setZwnr(input_util.get_db_value(wzxx.getZwnr()));
		String msg="";
		if(wzxx==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("wzxx",wzxx);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("subsys/wzxx/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================


}
