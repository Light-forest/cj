package com.lw.subsys.controller;

import com.alibaba.fastjson.JSON;
import com.lw.subsys.pojo.Glyxx;
import com.lw.subsys.service.GlyxxService;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import com.lw.util.input_util;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
    GlyxxService glyxxService;


	//流转到登陆页面
	@RequestMapping("subsys/admin/login")
	public ModelAndView login(){
		ModelAndView mav = new ModelAndView();  //创建MV
		mav.setViewName("subsys/admin/login");	//流转到jsp页面
		return mav;
	}

	//=========登陆验证===================
	/*
    　　@responseBody注解的作用是将controller的方法返回的对象通过适当的转换器转换为指定的格式之后，
         写入到response对象的body区，通常用来返回JSON数据或者是XML
	 　　数据，需要注意的呢，在使用此注解之后不会再走试图处理器，
	     而是直接将数据写入到输入流中，他的效果等同于通过response对象输出指定格式的数据
    */
	@ResponseBody
	@RequestMapping("subsys/admin/loginDo")
	public String login_do(Glyxx glyxx){
		int total=glyxxService.total(glyxx,"");
		//Boolean result = courseService.save(courseCustom);
		Map<String, Object> resultMap = new HashMap<>();
		resultMap.put("code", "200");
		resultMap.put("msg", "ok");
		resultMap.put("data", total);

		String res=JSON.toJSONString(resultMap);
		return res;
	}
	//=========end  ================




	//流转到后台主页面
	@RequestMapping("subsys/admin/index")
	public ModelAndView index(Glyxx initGlyxx){

		List<Glyxx> listGlyxx=glyxxService.list(initGlyxx,"",new OrderByUtil(),new PageUtil());
		if(listGlyxx.size()>=1){
			ModelAndView mav = new ModelAndView();  //创建MV
			mav.addObject("glyxx",listGlyxx.get(0));
			String url="subsys/admin/index";
			mav.setViewName(url);	//流转到jsp页面
			return mav;
		}
		ModelAndView mavLogin = new ModelAndView();  //创建MV
		mavLogin.setViewName("subsys/admin/login");
		return (mavLogin);
	}


}
