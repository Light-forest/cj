package com.lw.subsys.service;

import com.lw.subsys.pojo.Fjxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface FjxxService { //附件信息
      int add(Fjxx fjxx);
      int delete(String fjid);
      int update(Fjxx fjxx);
      List<Fjxx> list(Fjxx fjxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Fjxx fjxx, String initcon);
      Fjxx get(String fjid);
}
