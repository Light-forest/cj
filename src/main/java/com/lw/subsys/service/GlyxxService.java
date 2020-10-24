package com.lw.subsys.service;

import com.lw.subsys.pojo.Glyxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface GlyxxService { //管理员信息
      int add(Glyxx glyxx);
      int delete(String glyid);
      int update(Glyxx glyxx);
      List<Glyxx> list(Glyxx glyxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Glyxx glyxx, String initcon);
      Glyxx get(String glyid);
}
