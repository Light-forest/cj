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
    <title>报名信息-列表查询</title>
     
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

        <div class="panel-heading">报名信息-查询条件(
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
	           <div id='id_div_qry_bmid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bmid">报名编码</span> 
               <input id="bmid" name="bmid" value="${bmxx.bmid}" placeholder="报名编码" class="form-control"  aria-describedby="span_bmid"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsid">比赛编码</span> 
               <input id="bsid" name="bsid" value="${bmxx.bsid}" placeholder="比赛编码" class="form-control"  aria-describedby="span_bsid"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsqh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsqh">比赛期号</span> 
               <input id="bsqh" name="bsqh" value="${bmxx.bsqh}" placeholder="比赛期号" class="form-control"  aria-describedby="span_bsqh"  /> 
           </div>        </div> 
       <div id='id_div_qry_bmbh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bmbh">报名编号</span> 
               <input id="bmbh" name="bmbh" value="${bmxx.bmbh}" placeholder="报名编号" class="form-control"  aria-describedby="span_bmbh"  /> 
           </div>        </div> 
       <div id='id_div_qry_sjhm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sjhm">手机号码</span> 
               <input id="sjhm" name="sjhm" value="${bmxx.sjhm}" placeholder="手机号码" class="form-control"  aria-describedby="span_sjhm"  /> 
           </div>        </div> 
       <div id='id_div_qry_yxjsm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_yxjsm">游戏角色名</span> 
               <input id="yxjsm" name="yxjsm" value="${bmxx.yxjsm}" placeholder="游戏角色名" class="form-control"  aria-describedby="span_yxjsm"  /> 
           </div>        </div> 
       <div id='id_div_qry_sfzxm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sfzxm">身份证姓名</span> 
               <input id="sfzxm" name="sfzxm" value="${bmxx.sfzxm}" placeholder="身份证姓名" class="form-control"  aria-describedby="span_sfzxm"  /> 
           </div>        </div> 
       <div id='id_div_qry_sfzhm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sfzhm">身份证号码</span> 
               <input id="sfzhm" name="sfzhm" value="${bmxx.sfzhm}" placeholder="身份证号码" class="form-control"  aria-describedby="span_sfzhm"  /> 
           </div>        </div> 
       <div id='id_div_qry_sfzzp' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sfzzp">身份证照片</span> 
               <input id="sfzzp" name="sfzzp" value="${bmxx.sfzzp}" placeholder="身份证照片" class="form-control"  aria-describedby="span_sfzzp"  /> 
           </div>        </div> 
       <div id='id_div_qry_brwxh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_brwxh">本人微信号</span> 
               <input id="brwxh" name="brwxh" value="${bmxx.brwxh}" placeholder="本人微信号" class="form-control"  aria-describedby="span_brwxh"  /> 
           </div>        </div> 
       <div id='id_div_qry_wdddh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wdddh">微店订单号</span> 
               <input id="wdddh" name="wdddh" value="${bmxx.wdddh}" placeholder="微店订单号" class="form-control"  aria-describedby="span_wdddh"  /> 
           </div>        </div> 
       <div id='id_div_qry_sfhmd' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sfhmd">是否黑名单</span> 
               <input id="sfhmd" name="sfhmd" value="${bmxx.sfhmd}" placeholder="是否黑名单" class="form-control"  aria-describedby="span_sfhmd"  /> 
           </div>        </div> 
       <div id='id_div_qry_rhyy' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_rhyy">入黑原因</span> 
               <input id="rhyy" name="rhyy" value="${bmxx.rhyy}" placeholder="入黑原因" class="form-control"  aria-describedby="span_rhyy"  /> 
           </div>        </div> 
       <div id='id_div_qry_bmsj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bmsj">报名时间</span> 
               <input id="bmsj" name="bmsj" value="${bmxx.bmsj}" placeholder="报名时间" class="form-control"  aria-describedby="span_bmsj"  /> 
           </div>        </div> 
       <div id='id_div_qry_bscj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bscj">比赛成绩</span> 
               <input id="bscj" name="bscj" value="${bmxx.bscj}" placeholder="比赛成绩" class="form-control"  aria-describedby="span_bscj"  /> 
           </div>        </div> 
       <div id='id_div_qry_bsmc' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bsmc">比赛名次</span> 
               <input id="bsmc" name="bsmc" value="${bmxx.bsmc}" placeholder="比赛名次" class="form-control"  aria-describedby="span_bsmc"  /> 
           </div>        </div> 
       <div id='id_div_qry_jjje' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_jjje">奖金金额</span> 
               <input id="jjje" name="jjje" value="${bmxx.jjje}" placeholder="奖金金额" class="form-control"  aria-describedby="span_jjje"  /> 
           </div>        </div> 
       <div id='id_div_qry_bszm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bszm">比赛证明</span> 
               <input id="bszm" name="bszm" value="${bmxx.bszm}" placeholder="比赛证明" class="form-control"  aria-describedby="span_bszm"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz00' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz00">备注项00</span> 
               <input id="bz00" name="bz00" value="${bmxx.bz00}" placeholder="备注项00" class="form-control"  aria-describedby="span_bz00"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz01' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz01">备注项01</span> 
               <input id="bz01" name="bz01" value="${bmxx.bz01}" placeholder="备注项01" class="form-control"  aria-describedby="span_bz01"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz02' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz02">备注项02</span> 
               <input id="bz02" name="bz02" value="${bmxx.bz02}" placeholder="备注项02" class="form-control"  aria-describedby="span_bz02"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz03' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz03">备注项03</span> 
               <input id="bz03" name="bz03" value="${bmxx.bz03}" placeholder="备注项03" class="form-control"  aria-describedby="span_bz03"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz04' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz04">备注项04</span> 
               <input id="bz04" name="bz04" value="${bmxx.bz04}" placeholder="备注项04" class="form-control"  aria-describedby="span_bz04"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz05' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz05">备注项05</span> 
               <input id="bz05" name="bz05" value="${bmxx.bz05}" placeholder="备注项05" class="form-control"  aria-describedby="span_bz05"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz06' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz06">备注项06</span> 
               <input id="bz06" name="bz06" value="${bmxx.bz06}" placeholder="备注项06" class="form-control"  aria-describedby="span_bz06"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz07' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz07">备注项07</span> 
               <input id="bz07" name="bz07" value="${bmxx.bz07}" placeholder="备注项07" class="form-control"  aria-describedby="span_bz07"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz08' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz08">备注项08</span> 
               <input id="bz08" name="bz08" value="${bmxx.bz08}" placeholder="备注项08" class="form-control"  aria-describedby="span_bz08"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz09' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz09">备注项09</span> 
               <input id="bz09" name="bz09" value="${bmxx.bz09}" placeholder="备注项09" class="form-control"  aria-describedby="span_bz09"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz10' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz10">备注项10</span> 
               <input id="bz10" name="bz10" value="${bmxx.bz10}" placeholder="备注项10" class="form-control"  aria-describedby="span_bz10"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz11' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz11">备注项11</span> 
               <input id="bz11" name="bz11" value="${bmxx.bz11}" placeholder="备注项11" class="form-control"  aria-describedby="span_bz11"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz12' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz12">备注项12</span> 
               <input id="bz12" name="bz12" value="${bmxx.bz12}" placeholder="备注项12" class="form-control"  aria-describedby="span_bz12"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz13' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz13">备注项13</span> 
               <input id="bz13" name="bz13" value="${bmxx.bz13}" placeholder="备注项13" class="form-control"  aria-describedby="span_bz13"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz14' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz14">备注项14</span> 
               <input id="bz14" name="bz14" value="${bmxx.bz14}" placeholder="备注项14" class="form-control"  aria-describedby="span_bz14"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz15' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz15">备注项15</span> 
               <input id="bz15" name="bz15" value="${bmxx.bz15}" placeholder="备注项15" class="form-control"  aria-describedby="span_bz15"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz16' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz16">备注项16</span> 
               <input id="bz16" name="bz16" value="${bmxx.bz16}" placeholder="备注项16" class="form-control"  aria-describedby="span_bz16"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz17' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz17">备注项17</span> 
               <input id="bz17" name="bz17" value="${bmxx.bz17}" placeholder="备注项17" class="form-control"  aria-describedby="span_bz17"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz18' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz18">备注项18</span> 
               <input id="bz18" name="bz18" value="${bmxx.bz18}" placeholder="备注项18" class="form-control"  aria-describedby="span_bz18"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz19' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz19">备注项19</span> 
               <input id="bz19" name="bz19" value="${bmxx.bz19}" placeholder="备注项19" class="form-control"  aria-describedby="span_bz19"  /> 
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
            报名信息-数据清单
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
                <th style='display:none;'><a href="javascript:paixu('bmid');" id='a_bmid'>报名编码</a></th>
                <th style='display:none;'><a href="javascript:paixu('bsid');" id='a_bsid'>比赛编码</a></th>
                <th><a href="javascript:paixu('bsqh');" id='a_bsqh'>比赛期号</a></th>
                <th><a href="javascript:paixu('sjhm');" id='a_sjhm'>手机号码</a></th>
                <th><a href="javascript:paixu('yxjsm');" id='a_yxjsm'>游戏角色名</a></th>
                <th><a href="javascript:paixu('sfzxm');" id='a_sfzxm'>身份证姓名</a></th>
                <th><a href="javascript:paixu('sfzhm');" id='a_sfzhm'>身份证号码</a></th>
                <th><a href="javascript:paixu('brwxh');" id='a_brwxh'>本人微信号</a></th>
                <th><a href="javascript:paixu('sfhmd');" id='a_sfhmd'>是否黑名单</a></th>

				
                <th style="width:200px;">操作</th>
            </tr>
          </thead>
            <tbody>
                <c:forEach items="${cs}" var="c" varStatus="st">
                    <tr>
                        <td>${st.index+1}</td>
						    <td style='display:none;'>${c.bmid}</td>
                            <td style='display:none;'>${c.bsid}</td>
                            <td>${c.bsqh}</td>
                            <td>${c.sjhm}</td>
                            <td>${c.yxjsm}</td>
                            <td>${c.sfzxm}</td>
                            <td>${c.sfzhm}</td>
                            <td>${c.brwxh}</td>
                            <td>${c.sfhmd}</td>



						
                        <td style="text-align: center;">

                            <a class='btn btn-danger btn-xs btn-del'    target="_blank"  href="detail/${c.bmid}">详情</a>
                            <a class='btn btn-success btn-xs btn-mod'   href="modify/${c.bmid}">修改</a>
                            <a class='btn btn-warning btn-xs btn-detail' onClick="return confirm('确定删除?');"   href="remove/${c.bmid}">删除</a>



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
