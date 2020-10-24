package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Bsxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BsxxMapper { //比赛信息
      
    public int add(Bsxx bsxx);
    public int delete(String bsid);
    public int update(Bsxx bsxx);
    public List<Bsxx> list();

    public List<Bsxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Bsxx get(String bsid);

}
