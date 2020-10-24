package com.lw.subsys.service;

import com.lw.subsys.pojo.Bsmx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface BsmxService { //比赛明细
      int add(Bsmx bsmx);
      int delete(String mxid);
      int update(Bsmx bsmx);
      List<Bsmx> list(Bsmx bsmx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Bsmx bsmx, String initcon);
      Bsmx get(String mxid);
}
