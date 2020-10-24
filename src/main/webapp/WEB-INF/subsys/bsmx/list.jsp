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
    <title>比赛明细-列表查询</title>
     
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

        <div class="panel-heading" style="display: none;">比赛明细-查询条件(
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
        <form  name="formlist" method="post" action="list" style="display: none;" >

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
	           <div id='id_div_qry_mxid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_mxid">明细编码</span> 
               <input id="mxid" name="mxid" value="${bsmx.mxid}" placeholder="明细编码" class="form-control"  aria-describedby="span_mxid"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsid">比赛编码</span> 
               <input id="bsid" name="bsid" value="${bsmx.bsid}" placeholder="比赛编码" class="form-control"  aria-describedby="span_bsid"  /> 
           </div>        </div> 
       <div id='id_div_qry_bmid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bmid">报名编码</span> 
               <input id="bmid" name="bmid" value="${bsmx.bmid}" placeholder="报名编码" class="form-control"  aria-describedby="span_bmid"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsqh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsqh">比赛期号</span> 
               <input id="bsqh" name="bsqh" value="${bsmx.bsqh}" placeholder="比赛期号" class="form-control"  aria-describedby="span_bsqh"  /> 
           </div>        </div> 
       <div id='id_div_qry_jsmc' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_jsmc">游戏角色名</span> 
               <input id="jsmc" name="jsmc" value="${bsmx.jsmc}" placeholder="游戏角色名" class="form-control"  aria-describedby="span_jsmc"  /> 
           </div>        </div> 
       <div id='id_div_qry_bssj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bssj">比赛时间</span> 
               <input id="bssj" name="bssj" value="${bsmx.bssj}" placeholder="比赛时间" class="form-control"  aria-describedby="span_bssj"  /> 
           </div>        </div> 
       <div id='id_div_qry_bscc' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bscc">吃鸡次数</span> 
               <input id="bscc" name="bscc" value="${bsmx.bscc}" placeholder="吃鸡次数" class="form-control"  aria-describedby="span_bscc"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsmc' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsmc">比赛名次</span> 
               <input id="bsmc" name="bsmc" value="${bsmx.bsmc}" placeholder="比赛名次" class="form-control"  aria-describedby="span_bsmc"  /> 
           </div>        </div> 
       <div id='id_div_qry_bszm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bszm">比赛证明</span> 
               <input id="bszm" name="bszm" value="${bsmx.bszm}" placeholder="比赛证明" class="form-control"  aria-describedby="span_bszm"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz00' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz00">备注项00</span> 
               <input id="bz00" name="bz00" value="${bsmx.bz00}" placeholder="备注项00" class="form-control"  aria-describedby="span_bz00"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz01' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz01">比赛奖金</span> 
               <input id="bz01" name="bz01" value="${bsmx.bz01}" placeholder="比赛奖金" class="form-control"  aria-describedby="span_bz01"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz02' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz02">备注项02</span> 
               <input id="bz02" name="bz02" value="${bsmx.bz02}" placeholder="备注项02" class="form-control"  aria-describedby="span_bz02"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz03' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz03">备注项03</span> 
               <input id="bz03" name="bz03" value="${bsmx.bz03}" placeholder="备注项03" class="form-control"  aria-describedby="span_bz03"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz04' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz04">备注项04</span> 
               <input id="bz04" name="bz04" value="${bsmx.bz04}" placeholder="备注项04" class="form-control"  aria-describedby="span_bz04"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz05' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz05">备注项05</span> 
               <input id="bz05" name="bz05" value="${bsmx.bz05}" placeholder="备注项05" class="form-control"  aria-describedby="span_bz05"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz06' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz06">备注项06</span> 
               <input id="bz06" name="bz06" value="${bsmx.bz06}" placeholder="备注项06" class="form-control"  aria-describedby="span_bz06"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz07' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz07">备注项07</span> 
               <input id="bz07" name="bz07" value="${bsmx.bz07}" placeholder="备注项07" class="form-control"  aria-describedby="span_bz07"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz08' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz08">备注项08</span> 
               <input id="bz08" name="bz08" value="${bsmx.bz08}" placeholder="备注项08" class="form-control"  aria-describedby="span_bz08"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz09' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz09">备注项09</span> 
               <input id="bz09" name="bz09" value="${bsmx.bz09}" placeholder="备注项09" class="form-control"  aria-describedby="span_bz09"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz10' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz10">备注项10</span> 
               <input id="bz10" name="bz10" value="${bsmx.bz10}" placeholder="备注项10" class="form-control"  aria-describedby="span_bz10"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz11' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz11">备注项11</span> 
               <input id="bz11" name="bz11" value="${bsmx.bz11}" placeholder="备注项11" class="form-control"  aria-describedby="span_bz11"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz12' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz12">备注项12</span> 
               <input id="bz12" name="bz12" value="${bsmx.bz12}" placeholder="备注项12" class="form-control"  aria-describedby="span_bz12"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz13' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz13">备注项13</span> 
               <input id="bz13" name="bz13" value="${bsmx.bz13}" placeholder="备注项13" class="form-control"  aria-describedby="span_bz13"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz14' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz14">备注项14</span> 
               <input id="bz14" name="bz14" value="${bsmx.bz14}" placeholder="备注项14" class="form-control"  aria-describedby="span_bz14"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz15' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz15">备注项15</span> 
               <input id="bz15" name="bz15" value="${bsmx.bz15}" placeholder="备注项15" class="form-control"  aria-describedby="span_bz15"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz16' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz16">备注项16</span> 
               <input id="bz16" name="bz16" value="${bsmx.bz16}" placeholder="备注项16" class="form-control"  aria-describedby="span_bz16"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz17' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz17">备注项17</span> 
               <input id="bz17" name="bz17" value="${bsmx.bz17}" placeholder="备注项17" class="form-control"  aria-describedby="span_bz17"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz18' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz18">备注项18</span> 
               <input id="bz18" name="bz18" value="${bsmx.bz18}" placeholder="备注项18" class="form-control"  aria-describedby="span_bz18"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz19' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz19">备注项19</span> 
               <input id="bz19" name="bz19" value="${bsmx.bz19}" placeholder="备注项19" class="form-control"  aria-describedby="span_bz19"  /> 
           </div>        </div> 

					
	   <!-----------end---条件字段------------------->
                  
                </div>
            </div><!--row-->
        </form>

        <!--操作按钮 -->
        <div class="row"  id="id_row_qry_btn"  style="display: none;" >
            <div class="col-xz-12" style="text-align:center;">
                <button type="button" onclick="btn_qry_click();"    id="id_btn_qry"   class="btn btn-info btn-sm glyphicon glyphicon-pencil"  style="margin:5px;">查 询</button>
                <button type="button" onclick="btn_clear_click();"  id="id_btn_clear" class="btn btn-info btn-sm glyphicon glyphicon-pencil"  style="margin:5px;">重 置</button>
            </div>
        </div>

        <div class="panel-heading panel-heading-with-btn">
            比赛明细-数据清单
            <button onclick="btn_add_click('${bsmx.bsid}');" id="id_btn_add"  class="btn btn-info btn-sm glyphicon glyphicon-plus"  style="margin:5px;">新 增</button>
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
				       <th style='display:none;'><a href="javascript:paixu('mxid');" id='a_mxid'>明细编码</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bsid');" id='a_bsid'>比赛编码</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bmid');" id='a_bmid'>报名编码</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bsqh');" id='a_bsqh'>比赛期号</a></th>
       <th><a href="javascript:paixu('jsmc');" id='a_jsmc'>游戏角色名</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bssj');" id='a_bssj'>比赛时间</a></th>
       <th><a href="javascript:paixu('bscc');" id='a_bscc'>吃鸡次数</a></th> 
       <th><a href="javascript:paixu('bsmc');" id='a_bsmc'>比赛名次</a></th> 
       <th style='display:none;'><a href="javascript:paixu('bszm');" id='a_bszm'>比赛证明</a></th>
       <th style='display:none;'><a href="javascript:paixu('bz00');" id='a_bz00'>备注项00</a></th> 
       <th><a href="javascript:paixu('bz01');" id='a_bz01'>比赛奖金</a></th> 
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
						        <td style='display:none;'>${c.mxid}</td>  
        <td style='display:none;'>${c.bsid}</td>  
        <td style='display:none;'>${c.bmid}</td>  
        <td style='display:none;'>${c.bsqh}</td>
        <td>${c.jsmc}</td>  
        <td style='display:none;'>${c.bssj}</td>
        <td>${c.bscc}</td>  
        <td>${c.bsmc}</td>  
        <td style='display:none;'>${c.bszm}</td>
        <td style='display:none;'>${c.bz00}</td>  
        <td>${c.bz01}</td>  
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

                            <%--<a class='btn btn-danger btn-xs btn-del'    target="_blank"  href="detail/${c.mxid}">详情</a>--%>
                            <a class='btn btn-success btn-xs btn-mod'   href="modify/${c.mxid}">修改</a>
                            <a class='btn btn-warning btn-xs btn-detail' onClick="return confirm('确定删除?');"   href="remove/${c.mxid}">删除</a>

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
    
</script>


</body>
</html>
