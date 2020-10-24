package com.lw.util;

import org.springframework.beans.BeansException;
        import org.springframework.context.ApplicationContext;
        import org.springframework.context.ApplicationContextAware;
        import org.springframework.stereotype.Component;

/**
 * 通过该类即可在普通工具类里获取spring管理的bean
 * 注意：需要在spring-mybatis.xml 添加   <bean class="com.gx.util.SpringTool"/>
 * @author wolf
 * http://blog.csdn.net/tianyaleixiaowu/article/details/54630383
 */
@Component
public final  class SpringTool implements ApplicationContextAware {
    private static ApplicationContext applicationContext = null;

    @Override
    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException {
        if (SpringTool.applicationContext == null) {
            SpringTool.applicationContext = applicationContext;
            //System.out.println( "========ApplicationContext配置成功,在普通类可以通过调用ToolSpring.getAppContext()获取applicationContext对象,applicationContext="+ applicationContext + "========");
        }
    }

    public static ApplicationContext getApplicationContext() {
        return applicationContext;
    }

    public static Object getBean(String name) {
        return getApplicationContext().getBean(name);
    }

    public static <T>T getBean(Class<T> clazz) {
        // TODO Auto-generated method stub
        return getApplicationContext().getBean(clazz);
    }

}
