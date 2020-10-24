package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Hyxx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface HyxxMapper { //会员信息
      
    public int add(Hyxx hyxx);
    public int delete(String hyid);
    public int update(Hyxx hyxx);
    public List<Hyxx> list();

    public List<Hyxx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Hyxx get(String hyid);

}
