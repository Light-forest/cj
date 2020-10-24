package com.lw.subsys.service;

import com.lw.subsys.pojo.Bmxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface BmxxService { //报名信息
      int add(Bmxx bmxx);
      int delete(String bmid);
      int update(Bmxx bmxx);
      List<Bmxx> list(Bmxx bmxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Bmxx bmxx, String initcon);
      Bmxx get(String bmid);
}
