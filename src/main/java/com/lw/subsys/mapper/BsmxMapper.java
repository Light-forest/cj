package com.lw.subsys.mapper;
import com.lw.subsys.pojo.Bsmx;
import org.apache.ibatis.annotations.Param;

import java.util.List;


public interface BsmxMapper { //比赛明细
      
    public int add(Bsmx bsmx);
    public int delete(String mxid);
    public int update(Bsmx bsmx);
    public List<Bsmx> list();

    public List<Bsmx> list(@Param("conOrderByPage") String conOrderByPage);
    public int total(@Param("con") String con);

    public Bsmx get(String mxid);

}
