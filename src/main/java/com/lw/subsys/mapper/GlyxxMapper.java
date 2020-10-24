package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Glyxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface GlyxxMapper { //管理员信息
      
    public int add(Glyxx glyxx);
    public int delete(String glyid);
    public int update(Glyxx glyxx);
    public List<Glyxx> list();

    public List<Glyxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Glyxx get(String glyid);

}
