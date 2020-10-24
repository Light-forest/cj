<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>管理员信息-录入</title>
      
    <link rel="stylesheet" href="../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../help/fuslUI/plugins/layui/skin/default/layer.css"/> 
    <link rel="stylesheet" href="../../help/jdavid/a.view.css" type="text/css"/>

    <style type="text/css">


    </style>
</head>
<body  >

<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">管理员信息-录入</div>
        <div id="notice" name="notice" class="alert alert-danger alert-dismissible" role="alert" style="margin:5px;display:none;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$(this).parent().css('display','none');">
                <span aria-hidden="true">&times;</span></button>
            <strong>提醒：</strong>主键冲突，请重新录入信息!
        </div>

        <form class="form-inline"  name="formadd" id="formadd"  method="post" action="add.do">
            <input type="hidden" name="_method" value="put">

            <div class="form-group">
				      <div id="div_glyid" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">管理员编码</div>          <input id="glyid" name="glyid" type="text" class="form-control"   placeholder="管理员编码" value="${glyxx.glyid}">       </div>      <div id="div_glyzh" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员账号</div>          <input id="glyzh" name="glyzh" type="text" class="form-control"   placeholder="管理员账号" value="${glyxx.glyzh}">       </div>      <div id="div_glymc" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员名称</div>          <input id="glymc" name="glymc" type="text" class="form-control"   placeholder="管理员名称" value="${glyxx.glymc}">       </div>      <div id="div_glymm" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员密码</div>          <input id="glymm" name="glymm" type="text" class="form-control"   placeholder="管理员密码" value="${glyxx.glymm}">       </div>      <div id="div_glyyx" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员邮箱</div>          <input id="glyyx" name="glyyx" type="text" class="form-control"   placeholder="管理员邮箱" value="${glyxx.glyyx}">       </div>      <div id="div_glyzw" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员职位</div>          <input id="glyzw" name="glyzw" type="text" class="form-control"   placeholder="管理员职位" value="${glyxx.glyzw}">       </div>      <div id="div_glyjs" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员角色</div>          <input id="glyjs" name="glyjs" type="text" class="form-control"   placeholder="管理员角色" value="${glyxx.glyjs}">       </div>      <div id="div_glyms" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">管理员描述</div>          <input id="glyms" name="glyms" type="text" class="form-control"   placeholder="管理员描述" value="${glyxx.glyms}">       </div>      <div id="div_bz00" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项00</div>          <input id="bz00" name="bz00" type="text" class="form-control"   placeholder="备注项00" value="${glyxx.bz00}">       </div>      <div id="div_bz01" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项01</div>          <input id="bz01" name="bz01" type="text" class="form-control"   placeholder="备注项01" value="${glyxx.bz01}">       </div>      <div id="div_bz02" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项02</div>          <input id="bz02" name="bz02" type="text" class="form-control"   placeholder="备注项02" value="${glyxx.bz02}">       </div>      <div id="div_bz03" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项03</div>          <input id="bz03" name="bz03" type="text" class="form-control"   placeholder="备注项03" value="${glyxx.bz03}">       </div>      <div id="div_bz04" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项04</div>          <input id="bz04" name="bz04" type="text" class="form-control"   placeholder="备注项04" value="${glyxx.bz04}">       </div>      <div id="div_bz05" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项05</div>          <input id="bz05" name="bz05" type="text" class="form-control"   placeholder="备注项05" value="${glyxx.bz05}">       </div>      <div id="div_bz06" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项06</div>          <input id="bz06" name="bz06" type="text" class="form-control"   placeholder="备注项06" value="${glyxx.bz06}">       </div>      <div id="div_bz07" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项07</div>          <input id="bz07" name="bz07" type="text" class="form-control"   placeholder="备注项07" value="${glyxx.bz07}">       </div>      <div id="div_bz08" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项08</div>          <input id="bz08" name="bz08" type="text" class="form-control"   placeholder="备注项08" value="${glyxx.bz08}">       </div>      <div id="div_bz09" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项09</div>          <input id="bz09" name="bz09" type="text" class="form-control"   placeholder="备注项09" value="${glyxx.bz09}">       </div>
                
				
				
            </div>


        </form>

        <div class="row"  >
            <div class="col-sm-12" style="text-align:center;">
                <button  onclick="btn_add_click();"  class="btn btn-info btn-sm glyphicon glyphicon-plus"  style="margin:5px;">新增</button>
                <button  onclick="history.go(-1);" class="btn btn-warning btn-sm glyphicon "  style="margin-left:0px;">取消</button>
            </div>
        </div>

        <div class="row"  >
            <div class="col-xs-12" style="text-align:center;">
            </div>
        </div>

        <div class="panel-heading"> </div>
    </div>
</div>


<script src="../../help/jquery/jquery.min.js"  ></script>
<script src="../../help/bt/js/bootstrap.min.js"></script> 
<script src="../../help/fuslUI/plugins/layui/layui.js"  ></script>

<script src="../../help/jdavid/c.check.js" language="javascript" type="text/javascript"></script>
<script src="../../help/jdavid/e.util.js" language="javascript" type="text/javascript"></script>  
<!-- project 公用的js -->
<script src="../../help/jdavid/z.proj.js?Math.random()"  ></script> 
<!-- 页面自己的js-->
<script src="js/add.js?Math.random()"  ></script> 
<script type="text/javascript"> 

    //init_datetime("kssj");
    //init_datetime("jssj");
    //init_textarea("bsjs");
</script>

</body>
</html>
