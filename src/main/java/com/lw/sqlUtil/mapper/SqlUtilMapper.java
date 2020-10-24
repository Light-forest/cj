package com.lw.sqlUtil.mapper;

import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;


public interface SqlUtilMapper {
      
    public int insert(String sql);
    public int delete(String sql);
    public int update(String sql);
    //    public List select(SqlUtil sqlutil);

    public List<Map> list(String sql);

}