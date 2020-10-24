package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Fjxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface FjxxMapper { //附件信息
      
    public int add(Fjxx fjxx);
    public int delete(String fjid);
    public int update(Fjxx fjxx);
    public List<Fjxx> list();

    public List<Fjxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Fjxx get(String fjid);

}
