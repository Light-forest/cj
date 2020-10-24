package com.lw.util;


//import com.demo.service.CategoryService;
import com.lw.sqlUtil.mapper.SqlUtilMapper;
import com.lw.sqlUtil.service.SqlUtilService;
import com.sun.javafx.collections.MappingChange;
import com.sun.xml.internal.xsom.impl.scd.Iterators;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.jdbc.Sql;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

//静态方法，直接调用sql语句执行；
public class SqlOper {
	//静态方法，直接调用sql语句；
	public static   int insert(String sql) {
		SqlUtilService aSqlUtilService = SpringTool.getBean(SqlUtilService.class);
		return aSqlUtilService.insert(sql);
	}
	//静态方法，直接调用sql语句；
	public static   int delete(String sql) {
		SqlUtilService aSqlUtilService = SpringTool.getBean(SqlUtilService.class);
		return aSqlUtilService.delete(sql);
	}
	//静态方法，直接调用sql语句；
	public static   int update(String sql) {
		SqlUtilService aSqlUtilService = SpringTool.getBean(SqlUtilService.class);
		return aSqlUtilService.update(sql);
	}
	//静态方法，直接调用sql语句；
	public static   List list(String sql) {
		SqlUtilService aSqlUtilService = SpringTool.getBean(SqlUtilService.class);
		List list = aSqlUtilService.list(sql);
		return list;
	}
}