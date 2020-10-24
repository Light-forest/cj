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
    <title>文章信息-列表查询</title>
     
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

        <div class="panel-heading">文章信息-查询条件(
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
        <form  name="formlist" method="post" action="list" style="display:none;"  >

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
	           <div id='id_div_qry_wzid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzid">文章编码</span> 
               <input id="wzid" name="wzid" value="${wzxx.wzid}" placeholder="文章编码" class="form-control"  aria-describedby="span_wzid"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzbh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzbh">文章编号</span> 
               <input id="wzbh" name="wzbh" value="${wzxx.wzbh}" placeholder="文章编号" class="form-control"  aria-describedby="span_wzbh"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzxh' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzxh">文章序号</span> 
               <input id="wzxh" name="wzxh" value="${wzxx.wzxh}" placeholder="文章序号" class="form-control"  aria-describedby="span_wzxh"  /> 
           </div>        </div> 
       <div id='id_div_qry_zwbt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zwbt">中文标题</span> 
               <input id="zwbt" name="zwbt" value="${wzxx.zwbt}" placeholder="中文标题" class="form-control"  aria-describedby="span_zwbt"  /> 
           </div>        </div> 
       <div id='id_div_qry_ywbt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_ywbt">英文标题</span> 
               <input id="ywbt" name="ywbt" value="${wzxx.ywbt}" placeholder="英文标题" class="form-control"  aria-describedby="span_ywbt"  /> 
           </div>        </div> 
       <div id='id_div_qry_btys' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_btys">标题颜色</span> 
               <input id="btys" name="btys" value="${wzxx.btys}" placeholder="标题颜色" class="form-control"  aria-describedby="span_btys"  /> 
           </div>        </div> 
       <div id='id_div_qry_wztp' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wztp">文章图片</span> 
               <input id="wztp" name="wztp" value="${wzxx.wztp}" placeholder="文章图片" class="form-control"  aria-describedby="span_wztp"  /> 
           </div>        </div> 
       <div id='id_div_qry_zwzy' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zwzy">中文摘要</span> 
               <input id="zwzy" name="zwzy" value="${wzxx.zwzy}" placeholder="中文摘要" class="form-control"  aria-describedby="span_zwzy"  /> 
           </div>        </div> 
       <div id='id_div_qry_ywzy' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_ywzy">英文摘要</span> 
               <input id="ywzy" name="ywzy" value="${wzxx.ywzy}" placeholder="英文摘要" class="form-control"  aria-describedby="span_ywzy"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzlx' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzlx">文章类型</span> 
               <input id="wzlx" name="wzlx" value="${wzxx.wzlx}" placeholder="文章类型" class="form-control"  aria-describedby="span_wzlx"  /> 
           </div>        </div> 
       <div id='id_div_qry_zwnr' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zwnr">文章内容</span> 
               <input id="zwnr" name="zwnr" value="${wzxx.zwnr}" placeholder="文章内容" class="form-control"  aria-describedby="span_zwnr"  /> 
           </div>        </div> 
       <div id='id_div_qry_ywnr' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_ywnr">英文内容</span> 
               <input id="ywnr" name="ywnr" value="${wzxx.ywnr}" placeholder="英文内容" class="form-control"  aria-describedby="span_ywnr"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzbq' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzbq">文章标签</span> 
               <input id="wzbq" name="wzbq" value="${wzxx.wzbq}" placeholder="文章标签" class="form-control"  aria-describedby="span_wzbq"  /> 
           </div>        </div> 
       <div id='id_div_qry_gjcy' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_gjcy">关键词语</span> 
               <input id="gjcy" name="gjcy" value="${wzxx.gjcy}" placeholder="关键词语" class="form-control"  aria-describedby="span_gjcy"  /> 
           </div>        </div> 
       <div id='id_div_qry_fbsj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_fbsj">发布时间</span> 
               <input id="fbsj" name="fbsj" value="${wzxx.fbsj}" placeholder="发布时间" class="form-control"  aria-describedby="span_fbsj"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzzz' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzzz">文章作者</span> 
               <input id="wzzz" name="wzzz" value="${wzxx.wzzz}" placeholder="文章作者" class="form-control"  aria-describedby="span_wzzz"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzly' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzly">文章来源</span> 
               <input id="wzly" name="wzly" value="${wzxx.wzly}" placeholder="文章来源" class="form-control"  aria-describedby="span_wzly"  /> 
           </div>        </div> 
       <div id='id_div_qry_bjsj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bjsj">编辑时间</span> 
               <input id="bjsj" name="bjsj" value="${wzxx.bjsj}" placeholder="编辑时间" class="form-control"  aria-describedby="span_bjsj"  /> 
           </div>        </div> 
       <div id='id_div_qry_wzzt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_wzzt">文章状态</span> 
               <input id="wzzt" name="wzzt" value="${wzxx.wzzt}" placeholder="文章状态" class="form-control"  aria-describedby="span_wzzt"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmid' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmid">栏目编码</span> 
               <input id="lmid" name="lmid" value="${wzxx.lmid}" placeholder="栏目编码" class="form-control"  aria-describedby="span_lmid"  /> 
           </div>        </div> 
       <div id='id_div_qry_lmmc' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_lmmc">栏目名称</span> 
               <input id="lmmc" name="lmmc" value="${wzxx.lmmc}" placeholder="栏目名称" class="form-control"  aria-describedby="span_lmmc"  /> 
           </div>        </div> 
       <div id='id_div_qry_fyfs' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_fyfs">分页方式</span> 
               <input id="fyfs" name="fyfs" value="${wzxx.fyfs}" placeholder="分页方式" class="form-control"  aria-describedby="span_fyfs"  /> 
           </div>        </div> 
       <div id='id_div_qry_fydx' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_fydx">分页大小</span> 
               <input id="fydx" name="fydx" value="${wzxx.fydx}" placeholder="分页大小" class="form-control"  aria-describedby="span_fydx"  /> 
           </div>        </div> 
       <div id='id_div_qry_sftt' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sftt">是否头条</span> 
               <input id="sftt" name="sftt" value="${wzxx.sftt}" placeholder="是否头条" class="form-control"  aria-describedby="span_sftt"  /> 
           </div>        </div> 
       <div id='id_div_qry_sftj' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sftj">是否推荐</span> 
               <input id="sftj" name="sftj" value="${wzxx.sftj}" placeholder="是否推荐" class="form-control"  aria-describedby="span_sftj"  /> 
           </div>        </div> 
       <div id='id_div_qry_zdjb' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_zdjb">置顶级别</span> 
               <input id="zdjb" name="zdjb" value="${wzxx.zdjb}" placeholder="置顶级别" class="form-control"  aria-describedby="span_zdjb"  /> 
           </div>        </div> 
       <div id='id_div_qry_sfgd' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_sfgd">是否归档</span> 
               <input id="sfgd" name="sfgd" value="${wzxx.sfgd}" placeholder="是否归档" class="form-control"  aria-describedby="span_sfgd"  /> 
           </div>        </div> 
       <div id='id_div_qry_plsl' class="col-xs-3" style="display: block;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_plsl">评论数量</span> 
               <input id="plsl" name="plsl" value="${wzxx.plsl}" placeholder="评论数量" class="form-control"  aria-describedby="span_plsl"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz00' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz00">备注项00</span> 
               <input id="bz00" name="bz00" value="${wzxx.bz00}" placeholder="备注项00" class="form-control"  aria-describedby="span_bz00"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz01' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz01">备注项01</span> 
               <input id="bz01" name="bz01" value="${wzxx.bz01}" placeholder="备注项01" class="form-control"  aria-describedby="span_bz01"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz02' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz02">备注项02</span> 
               <input id="bz02" name="bz02" value="${wzxx.bz02}" placeholder="备注项02" class="form-control"  aria-describedby="span_bz02"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz03' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz03">备注项03</span> 
               <input id="bz03" name="bz03" value="${wzxx.bz03}" placeholder="备注项03" class="form-control"  aria-describedby="span_bz03"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz04' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz04">备注项04</span> 
               <input id="bz04" name="bz04" value="${wzxx.bz04}" placeholder="备注项04" class="form-control"  aria-describedby="span_bz04"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz05' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz05">备注项05</span> 
               <input id="bz05" name="bz05" value="${wzxx.bz05}" placeholder="备注项05" class="form-control"  aria-describedby="span_bz05"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz06' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz06">备注项06</span> 
               <input id="bz06" name="bz06" value="${wzxx.bz06}" placeholder="备注项06" class="form-control"  aria-describedby="span_bz06"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz07' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz07">备注项07</span> 
               <input id="bz07" name="bz07" value="${wzxx.bz07}" placeholder="备注项07" class="form-control"  aria-describedby="span_bz07"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz08' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz08">备注项08</span> 
               <input id="bz08" name="bz08" value="${wzxx.bz08}" placeholder="备注项08" class="form-control"  aria-describedby="span_bz08"  /> 
           </div>        </div> 
       <div id='id_div_qry_bz09' class="col-xs-3" style="display: none;"> 
           <div class="input-group input-group-sm"> 
               <span class="input-group-addon" id="span_bz09">备注项09</span> 
               <input id="bz09" name="bz09" value="${wzxx.bz09}" placeholder="备注项09" class="form-control"  aria-describedby="span_bz09"  /> 
           </div>        </div> 

					
	   <!-----------end---条件字段------------------->
                  
                </div>
            </div><!--row-->
        </form>

        <!--操作按钮 -->
        <div class="row"  id="id_row_qry_btn"   style="display:none;"  >
            <div class="col-xz-12" style="text-align:center;">
                <button type="button" onclick="btn_qry_click();"    id="id_btn_qry"   class="btn btn-info btn-sm glyphicon glyphicon-pencil"  style="margin:5px;">查 询</button>
                <button type="button" onclick="btn_clear_click();"  id="id_btn_clear" class="btn btn-info btn-sm glyphicon glyphicon-pencil"  style="margin:5px;">重 置</button>
            </div>
        </div>

        <div class="panel-heading panel-heading-with-btn">
            文章信息-数据清单
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
				       <th style='display:none;'><a href="javascript:paixu('wzid');" id='a_wzid'>文章编码</a></th> 
       <th><a href="javascript:paixu('wzbh');" id='a_wzbh'>文章编号</a></th> 
       <th><a href="javascript:paixu('wzxh');" id='a_wzxh'>文章序号</a></th> 
       <th><a href="javascript:paixu('zwbt');" id='a_zwbt'>中文标题</a></th> 
       <%--<th><a href="javascript:paixu('ywbt');" id='a_ywbt'>英文标题</a></th> --%>
       <%--<th><a href="javascript:paixu('btys');" id='a_btys'>标题颜色</a></th> --%>
       <%--<th><a href="javascript:paixu('wztp');" id='a_wztp'>文章图片</a></th> --%>
       <%--<th><a href="javascript:paixu('zwzy');" id='a_zwzy'>中文摘要</a></th> --%>
       <%--<th><a href="javascript:paixu('ywzy');" id='a_ywzy'>英文摘要</a></th> --%>
       <%--<th><a href="javascript:paixu('wzlx');" id='a_wzlx'>文章类型</a></th> --%>
       <%--<th><a href="javascript:paixu('zwnr');" id='a_zwnr'>文章内容</a></th> --%>
       <%--<th><a href="javascript:paixu('ywnr');" id='a_ywnr'>英文内容</a></th> --%>
       <%--<th><a href="javascript:paixu('wzbq');" id='a_wzbq'>文章标签</a></th> --%>
       <%--<th><a href="javascript:paixu('gjcy');" id='a_gjcy'>关键词语</a></th> --%>
       <%--<th><a href="javascript:paixu('fbsj');" id='a_fbsj'>发布时间</a></th> --%>
       <%--<th><a href="javascript:paixu('wzzz');" id='a_wzzz'>文章作者</a></th> --%>
       <%--<th><a href="javascript:paixu('wzly');" id='a_wzly'>文章来源</a></th> --%>
       <%--<th><a href="javascript:paixu('bjsj');" id='a_bjsj'>编辑时间</a></th> --%>
       <%--<th><a href="javascript:paixu('wzzt');" id='a_wzzt'>文章状态</a></th> --%>
       <th style='display:none;'><a href="javascript:paixu('lmid');" id='a_lmid'>栏目编码</a></th> 
       <th><a href="javascript:paixu('lmmc');" id='a_lmmc'>栏目名称</a></th> 
       <%--<th><a href="javascript:paixu('fyfs');" id='a_fyfs'>分页方式</a></th> --%>
       <%--<th><a href="javascript:paixu('fydx');" id='a_fydx'>分页大小</a></th> --%>
       <%--<th><a href="javascript:paixu('sftt');" id='a_sftt'>是否头条</a></th> --%>
       <%--<th><a href="javascript:paixu('sftj');" id='a_sftj'>是否推荐</a></th> --%>
       <%--<th><a href="javascript:paixu('zdjb');" id='a_zdjb'>置顶级别</a></th> --%>
       <%--<th><a href="javascript:paixu('sfgd');" id='a_sfgd'>是否归档</a></th> --%>
       <%--<th><a href="javascript:paixu('plsl');" id='a_plsl'>评论数量</a></th> --%>
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
						        <td style='display:none;'>${c.wzid}</td>  
        <td>${c.wzbh}</td>  
        <td>${c.wzxh}</td>  
        <td>${c.zwbt}</td>  
        <%--<td>${c.ywbt}</td>  --%>
        <%--<td>${c.btys}</td>  --%>
        <%--<td>${c.wztp}</td>  --%>
        <%--<td>${c.zwzy}</td>  --%>
        <%--<td>${c.ywzy}</td>  --%>
        <%--<td>${c.wzlx}</td>  --%>
        <%--<td>${c.zwnr}</td>  --%>
        <%--<td>${c.ywnr}</td>  --%>
        <%--<td>${c.wzbq}</td>  --%>
        <%--<td>${c.gjcy}</td>  --%>
        <%--<td>${c.fbsj}</td>  --%>
        <%--<td>${c.wzzz}</td>  --%>
        <%--<td>${c.wzly}</td>  --%>
        <%--<td>${c.bjsj}</td>  --%>
        <%--<td>${c.wzzt}</td>  --%>
        <td style='display:none;'>${c.lmid}</td>  
        <td>${c.lmmc}</td>  
        <%--<td>${c.fyfs}</td>  --%>
        <%--<td>${c.fydx}</td>  --%>
        <%--<td>${c.sftt}</td>  --%>
        <%--<td>${c.sftj}</td>  --%>
        <%--<td>${c.zdjb}</td>  --%>
        <%--<td>${c.sfgd}</td>  --%>
        <%--<td>${c.plsl}</td>  --%>
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

                            <a class='btn btn-danger btn-xs btn-del'    target="_blank"  href="detail/${c.wzid}">详情</a>
                            <a class='btn btn-success btn-xs btn-mod'   href="modify/${c.wzid}">修改</a>
                            <a class='btn btn-warning btn-xs btn-detail' onClick="return confirm('确定删除?');"   href="remove/${c.wzid}">删除</a>

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
