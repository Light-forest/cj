package com.lw.util;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class CookieUtil {
   static public boolean setCookie(HttpServletResponse response,String sName,String sValue){
       Cookie aCookie = new Cookie(sName,sValue);
       aCookie.setMaxAge( 10* 365 * 24 * 60 * 60);// 设置为10年
       aCookie.setPath("/");
       response.addCookie(aCookie);
       return true;


   }
    static public String getCookie(HttpServletRequest request,String sName){
        Cookie[] cookies = request.getCookies();

        if(null!=cookies){
            for(Cookie cookie : cookies){
                //if("/".equals(cookie.getPath())){ //getPath为null
                if(sName.equals(cookie.getName())){
                    String sValue = cookie.getValue();
                    return sValue;
                }
            }
        }

        return "";

    }

    static public void delCookie(HttpServletRequest request,HttpServletResponse response,String name)
    {
        Cookie[] cookies = request.getCookies();
        if (null == cookies) {
            System.out.println("没有cookie==============");
        } else {
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals(name)) {
                    cookie.setValue(null);
                    cookie.setMaxAge(0);// 立即销毁cookie
                    cookie.setPath("/");
                    System.out.println("被删除的cookie名字为:" + cookie.getName());
                    response.addCookie(cookie);
                    break;
                }
            }
        }
    }

}
