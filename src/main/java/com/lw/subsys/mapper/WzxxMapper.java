package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Wzxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface WzxxMapper { //文章信息
      
    public int add(Wzxx wzxx);
    public int delete(String wzid);
    public int update(Wzxx wzxx);
    public List<Wzxx> list();

    public List<Wzxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Wzxx get(String wzid);

}
