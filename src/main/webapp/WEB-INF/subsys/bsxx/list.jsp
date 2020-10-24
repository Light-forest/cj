<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>比赛信息-列表查询</title>
     
    <link rel="stylesheet" href="../../help/fuslUI/css/skins/blue.css" class="skin-color" />
 
    <link rel="stylesheet" href="../../help/bt/css/bootstrap.min.css" >
    <link rel="stylesheet" href="../../help/fuslUI/plugins/layui/skin/default/layer.css">
 
    <link  href="../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"></link>
    <style type="text/css">

    </style>
</head>
<body>


<div style=" "  class="container-fluid">

    <div class="panel panel-info">

        <div class="panel-heading">比赛信息-查询条件(
            <a class='qry_kai_guan' href='javascript:btn_con_show_click();'>展开</a>|
            <a class='qry_kai_guan' href='javascript:btn_con_hide_click();'>收起</a>) 
        </div>

        <!--提示信息 -->
        <div name="div_msg" id="div_msg" class="alert alert-danger alert-dismissible" role="alert" style="margin:5px;display:none;"  >
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$(this).parent().css('display','none');">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>提醒：</strong>
            ${msg}
            <!-- 提醒信息 -->
            <div id="div_msg_nr" name="div_msg_nr">
                <c:if test="${empty msg}"></c:if>
                <c:if test="${not empty msg}">${msg}</c:if>
            </div>
            <!--end 提醒信息 -->
        </div>

        <!--查询条件 -->
        <form  name="formlist" method="post" action="list"  >

            <div class="row" id="id_div_con"  style="" >

                <div class="col-xs-12">

                    <div class="col-xs-3" style="display:none;">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="span_orderbyfield">排序字段</span>
                            <input id="orderbyfield" name="orderbyfield" value="${orderby.orderbyfield}" placeholder="排序字段" class="form-control"  aria-describedby="span_orderbyfield"  />
                        </div>
                    </div>
                    <div class="col-xs-3" style="display:none;">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="span_count">每页数量</span>
                            <input id="count" name="count" value="${page.count}" placeholder="每页数量" class="form-control"  aria-describedby="span_count"  />
                        </div>
                    </div>

                    <div class="col-xs-3" style="display:none;">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="span_start">起始下标</span>
                            <input id="start" name="start" value="${page.start}" placeholder="起始下标" class="form-control"  aria-describedby="span_start"  />
                        </div>
                    </div>

                    <div class="col-xs-3" style="display:none;">
                        <div class="input-group input-group-sm">
                            <span class="input-group-addon" id="span_total">记录总数</span>
                            <input id="total" name="total" value="${page.total}" placeholder="记录总数" class="form-control"  aria-describedby="span_total"  />
                        </div>
                    </div>
					
                    <!--------------条件字段------------------->
	           <div id='id_div_qry_bsid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsid">比赛编码</span> 
               <input id="bsid" name="bsid" value="${bsxx.bsid}" placeholder="比赛编码" class="form-control"  aria-describedby="span_bsid"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsbh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsbh">比赛编号</span> 
               <input id="bsbh" name="bsbh" value="${bsxx.bsbh}" placeholder="比赛编号" class="form-control"  aria-describedby="span_bsbh"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsqh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsqh">比赛期号</span> 
               <input id="bsqh" name="bsqh" value="${bsxx.bsqh}" placeholder="比赛期号" class="form-control"  aria-describedby="span_bsqh"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsjs' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsjs">比赛介绍</span> 
               <input id="bsjs" name="bsjs" value="${bsxx.bsjs}" placeholder="比赛介绍" class="form-control"  aria-describedby="span_bsjs"  /> 
           </div>        </div> 
       <div id='id_div_qry_zgrs' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zgrs">总共人数</span> 
               <input id="zgrs" name="zgrs" value="${bsxx.zgrs}" placeholder="总共人数" class="form-control"  aria-describedby="span_zgrs"  /> 
           </div>        </div> 
       <div id='id_div_qry_bmrs' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bmrs">报名人数</span> 
               <input id="bmrs" name="bmrs" value="${bsxx.bmrs}" placeholder="报名人数" class="form-control"  aria-describedby="span_bmrs"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsnd' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsnd">比赛年度</span> 
               <input id="bsnd" name="bsnd" value="${bsxx.bsnd}" placeholder="比赛年度" class="form-control"  aria-describedby="span_bsnd"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsyf' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsyf">比赛月份</span> 
               <input id="bsyf" name="bsyf" value="${bsxx.bsyf}" placeholder="比赛月份" class="form-control"  aria-describedby="span_bsyf"  /> 
           </div>        </div> 
       <div id='id_div_qry_kssj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_kssj">开始时间</span> 
               <input id="kssj" name="kssj" value="${bsxx.kssj}" placeholder="开始时间" class="form-control"  aria-describedby="span_kssj"  /> 
           </div>        </div> 
       <div id='id_div_qry_jssj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_jssj">结束时间</span> 
               <input id="jssj" name="jssj" value="${bsxx.jssj}" placeholder="结束时间" class="form-control"  aria-describedby="span_jssj"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz00' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz00">备注项00</span> 
               <input id="bz00" name="bz00" value="${bsxx.bz00}" placeholder="备注项00" class="form-control"  aria-describedby="span_bz00"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz01' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz01">备注项01</span> 
               <input id="bz01" name="bz01" value="${bsxx.bz01}" placeholder="备注项01" class="form-control"  aria-describedby="span_bz01"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz02' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz02">备注项02</span> 
               <input id="bz02" name="bz02" value="${bsxx.bz02}" placeholder="备注项02" class="form-control"  aria-describedby="span_bz02"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz03' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz03">备注项03</span> 
               <input id="bz03" name="bz03" value="${bsxx.bz03}" placeholder="备注项03" class="form-control"  aria-describedby="span_bz03"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz04' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz04">备注项04</span> 
               <input id="bz04" name="bz04" value="${bsxx.bz04}" placeholder="备注项04" class="form-control"  aria-describedby="span_bz04"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz05' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz05">备注项05</span> 
               <input id="bz05" name="bz05" value="${bsxx.bz05}" placeholder="备注项05" class="form-control"  aria-describedby="span_bz05"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz06' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz06">备注项06</span> 
               <input id="bz06" name="bz06" value="${bsxx.bz06}" placeholder="备注项06" class="form-control"  aria-describedby="span_bz06"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz07' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz07">备注项07</span> 
               <input id="bz07" name="bz07" value="${bsxx.bz07}" placeholder="备注项07" class="form-control"  aria-describedby="span_bz07"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz08' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz08">备注项08</span> 
               <input id="bz08" name="bz08" value="${bsxx.bz08}" placeholder="备注项08" class="form-control"  aria-describedby="span_bz08"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz09' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz09">备注项09</span> 
               <input id="bz09" name="bz09" value="${bsxx.bz09}" placeholder="备注项09" class="form-control"  aria-describedby="span_bz09"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz10' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz10">备注项10</span> 
               <input id="bz10" name="bz10" value="${bsxx.bz10}" placeholder="备注项10" class="form-control"  aria-describedby="span_bz10"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz11' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz11">备注项11</span> 
               <input id="bz11" name="bz11" value="${bsxx.bz11}" placeholder="备注项11" class="form-control"  aria-describedby="span_bz11"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz12' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz12">备注项12</span> 
               <input id="bz12" name="bz12" value="${bsxx.bz12}" placeholder="备注项12" class="form-control"  aria-describedby="span_bz12"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz13' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz13">备注项13</span> 
               <input id="bz13" name="bz13" value="${bsxx.bz13}" placeholder="备注项13" class="form-control"  aria-describedby="span_bz13"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz14' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz14">备注项14</span> 
               <input id="bz14" name="bz14" value="${bsxx.bz14}" placeholder="备注项14" class="form-control"  aria-describedby="span_bz14"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz15' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz15">备注项15</span> 
               <input id="bz15" name="bz15" value="${bsxx.bz15}" placeholder="备注项15" class="form-control"  aria-describedby="span_bz15"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz16' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz16">备注项16</span> 
               <input id="bz16" name="bz16" value="${bsxx.bz16}" placeholder="备注项16" class="form-control"  aria-describedby="span_bz16"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz17' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz17">备注项17</span> 
               <input id="bz17" name="bz17" value="${bsxx.bz17}" placeholder="备注项17" class="form-control"  aria-describedby="span_bz17"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz18' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz18">备注项18</span> 
               <input id="bz18" name="bz18" value="${bsxx.bz18}" placeholder="备注项18" class="form-control"  aria-describedby="span_bz18"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz19' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz19">备注项19</span> 
               <input id="bz19" name="bz19" value="${bsxx.bz19}" placeholder="备注项19" class="form-control"  aria-describedby="span_bz19"  /> 
           </div>        </div> 

					
	   <!-----------end---条件字段------------------->
                  
                </div>
            </div><!--row-->
        </form>

        <!--操作按钮 -->
        <div class="row"  id="id_row_qry_btn"  style="" >
            <div class="col-xz-12" style="text-align:center;">
                <button type="button" onclick="btn_qry_click();"    id="id_btn_qry"   class="btn btn-info btn-sm glyphicon glyphicon-pencil"  style="margin:5px;">查 询</button>
                <button type="button" onclick="btn_clear_click();"  id="id_btn_clear" class="btn btn-info btn-sm glyphicon glyphicon-pencil"  style="margin:5px;">重 置</button>
            </div>
        </div>

        <div class="panel-heading panel-heading-with-btn">
            比赛信息-数据清单
            <button onclick="btn_add_click();" id="id_btn_add"  class="btn btn-info btn-sm glyphicon glyphicon-plus"  style="margin:5px;">新 增</button>
            <!--
            <button onclick="btn_exp_click();" id="id_btn_exp"  class="btn btn-info btn-sm glyphicon glyphicon-plus"  style="margin:5px;">导 出</button>
            <button onclick="btn_pnt_click();" id="id_btn_pnt"  class="btn btn-info btn-sm glyphicon glyphicon-plus"  style="margin:5px;">打 印</button>
            <button onclick="btn_del_duo_click();" id="id_btn_del_duo"  class="btn btn-info btn-sm glyphicon glyphicon-plus"  style="margin:5px;">批量删除</button>
            -->
        </div>
        <!--查询结果表格 -->
        <table  class="table table-bordered  table-striped table-condensed   table-info" >
          <thead>
            <tr >
                <th id="th_no"  style="width:20px;">No.</th>
				       <th style='display:none;'><a href="javascript:paixu('bsid');" id='a_bsid'>比赛编码</a></th> 
       <th><a href="javascript:paixu('bsbh');" id='a_bsbh'>比赛编号</a></th> 
       <th><a href="javascript:paixu('bsqh');" id='a_bsqh'>比赛期号</a></th> 
       <%--<th><a href="javascript:paixu('bsjs');" id='a_bsjs'>比赛介绍</a></th> --%>
       <th><a href="javascript:paixu('zgrs');" id='a_zgrs'>总共人数</a></th> 
       <th><a href="javascript:paixu('bmrs');" id='a_bmrs'>报名人数</a></th> 
       <th><a href="javascript:paixu('bsnd');" id='a_bsnd'>比赛年度</a></th> 
       <th><a href="javascript:paixu('bsyf');" id='a_bsyf'>比赛月份</a></th> 
       <th><a href="javascript:paixu('kssj');" id='a_kssj'>开始时间</a></th> 
       <th><a href="javascript:paixu('jssj');" id='a_jssj'>结束时间</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz00');" id='a_bz00'>备注项00</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz01');" id='a_bz01'>备注项01</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz02');" id='a_bz02'>备注项02</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz03');" id='a_bz03'>备注项03</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz04');" id='a_bz04'>备注项04</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz05');" id='a_bz05'>备注项05</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz06');" id='a_bz06'>备注项06</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz07');" id='a_bz07'>备注项07</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz08');" id='a_bz08'>备注项08</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz09');" id='a_bz09'>备注项09</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz10');" id='a_bz10'>备注项10</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz11');" id='a_bz11'>备注项11</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz12');" id='a_bz12'>备注项12</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz13');" id='a_bz13'>备注项13</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz14');" id='a_bz14'>备注项14</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz15');" id='a_bz15'>备注项15</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz16');" id='a_bz16'>备注项16</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz17');" id='a_bz17'>备注项17</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz18');" id='a_bz18'>备注项18</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bz19');" id='a_bz19'>备注项19</a></th> 

				
              <th style="width:200px;">操作</th>
            </tr>
          </thead>
            <tbody>
                <c:forEach items="${cs}" var="c" varStatus="st">
                    <tr>
                        <td>${st.index+1}</td>
						        <td style='display:none;'>${c.bsid}</td>  
        <td>${c.bsbh}</td>  
        <td>${c.bsqh}</td>  
        <%--<td>${c.bsjs}</td>  --%>
        <td>${c.zgrs}</td>  
        <td>${c.bmrs}</td>  
        <td>${c.bsnd}</td>
        <td>${c.bsyf}</td>  
        <td>${c.kssj}</td>  
        <td>${c.jssj}</td>  
        <td style='display:none;'>${c.bz00}</td>  
        <td style='display:none;'>${c.bz01}</td>  
        <td style='display:none;'>${c.bz02}</td>  
        <td style='display:none;'>${c.bz03}</td>  
        <td style='display:none;'>${c.bz04}</td>  
        <td style='display:none;'>${c.bz05}</td>  
        <td style='display:none;'>${c.bz06}</td>  
        <td style='display:none;'>${c.bz07}</td>  
        <td style='display:none;'>${c.bz08}</td>  
        <td style='display:none;'>${c.bz09}</td>  
        <td style='display:none;'>${c.bz10}</td>  
        <td style='display:none;'>${c.bz11}</td>  
        <td style='display:none;'>${c.bz12}</td>  
        <td style='display:none;'>${c.bz13}</td>  
        <td style='display:none;'>${c.bz14}</td>  
        <td style='display:none;'>${c.bz15}</td>  
        <td style='display:none;'>${c.bz16}</td>  
        <td style='display:none;'>${c.bz17}</td>  
        <td style='display:none;'>${c.bz18}</td>  
        <td style='display:none;'>${c.bz19}</td>  
 
						
                        <td style="text-align: center;">

                            <a class='btn btn-danger btn-xs btn-del'    target="_blank"  href="detail/${c.bsid}">详情</a>
                            <a class='btn btn-success btn-xs btn-mod'   href="modify/${c.bsid}">修改</a>
                            <a class='btn btn-warning btn-xs btn-detail' onClick="return confirm('确定删除?');"   href="remove/${c.bsid}">删除</a>


                            <a class='btn btn-success btn-xs btn-mod'  onclick="btn_jieguo_click('${c.bsid}');"  >比赛情况</a>

                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>

        <!--分页信息 -->
        <div class="panel-heading">

             <table style="width:99.9%;" border="0">
             <tr>
                <td style='width:100px; text-align:right;'>

                    共${page.total}条数据，每页
                </td>
                 <td style="width:70px;">
                    <select id="select_pagecount"  class="form-control input-sm"
                            onchange=" dvd_set_val('start','0'); dvd_set_val('count',this.value);formlist.submit();"
                            style='width:70px;height:30px; line-height:30px;'>

                        <option value="10">10</option>
                        <option value="20">20</option>
                        <option value="30">30</option>
                        <option value="50">50</option>
                        <option value="100">100</option>
                    </select>
                 </td>
                 <td style="text-align: left;">
                     条,当前
                    <fmt:parseNumber integerOnly="true" value="${page.start/page.count+1}" />
                    /
                    <fmt:parseNumber integerOnly="true" value="${ (page.total-1)/page.count + 1 }" />
                    页
                 </td>
                 <td>
                 </td>
                 <td style= " text-align:right;  ">
                    <div class="btn-group" role="group" aria-label= "" >
                        <button class='btn btn-xs btn-info' type="button" onclick="gotopage('0');">首页</button>
                        <button class='btn btn-xs btn-info' type="button" onclick="gotopagePerior( );">上一页</button>
                        <button class='btn btn-xs btn-info' type="button" onclick="gotopageNext( );">下一页</button>
                        <button class='btn btn-xs btn-info' type="button" onclick="gotopage('${page.last}');">末页</button>
                    </div>
                 </td>
                 <td style="width:70px;text-align:center;"> 转到第</td>
                 <td style="width:70px; text-align:center;">
                        <select id="select_gotopage" class="form-control input-sm"  onchange="gotopage((this.value-1)*${page.count});" style='width:50px;height:30px; line-height:30px;'>
                            <option value="1"></option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                        </select>
                 </td><td style="text-align: left;">页</td>
             </tr>
            </table>
        </div>

    </div>
</div><!--container-fluid-->

<script src="../../help/jquery/jquery.min.js"  ></script>
<script src="../../help/bt/js/bootstrap.min.js"></script> 
<script src="../../help/fuslUI/plugins/layui/layui.js"  ></script>
 
<script src="../../help/jdavid/c.check.js" language="javascript" type="text/javascript"></script>
<script src="../../help/jdavid/e.util.js" language="javascript" type="text/javascript"></script>
<script src="../../help/jdavid/f.request.js" language="javascript" type="text/javascript"></script>
 
<!-- project 公用的js -->
<script src="../../help/jdavid/z.proj.js" language="javascript" type="text/javascript"></script>

<!-- 页面自己的js -->
<script src="js/list.js?Math.random()" language="javascript" type="text/javascript" ></script>
<script type="text/javascript">

    layui.use(['element', 'form','code'], function(){
        var element = layui.element;
        element.on('collapse(test)', function(data){
            console.log(data);
        });
        layui.code();
    });

    function  btn_jieguo_click(bsid) {
         //alert(bsid);
         open_bsmx(bsid);
        //var s_url='../cj_bsmx/c.jsp?_bsid='+id+'&_='+get_guid32();
        //window.open(s_url);

    }



    function open_bsmx(bsid){

        var url="../bsmx/list?bsid="+bsid+'&_='+get_guid32();

        //弹出一个iframe层
        //  $('#popup2').on('click', function(){
        layer.open({
            type: 2,                 //2个窗口
            title: '比赛情况',   //弹出框标题
            maxmin: true,            //最大化窗口

            shadeClose: true,        //点击遮罩关闭层
            area : ['800px' , '560px'],
            content:url
            // content: 'http://www.baidu.com'
        });
        // });

        $(".layui-layer-content iframe").css("width","100%");

        /*
      <iframe scrolling="auto" allowtransparency="true"
          id="layui-layer-iframe2" name="layui-layer-iframe2"
          onload="this.className='';" class="" frameborder="0"
          src="../cj_bsmx/c.jsp?_bsid=b5682dac-33a5-4ce3-b038-4b95cdb3e039&amp;_=56404f1a09bd334ab5e4705d36064949"
          style="height: 758px;width:100%;"></iframe>
        */
    }

</script>


</body>
</html>
