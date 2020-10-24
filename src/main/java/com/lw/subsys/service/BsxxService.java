package com.lw.subsys.service;

import com.lw.subsys.pojo.Bsxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface BsxxService { //比赛信息
      int add(Bsxx bsxx);
      int delete(String bsid);
      int update(Bsxx bsxx);
      List<Bsxx> list(Bsxx bsxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Bsxx bsxx, String initcon);
      Bsxx get(String bsid);
}
