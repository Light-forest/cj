package com.lw.subsys.service;

import com.lw.subsys.pojo.Hyxx;
import com.lw.util.OrderByUtil;
import com.lw.util.PageUtil;

import java.util.List;

public interface HyxxService { //会员信息
      int add(Hyxx hyxx);
      int delete(String hyid);
      int update(Hyxx hyxx);
      List<Hyxx> list(Hyxx hyxx, String initcon, OrderByUtil orderby, PageUtil page);
      int total(Hyxx hyxx, String initcon);
      Hyxx get(String hyid);
}
