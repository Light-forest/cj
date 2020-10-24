package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Bmxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BmxxMapper { //报名信息
      
    public int add(Bmxx bmxx);
    public int delete(String bmid);
    public int update(Bmxx bmxx);
    public List<Bmxx> list();

    public List<Bmxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Bmxx get(String bmid);

}
