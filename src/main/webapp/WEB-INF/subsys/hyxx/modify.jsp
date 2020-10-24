<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>会员信息-修改</title>
    <!-- jfusl css-->
    <!--基本样式-->
    <link rel="stylesheet" href="../../../help/fuslUI/css/base.css" />
    <link rel="stylesheet" href="../../../help/fuslUI/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../../../help/fuslUI/css/frame.css" />
    <link rel="stylesheet" href="../../../help/fuslUI/css/element.css"/>
    <!--特效插件-->
    <!--link rel="stylesheet" href="../../../help/fuslUI/css/skins/blue.css" class="skin-color" />
    <!-- Bootstrap layer css-->
    <link rel="stylesheet" href="../../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../help/fuslUI/plugins/layui/skin/default/layer.css"/>
    <!-- jdavid css -->
    <link  href="../../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"/>
</head>
<body>
<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">会员信息-修改</div>
        <!--提示信息 -->
        <div name="div_msg" id="div_msg" class="alert alert-danger alert-dismissible" role="alert" style="margin:5px;display:none;"  >
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$(this).parent().css('display','none');">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>提醒：</strong>
            ${msg}
        </div>

        <form class="form-inline" name="form_modify"  id="form_modify" action="../modify.do" method="post">
                <input type="hidden" name="_method" value="put">

                <div class="form-group">

				         <div id="div_hyid" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">会员编码</div> 
             <input id="hyid" name="hyid" type="text" class="form-control"   placeholder="会员编码" value="${hyxx.hyid}"> 
         </div> 
         <div id="div_dlzh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">登录账号</div> 
             <input id="dlzh" name="dlzh" type="text" class="form-control"   placeholder="登录账号" value="${hyxx.dlzh}"> 
         </div> 
         <div id="div_dlmm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">登录密码</div> 
             <input id="dlmm" name="dlmm" type="text" class="form-control"   placeholder="登录密码" value="${hyxx.dlmm}"> 
         </div> 
         <div id="div_hymc" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">会员名称</div> 
             <input id="hymc" name="hymc" type="text" class="form-control"   placeholder="会员名称" value="${hyxx.hymc}"> 
         </div> 
         <div id="div_hyjb" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">会员级别</div> 
             <input id="hyjb" name="hyjb" type="text" class="form-control"   placeholder="会员级别" value="${hyxx.hyjb}"> 
         </div> 
         <div id="div_zcrq" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">注册日期</div> 
             <input id="zcrq" name="zcrq" type="text" class="form-control"   placeholder="注册日期" value="${hyxx.zcrq}"> 
         </div> 
         <div id="div_hyzt" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">会员状态</div> 
             <input id="hyzt" name="hyzt" type="text" class="form-control"   placeholder="会员状态" value="${hyxx.hyzt}"> 
         </div> 
         <div id="div_lxdh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">联系电话</div> 
             <input id="lxdh" name="lxdh" type="text" class="form-control"   placeholder="联系电话" value="${hyxx.lxdh}"> 
         </div> 
         <div id="div_yjdz" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">邮件地址</div> 
             <input id="yjdz" name="yjdz" type="text" class="form-control"   placeholder="邮件地址" value="${hyxx.yjdz}"> 
         </div> 
         <div id="div_qqhm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">QQ__号码</div> 
             <input id="qqhm" name="qqhm" type="text" class="form-control"   placeholder="QQ__号码" value="${hyxx.qqhm}"> 
         </div> 
         <div id="div_msnh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">MSN_号码</div> 
             <input id="msnh" name="msnh" type="text" class="form-control"   placeholder="MSN_号码" value="${hyxx.msnh}"> 
         </div> 
         <div id="div_txdz" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">通讯地址</div> 
             <input id="txdz" name="txdz" type="text" class="form-control"   placeholder="通讯地址" value="${hyxx.txdz}"> 
         </div> 
         <div id="div_yzbm" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">邮政编码</div> 
             <input id="yzbm" name="yzbm" type="text" class="form-control"   placeholder="邮政编码" value="${hyxx.yzbm}"> 
         </div> 
         <div id="div_bzxx" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注信息</div> 
             <input id="bzxx" name="bzxx" type="text" class="form-control"   placeholder="备注信息" value="${hyxx.bzxx}"> 
         </div> 
         <div id="div_bz00" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项00</div> 
             <input id="bz00" name="bz00" type="text" class="form-control"   placeholder="备注项00" value="${hyxx.bz00}"> 
         </div> 
         <div id="div_bz01" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项01</div> 
             <input id="bz01" name="bz01" type="text" class="form-control"   placeholder="备注项01" value="${hyxx.bz01}"> 
         </div> 
         <div id="div_bz02" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项02</div> 
             <input id="bz02" name="bz02" type="text" class="form-control"   placeholder="备注项02" value="${hyxx.bz02}"> 
         </div> 
         <div id="div_bz03" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项03</div> 
             <input id="bz03" name="bz03" type="text" class="form-control"   placeholder="备注项03" value="${hyxx.bz03}"> 
         </div> 
         <div id="div_bz04" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项04</div> 
             <input id="bz04" name="bz04" type="text" class="form-control"   placeholder="备注项04" value="${hyxx.bz04}"> 
         </div> 
         <div id="div_bz05" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项05</div> 
             <input id="bz05" name="bz05" type="text" class="form-control"   placeholder="备注项05" value="${hyxx.bz05}"> 
         </div> 
         <div id="div_bz06" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项06</div> 
             <input id="bz06" name="bz06" type="text" class="form-control"   placeholder="备注项06" value="${hyxx.bz06}"> 
         </div> 
         <div id="div_bz07" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项07</div> 
             <input id="bz07" name="bz07" type="text" class="form-control"   placeholder="备注项07" value="${hyxx.bz07}"> 
         </div> 
         <div id="div_bz08" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项08</div> 
             <input id="bz08" name="bz08" type="text" class="form-control"   placeholder="备注项08" value="${hyxx.bz08}"> 
         </div> 
         <div id="div_bz09" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项09</div> 
             <input id="bz09" name="bz09" type="text" class="form-control"   placeholder="备注项09" value="${hyxx.bz09}"> 
         </div> 

				
				 
				
            </div>
        </form>

        <div class="row"  >
            <div class="col-xs-12" style="text-align:center;">
                <button  onclick="btn_mod_click();"  class="btn btn-info btn-sm glyphicon glyphicon-plus" type="button">修改</button>
                <button  onclick="goto_last();"  class="btn btn-warning btn-sm glyphicon " type="button">取消</button>
            </div>
        </div>

        <div class="row"  >
            <div class="col-xs-12" style="text-align:center;">
            </div>
        </div>

        <div class="panel-heading"> </div>
    </div>
</div>
<script src="../../../help/jquery/jquery.min.js"  ></script>
<script src="../../../help/bt/js/bootstrap.min.js"></script> 
<script src="../../../help/fuslUI/plugins/layui/layui.js"  ></script>
 
<script src="../../../help/jdavid/c.check.js" language="javascript" type="text/javascript"></script>
<script src="../../../help/jdavid/e.util.js"  language="javascript" type="text/javascript"></script> 
<script src="../../../help/jdavid/z.proj.js" language="javascript" type="text/javascript"></script>

<!-- 页面自己的js -->
<script src="../js/modify.js?Math.random()" language="javascript" type="text/javascript" ></script>
<script type="text/javascript">
   
    // init_datetime("kssj");
    // init_datetime("jssj");
    // init_textarea("bsjs");

</script>

</body>
</html>
