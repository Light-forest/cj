package com.lw.subsys.service;

import com.lw.subsys.pojo.Wzxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface WzxxService { //文章信息
      int add(Wzxx wzxx);
      int delete(String wzid);
      int update(Wzxx wzxx);
      List<Wzxx> list(Wzxx wzxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Wzxx wzxx, String initcon);
      Wzxx get(String wzid);
}
