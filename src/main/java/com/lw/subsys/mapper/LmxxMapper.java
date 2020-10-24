package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Lmxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface LmxxMapper { //栏目信息
      
    public int add(Lmxx lmxx);
    public int delete(String lmid);
    public int update(Lmxx lmxx);
    public List<Lmxx> list();

    public List<Lmxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Lmxx get(String lmid);

}
