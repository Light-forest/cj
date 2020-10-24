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
    <title>栏目信息-列表查询</title>
     
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

        <div class="panel-heading">栏目信息-查询条件(
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
        <form  name="formlist" method="post" action="list"  style="display: none;">

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
	           <div id='id_div_qry_lmid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmid">栏目编码</span> 
               <input id="lmid" name="lmid" value="${lmxx.lmid}" placeholder="栏目编码" class="form-control"  aria-describedby="span_lmid"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmbh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmbh">栏目编号</span> 
               <input id="lmbh" name="lmbh" value="${lmxx.lmbh}" placeholder="栏目编号" class="form-control"  aria-describedby="span_lmbh"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmsx' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmsx">栏目顺序</span> 
               <input id="lmsx" name="lmsx" value="${lmxx.lmsx}" placeholder="栏目顺序" class="form-control"  aria-describedby="span_lmsx"  /> 
           </div>        </div> 
       <div id='id_div_qry_zwbt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zwbt">中文标题</span> 
               <input id="zwbt" name="zwbt" value="${lmxx.zwbt}" placeholder="中文标题" class="form-control"  aria-describedby="span_zwbt"  /> 
           </div>        </div> 
       <div id='id_div_qry_ywbt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_ywbt">英文标题</span> 
               <input id="ywbt" name="ywbt" value="${lmxx.ywbt}" placeholder="英文标题" class="form-control"  aria-describedby="span_ywbt"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmtp' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmtp">栏目图片</span> 
               <input id="lmtp" name="lmtp" value="${lmxx.lmtp}" placeholder="栏目图片" class="form-control"  aria-describedby="span_lmtp"  /> 
           </div>        </div> 
       <div id='id_div_qry_zwsm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zwsm">中文说明</span> 
               <input id="zwsm" name="zwsm" value="${lmxx.zwsm}" placeholder="中文说明" class="form-control"  aria-describedby="span_zwsm"  /> 
           </div>        </div> 
       <div id='id_div_qry_ywsm' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_ywsm">英文说明</span> 
               <input id="ywsm" name="ywsm" value="${lmxx.ywsm}" placeholder="英文说明" class="form-control"  aria-describedby="span_ywsm"  /> 
           </div>        </div> 
       <div id='id_div_qry_djzx' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_djzx">点击展现</span> 
               <input id="djzx" name="djzx" value="${lmxx.djzx}" placeholder="点击展现" class="form-control"  aria-describedby="span_djzx"  /> 
           </div>        </div> 
       <div id='id_div_qry_bjsj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bjsj">编辑时间</span> 
               <input id="bjsj" name="bjsj" value="${lmxx.bjsj}" placeholder="编辑时间" class="form-control"  aria-describedby="span_bjsj"  /> 
           </div>        </div> 
       <div id='id_div_qry_bjry' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bjry">编辑人员</span> 
               <input id="bjry" name="bjry" value="${lmxx.bjry}" placeholder="编辑人员" class="form-control"  aria-describedby="span_bjry"  /> 
           </div>        </div> 
       <div id='id_div_qry_fuid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_fuid">父栏编码</span> 
               <input id="fuid" name="fuid" value="${lmxx.fuid}" placeholder="父栏编码" class="form-control"  aria-describedby="span_fuid"  /> 
           </div>        </div> 
       <div id='id_div_qry_fumc' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_fumc">父栏名称</span> 
               <input id="fumc" name="fumc" value="${lmxx.fumc}" placeholder="父栏名称" class="form-control"  aria-describedby="span_fumc"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmlj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmlj">栏目路径</span> 
               <input id="lmlj" name="lmlj" value="${lmxx.lmlj}" placeholder="栏目路径" class="form-control"  aria-describedby="span_lmlj"  /> 
           </div>        </div> 
       <div id='id_div_qry_wldz' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wldz">外链地址</span> 
               <input id="wldz" name="wldz" value="${lmxx.wldz}" placeholder="外链地址" class="form-control"  aria-describedby="span_wldz"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmzt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmzt">栏目状态</span> 
               <input id="lmzt" name="lmzt" value="${lmxx.lmzt}" placeholder="栏目状态" class="form-control"  aria-describedby="span_lmzt"  /> 
           </div>        </div> 
       <div id='id_div_qry_gjcy' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_gjcy">关键词语</span> 
               <input id="gjcy" name="gjcy" value="${lmxx.gjcy}" placeholder="关键词语" class="form-control"  aria-describedby="span_gjcy"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzsl' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzsl">文章数量</span> 
               <input id="wzsl" name="wzsl" value="${lmxx.wzsl}" placeholder="文章数量" class="form-control"  aria-describedby="span_wzsl"  /> 
           </div>        </div> 
       <div id='id_div_qry_djsl' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_djsl">点击数量</span> 
               <input id="djsl" name="djsl" value="${lmxx.djsl}" placeholder="点击数量" class="form-control"  aria-describedby="span_djsl"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz00' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz00">备注项00</span> 
               <input id="bz00" name="bz00" value="${lmxx.bz00}" placeholder="备注项00" class="form-control"  aria-describedby="span_bz00"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz01' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz01">备注项01</span> 
               <input id="bz01" name="bz01" value="${lmxx.bz01}" placeholder="备注项01" class="form-control"  aria-describedby="span_bz01"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz02' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz02">备注项02</span> 
               <input id="bz02" name="bz02" value="${lmxx.bz02}" placeholder="备注项02" class="form-control"  aria-describedby="span_bz02"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz03' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz03">备注项03</span> 
               <input id="bz03" name="bz03" value="${lmxx.bz03}" placeholder="备注项03" class="form-control"  aria-describedby="span_bz03"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz04' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz04">备注项04</span> 
               <input id="bz04" name="bz04" value="${lmxx.bz04}" placeholder="备注项04" class="form-control"  aria-describedby="span_bz04"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz05' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz05">备注项05</span> 
               <input id="bz05" name="bz05" value="${lmxx.bz05}" placeholder="备注项05" class="form-control"  aria-describedby="span_bz05"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz06' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz06">备注项06</span> 
               <input id="bz06" name="bz06" value="${lmxx.bz06}" placeholder="备注项06" class="form-control"  aria-describedby="span_bz06"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz07' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz07">备注项07</span> 
               <input id="bz07" name="bz07" value="${lmxx.bz07}" placeholder="备注项07" class="form-control"  aria-describedby="span_bz07"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz08' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz08">备注项08</span> 
               <input id="bz08" name="bz08" value="${lmxx.bz08}" placeholder="备注项08" class="form-control"  aria-describedby="span_bz08"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz09' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz09">备注项09</span> 
               <input id="bz09" name="bz09" value="${lmxx.bz09}" placeholder="备注项09" class="form-control"  aria-describedby="span_bz09"  /> 
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
            栏目信息-数据清单
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
				       <th style='display:none;'><a href="javascript:paixu('lmid');" id='a_lmid'>栏目编码</a></th> 
       <th><a href="javascript:paixu('lmbh');" id='a_lmbh'>栏目编号</a></th> 
       <th><a href="javascript:paixu('lmsx');" id='a_lmsx'>栏目顺序</a></th> 
       <th><a href="javascript:paixu('zwbt');" id='a_zwbt'>中文标题</a></th>
                <%----%>
       <%--<th><a href="javascript:paixu('ywbt');" id='a_ywbt'>英文标题</a></th> --%>
       <%--<th><a href="javascript:paixu('lmtp');" id='a_lmtp'>栏目图片</a></th> --%>
       <%--<th><a href="javascript:paixu('zwsm');" id='a_zwsm'>中文说明</a></th> --%>
       <%--<th><a href="javascript:paixu('ywsm');" id='a_ywsm'>英文说明</a></th> --%>
       <%--<th><a href="javascript:paixu('djzx');" id='a_djzx'>点击展现</a></th> --%>
       <%--<th><a href="javascript:paixu('bjsj');" id='a_bjsj'>编辑时间</a></th> --%>
       <%--<th><a href="javascript:paixu('bjry');" id='a_bjry'>编辑人员</a></th> --%>
       <%--<th style='display:none;'><a href="javascript:paixu('fuid');" id='a_fuid'>父栏编码</a></th> --%>
       <%--<th><a href="javascript:paixu('fumc');" id='a_fumc'>父栏名称</a></th> --%>
       <%--<th><a href="javascript:paixu('lmlj');" id='a_lmlj'>栏目路径</a></th> --%>
       <%--<th><a href="javascript:paixu('wldz');" id='a_wldz'>外链地址</a></th> --%>
       <%--<th><a href="javascript:paixu('lmzt');" id='a_lmzt'>栏目状态</a></th> --%>
       <%--<th><a href="javascript:paixu('gjcy');" id='a_gjcy'>关键词语</a></th> --%>
       <%--<th><a href="javascript:paixu('wzsl');" id='a_wzsl'>文章数量</a></th> --%>
       <%--<th><a href="javascript:paixu('djsl');" id='a_djsl'>点击数量</a></th> --%>
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

				
              <th style="width:200px;">操作</th>
            </tr>
          </thead>
            <tbody>
                <c:forEach items="${cs}" var="c" varStatus="st">
                    <tr>
                        <td>${st.index+1}</td>
						        <td style='display:none;'>${c.lmid}</td>  
        <td>${c.lmbh}</td>  
        <td>${c.lmsx}</td>  
        <td>${c.zwbt}</td>  
        <%--<td>${c.ywbt}</td>  --%>
        <%--<td>${c.lmtp}</td>  --%>
        <%--<td>${c.zwsm}</td>  --%>
        <%--<td>${c.ywsm}</td>  --%>
        <%--<td>${c.djzx}</td>  --%>
        <%--<td>${c.bjsj}</td>  --%>
        <%--<td>${c.bjry}</td>  --%>
        <%--<td style='display:none;'>${c.fuid}</td>  --%>
        <%--<td>${c.fumc}</td>  --%>
        <%--<td>${c.lmlj}</td>  --%>
        <%--<td>${c.wldz}</td>  --%>
        <%--<td>${c.lmzt}</td>  --%>
        <%--<td>${c.gjcy}</td>  --%>
        <%--<td>${c.wzsl}</td>  --%>
        <%--<td>${c.djsl}</td>  --%>
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
 
						
                        <td style="text-align: center;">

                            <%--<a class='btn btn-danger btn-xs btn-del'    target="_blank"  href="detail/${c.lmid}">详情</a>--%>
                            <%--<a class='btn btn-success btn-xs btn-mod'   href="modify/${c.lmid}">修改</a>--%>
                            <%--<a class='btn btn-warning btn-xs btn-detail' onClick="return confirm('确定删除?');"   href="remove/${c.lmid}">删除</a>--%>

                            <a class='btn btn-success btn-xs btn-mod'   href="../../subsys/wzxx/list?lmid=${c.lmid}">文章信息</a>

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
