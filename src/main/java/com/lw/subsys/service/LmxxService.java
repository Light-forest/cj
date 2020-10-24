package com.lw.subsys.service;

import com.lw.subsys.pojo.Lmxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface LmxxService { //栏目信息
      int add(Lmxx lmxx);
      int delete(String lmid);
      int update(Lmxx lmxx);
      List<Lmxx> list(Lmxx lmxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Lmxx lmxx, String initcon);
      Lmxx get(String lmid);
}
