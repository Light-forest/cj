package com.lw.util;

//import com.lw.cms.pojo.Cmsrz;
//import com.lw.cms.service.CmsrzService;
import com.lw.sqlUtil.service.SqlUtilService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;
import  javax.servlet.http.HttpServletRequest;


public class BussUtil
{


    public static String getAllFjwjStr(String fuid,String fjlx) {
        List list= SqlOper.list("select fjwj from cmsfj where fuid='"+fuid+"' and fjlx like '%"+fjlx+"%'");
        String s="";
        for(int i=0;i<list.size();i++){
            String fjwj=InputUtil.get_list_val(list,i,"fjwj");
            String fjsm=InputUtil.get_list_val(list,i,"fjsm");
            if(fjlx.equals("附件")){
                s+=fjsm+"|"+ fjwj+";";
            }else{
                s+=fjwj+";";
            }
        }
        return s;
    }

//    public  static boolean saveCmsrz(String id,String nr,String lx,String user, HttpServletRequest request){
//        //saveCmsrz();
//        Cmsrz aCmsrz=new Cmsrz();
//        aCmsrz.setRzid(InputUtil.get_uuid());
//        aCmsrz.setLmid(id); //栏目编码
//        aCmsrz.setLmmc(nr); //栏目名称
//        aCmsrz.setWzid(""); //文章编码
//        aCmsrz.setWzmc(""); //文章名称
//        aCmsrz.setDjip(InputUtil.getRemoteHost(request)); //点击人IP
//        aCmsrz.setDjsj(InputUtil.get_datetime_bz()); //点击时间
//        aCmsrz.setDjbz(""); //点击备注
//        aCmsrz.setBz01(lx); //点击备注
//        aCmsrz.setBz02(user); //点击备注
//
//        CmsrzService cmsrzService = SpringTool.getBean(CmsrzService.class);
//        // return aSqlUtilService.insert(sql);
//        int res=cmsrzService.add(aCmsrz);
//        return res==0?true:false;
//
//
//
//    }
//    public  static boolean saveCmsrz(String id1,String nr1,String id2,String nr2,String lx,String user,HttpServletRequest request){
//        //saveCmsrz();
//        Cmsrz aCmsrz=new Cmsrz();
//        aCmsrz.setRzid(InputUtil.get_uuid());
//        aCmsrz.setLmid(id1); //栏目编码
//        aCmsrz.setLmmc(nr1); //栏目名称
//        aCmsrz.setWzid(id2); //文章编码
//        aCmsrz.setWzmc(nr2); //文章名称
//        aCmsrz.setDjip(InputUtil.getRemoteHost(request)); //点击人IP
//        aCmsrz.setDjsj(InputUtil.get_datetime_bz()); //点击时间
//        aCmsrz.setDjbz(""); //点击备注
//        aCmsrz.setBz01(lx); //点击备注
//        aCmsrz.setBz02(user); //点击备注
//
//        CmsrzService cmsrzService = SpringTool.getBean(CmsrzService.class);
//        // return aSqlUtilService.insert(sql);
//        int res=cmsrzService.add(aCmsrz);
//        return res==0?true:false;
//
//
//
//    }
}
