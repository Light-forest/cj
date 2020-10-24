package com.lw.subsys.controller;

//import com.lw.cms.pojo.Cmsfj;
//import com.lw.cms.service.CmsfjService;

import com.lw.sqlUtil.mapper.SqlUtilMapper;
import com.lw.subsys.pojo.Fjxx;
import com.lw.subsys.pojo.Wzxx;
import com.lw.subsys.service.FjxxService;
import com.lw.subsys.service.WzxxService;
import com.lw.util.InputUtil;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class AppFjxxZpUploadController {
    @Autowired
    FjxxService cmsfjService;

    @Autowired
    WzxxService WzxxService;

    @Autowired
    private SqlUtilMapper sqlUtilMapper;


    //=========查询===================
    @RequestMapping("cms/appfjZpUpload/list")
    public ModelAndView list(Fjxx cmsfj, PageUtil page, OrderByUtil orderby) {
        String initcon = " 1=1 and fuid='" + cmsfj.getFuid() + "' and fjlx='图片' ";        //可以在这里设置初始化的条件，会一直带着做查询

        if ((orderby.getOrderbyfield() == null) || (orderby.getOrderbyfield().equals(""))) {
            orderby.setOrderbyfield("fjsj desc"); // 初始化的排序字段
        }

        ModelAndView mav = new ModelAndView();  //创建MV

        List<Fjxx> cs = cmsfjService.list(cmsfj, initcon, orderby, page);  //查询对象列表
        int total = cmsfjService.total(cmsfj, initcon);                            //统计记录条数
        page.caculateLast(total);                                                        //计算分页信息

        mav.addObject("cmsfj", cmsfj);    //放入查询对象条件参数
        mav.addObject("orderby", orderby);            //放入排序参数
        mav.addObject("page", page);                //放入分页参数
        mav.addObject("cs", cs);                    //放入对象列表

        mav.setViewName("cms/appfjZpUpload/list");    //流转到jsp页面
        return mav;
    }
    //=========end 查询================

    //=========新增=====================
    @RequestMapping(value = "cms/appfjZpUpload/addZp1.do", method = RequestMethod.POST)
    public ModelAndView uploadFile(HttpServletRequest request, Fjxx cmsfj) {

        //=========保存物理文件===================================
        System.out.println("***** uploadFile *****");
        FileItemFactory factory = new DiskFileItemFactory();
        ServletFileUpload upload = new ServletFileUpload(factory);

        //=======unix下处理============================================
        String uploadPath = "";
        //if(UploadServlet.is_window){
        uploadPath = request.getSession().getServletContext().getRealPath("") + "WEB-INF\\zppic\\";  //window下用法
        //}else{
        //	uploadPath=request.getSession().getServletContext().getRealPath("") + "zppic/";   //unix下用法
        //}
        //System.out.println(uploadPath);
        //String dir_file=uploadPath;
        //=========================================================

        String s = "";
        String filenameNewShort = "";
        try {
            List<FileItem> items = upload.parseRequest(request);
            for (FileItem item : items) {
                if (null != item.getName() && item.getName().trim() != "") {
                    String filenameOldShort = item.getName();
                    filenameNewShort = getImageNameNew(filenameOldShort);
                    File file = new File(uploadPath + filenameNewShort);
                    item.write(file);
                    System.out.println(filenameOldShort + "-->" + filenameNewShort);
                    s += filenameOldShort + "-->" + filenameNewShort + "<br/>";
//					file = new File(uploadPath + item.getName());
//					item.write(file);
                }
            }
        } catch (FileUploadException e) {
            e.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        //=========end 保存物理文件===================================

        //=====插入附件表=================================
        //String fuid=cmsfj.getFuid();

        cmsfj.setFjid(InputUtil.get_uuid());    // 附件编码
        //cmsfj.setFuid("");	// 父表编码
        cmsfj.setFjlx("图片");    // 附件类型
        cmsfj.setFjwj(filenameNewShort);    // 附件文件
        cmsfj.setFjsj(InputUtil.get_datetime_bz());    // 附件时间
        // cmsfj.setFjsm("");	// 附件说明
        cmsfj.setBz00("");    // 备注项00
        cmsfj.setBz01("");    // 备注项01
        cmsfj.setBz02("");    // 备注项02
        cmsfj.setBz03("");    // 备注项03
        cmsfj.setBz04("");    // 备注项04
        cmsfj.setBz05("");    // 备注项05
        cmsfj.setBz06("");    // 备注项06
        cmsfj.setBz07("");    // 备注项07
        cmsfj.setBz08("");    // 备注项08
        cmsfj.setBz09("");    // 备注项09
        int i_res = cmsfjService.add(cmsfj);

        //更新文章信息里面的图片
        //update_zpxx_of_wzxx(cmsfj.getFuid(), cmsfj.getFjwj());

        //=====end 插入附件表=================================
        //return "upload complete"+s+"fuid="+fuid;
        String msg = InputUtil.get_crud_msg(i_res, "add");    //获取结果信息

        //更新cmslm
        //String sqlUpdateCmslm="update cmslm set lmtp='"+filenameNewShort+"' where lmid='"+cmsfj.getFuid()+"'";
        //sqlUtilMapper.update(sqlUpdateCmslm);
        //updateCmsLmxx

        ModelAndView mav = new ModelAndView();                //创建mv
        mav.addObject("msg", msg);                            //加入结果信息
        mav.setViewName("redirect:/cms/appfjZpUpload/list?fuid=" + cmsfj.getFuid());//流转到jsp页面

        //mav.setViewName("cms/appfjZpUpload/list?fuid=" + cmsfj.getFuid());    //流转到jsp页面

        return mav;

    }

    private String getImageNameNew(String filenameOldShort) {
        String fnNew = InputUtil.get_datetime_haomiaoStr();
        String suffix = filenameOldShort.substring(filenameOldShort.lastIndexOf(".") + 1);
        fnNew = fnNew + "." + suffix;
        return fnNew;
    }


    //=========删除====================
    @RequestMapping(value = "cms/appfjZpUpload/removeZp.do/{fjid}", method = RequestMethod.GET)
    public ModelAndView remove(Fjxx cmsfj) {
        cmsfj = cmsfjService.get(cmsfj.getFjid());
        String fuid = cmsfj.getFuid();
        int i_res = cmsfjService.delete(cmsfj.getFjid());    //删除对象
        String msg = InputUtil.get_crud_msg(i_res, "delete");        //获取结果消息
        ModelAndView mav = new ModelAndView();                    //创建MV
        mav.addObject("msg", msg);                                //加入结果信息
        mav.setViewName("redirect:/cms/appfjZpUpload/list?fuid=" + fuid);    //流转到jsp页面


        //更新文章的缩略图
//        List<Fjxx> list = cmsfjService.list((new Fjxx()),"fuid='"+fuid+"'",new OrderByUtil(),new PageUtil());
//        if(list.size()>0){
//            update_zpxx_of_wzxx(fuid,list.get(0).getFjwj());
//        }


        return mav;
    }

    //=========end 删除================

    //更新文章信息里面的缩略图
    private void update_zpxx_of_wzxx(String wzid, String fjwj) {
        Wzxx wzxx = WzxxService.get(wzid);
        wzxx.setWztp(fjwj);
        WzxxService.update(wzxx);
    }

/*
	@RequestMapping(value="cms/cmsfjZpUpload/addZp.do",method= RequestMethod.PUT)
	public ModelAndView add_do(Cmsfj cmsfj){


		int i_res=cmsfjService.add(cmsfj);		//插入对象
		String msg=InputUtil.get_crud_msg(i_res,"add");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建mv
		mav.addObject("msg",msg);							//加入结果信息
		mav.setViewName("redirect:/cms/cmsfjZpUpload/list");//流转到jsp页面
		return mav;
	}
	//========= end 新增===============











	//=========删除====================
	@RequestMapping(value="cms/cmsfj/remove/{fjid}",method= RequestMethod.GET)
	public ModelAndView remove(Cmsfj cmsfj){
		int i_res=cmsfjService.delete(cmsfj.getFjid());	//删除对象
		String msg=InputUtil.get_crud_msg(i_res,"delete");		//获取结果消息
		ModelAndView mav = new ModelAndView();					//创建MV
		mav.addObject("msg",msg);								//加入结果信息
		mav.setViewName("redirect:/cms/cmsfj/list");	//流转到jsp页面
		return mav;
	}
	//=========end 删除================


	//=========修改====================
	@RequestMapping(value="cms/cmsfj/modify/{fjid}",method=RequestMethod.GET)
	public ModelAndView modify(Cmsfj initCmsfj){
		Cmsfj cmsfj=cmsfjService.get(initCmsfj.getFjid()); //获取对象
		ModelAndView mav = new ModelAndView();			//创建MV
		mav.addObject("cmsfj", cmsfj);		//加入对象
		mav.setViewName("cms/cmsfj/modify");	//流转到jsp页面
		return mav;
	}
	@RequestMapping(value="cms/cmsfj/modify.do",method= RequestMethod.PUT)
	public ModelAndView modify_do(Cmsfj cmsfj){
		int i_res=cmsfjService.update(cmsfj);		//更新对象
		String msg=InputUtil.get_crud_msg(i_res,"modify");	//获取结果信息
		ModelAndView mav = new ModelAndView();				//创建MV
		mav.addObject("msg",msg);							//加入消息对象
		mav.setViewName("redirect:/cms/cmsfj/list");	//流转到jsp页面
		return mav;
	}
    //=========end 修改===============




	//=========详情====================
	@RequestMapping(value="cms/cmsfj/detail/{fjid}",method= RequestMethod.GET)
	public ModelAndView detail(Cmsfj initCmsfj){
		Cmsfj cmsfj= cmsfjService.get(initCmsfj.getFjid());   //查询单个对象
		String msg="";
		if(cmsfj==null){
			msg="query false!";
		}else{
			msg="query ok!";
		}
		ModelAndView mav = new ModelAndView();		//创建MV
		mav.addObject("cmsfj",cmsfj);     //加入对象
		mav.addObject("msg",msg);					//加入对象
		mav.setViewName("cms/cmsfj/detail");	//流转到jsp页面
		return mav;
	}
	//=========end 详情================
    */

}
