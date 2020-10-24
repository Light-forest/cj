package com.lw.sqlUtil.service.impl;

//import com.demo.mapper.FsxxMapper;
//import com.demo.pojo.Fsxx;
//import com.demo.service.FsxxService;
import com.lw.sqlUtil.mapper.SqlUtilMapper;
import com.lw.sqlUtil.service.SqlUtilService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class SqlUtilServiceImpl implements SqlUtilService {
	@Autowired
	SqlUtilMapper sqlUtilMapper;

//	public List<Map> executeSql(String sql){
//		//return sqlUtilMapper.executeSql(sql);
//		return null;
//	};

	public int insert(String sql){
         return sqlUtilMapper.insert(sql);
	}
	public int delete(String sql){
		return sqlUtilMapper.delete(sql);
	}
	public int update(String sql){
		return sqlUtilMapper.update(sql);
	}
	public List<Map> list(String sql){
       return sqlUtilMapper.list(sql);
	}



}
