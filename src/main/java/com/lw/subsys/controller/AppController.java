package com.lw.subsys.controller;

import com.alibaba.fastjson.JSON;
import com.lw.subsys.pojo.*;
import com.lw.subsys.service.*;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import com.lw.util.input_util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class AppController {
	@Autowired
	WzxxService wzxxService;

	@Autowired
	BsxxService bsxxService;

	@Autowired
	BmxxService bmxxService;

	@Autowired
	BsmxService bsmxService;


	//=========文章信息查询===================
	/*
    　　@responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
         写入到response对象的body区，通常用来返回JSON数据或者是XML
	 　　数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
	     而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据
    */
	@ResponseBody
	@RequestMapping("app/wzxx/list")
	public String wzxx_list(Wzxx wzxx){

		String lmid=wzxx.getLmid();

		OrderByUtil orderByUtil= new OrderByUtil();
		orderByUtil.setOrderbyfield("wzxh asc ");

	    List<Wzxx> listWzxx=	wzxxService.list(wzxx,"lmid='"+lmid+"'",orderByUtil,new PageUtil());


		//int total=glyxxService.total(glyxx,"");
		//Boolean result = courseService.save(courseCustom);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", JSON.toJSON(listWzxx));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;

	}
	//=========end  ================

	//人数信息-比赛报名的人数信息，查询的是比赛信息
	@ResponseBody
	@RequestMapping("app/bsxx/list")
	public String bsxx_list(Bsxx bsxx){

		//String lmid=wzxx.getLmid();

		OrderByUtil orderByUtil= new OrderByUtil();
		orderByUtil.setOrderbyfield("kssj desc ");

		List<Bsxx> listBsxx=	bsxxService.list(bsxx,"",orderByUtil,new PageUtil());


		//int total=glyxxService.total(glyxx,"");
		//Boolean result = courseService.save(courseCustom);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", JSON.toJSON(listBsxx));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;

	}

	//app/bmxx/list_hmd
	//黑名单，查询的是报名信息
	@ResponseBody
	@RequestMapping("app/bmxx/list_hmd")
	public String bmxx_list_hmd(Bmxx bmxx){

		OrderByUtil orderByUtil= new OrderByUtil();
		orderByUtil.setOrderbyfield("");

		List<Bmxx> listBmxx=bmxxService.list(bmxx," sfhmd='是' ",orderByUtil,new PageUtil());


		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", JSON.toJSON(listBmxx));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;

	}

	//根据比赛期号，查询比赛明细信息
	@ResponseBody
	@RequestMapping("app/bsmx/list")
	public String bsmx_list(Bsmx bsmx){

		//String bsqh=bsmx.getBsqh();

		OrderByUtil orderByUtil= new OrderByUtil();
		orderByUtil.setOrderbyfield("bsmc asc ");
		List<Bsmx> listBsmx=	bsmxService.list(bsmx,"",orderByUtil,new PageUtil());

		//int total=glyxxService.total(glyxx,"");
		//Boolean result = courseService.save(courseCustom);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", JSON.toJSON(listBsmx));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;

	}


	@ResponseBody
	@RequestMapping(value="app/bmxx/bmadd.do",method= RequestMethod.POST)
	public String bmxx_bmadd(Bmxx bmxx){
		int i_res=bmxxService.add(bmxx);		//插入对象
		String msg= input_util.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		//mav.addObject("msg",msg);							//加入结果信息
		//mav.setViewName("redirect:/subsys/bmxx/list");//流转到jsp页面
		//return mav;

		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		//resultMap.put("data", JSON.toJSON(listBsmx));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;
	}



	//最新的比赛信息-比赛报名使用
	@ResponseBody
	@RequestMapping("app/bsxx/lastest")
	public String bsxx_lastest(Bsxx bsxx){

		//String lmid=wzxx.getLmid();

		OrderByUtil orderByUtil= new OrderByUtil();
		orderByUtil.setOrderbyfield("kssj desc ");
		List<Bsxx> listBsxx=	bsxxService.list(bsxx,"",orderByUtil,new PageUtil());
		List<Bsxx> listBsxx2=new ArrayList<Bsxx>();
		listBsxx2.add(listBsxx.get(0));

		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", JSON.toJSON(listBsxx2));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;

	}

	//按手机号码查询比赛报名信息，查询的是我的报名信息
	@ResponseBody
	@RequestMapping("app/bmxx/listmy")
	public String bsxx_listmy(Bmxx bmxx){

		//String lmid=wzxx.getLmid();

		OrderByUtil orderByUtil= new OrderByUtil();
		orderByUtil.setOrderbyfield("sjhm desc ");

		List<Bmxx> listBmxx=	bmxxService.list(bmxx,"",orderByUtil,new PageUtil());


		//int total=glyxxService.total(glyxx,"");
		//Boolean result = courseService.save(courseCustom);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", JSON.toJSON(listBmxx));

		String res=JSON.toJSONString(resultMap);
		System.out.println(res);
		return res;

	}


}
