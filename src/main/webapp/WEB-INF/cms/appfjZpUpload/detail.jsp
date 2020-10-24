<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>附件信息-详情</title>
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
    <style type="text/css">
    </style>
</head>
<body>
<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">附件信息-详情</div>

        <!--提示信息 -->
        <div name="div_msg" id="div_msg" class="alert alert-danger alert-dismissible" role="alert" style="margin:5px;display:none;"  >
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$(this).parent().css('display','none');">
                <span aria-hidden="true">&times;</span>
            </button>
            <strong>提醒：</strong>
            ${msg}
        </div>

        <div class="row">
            <div class="list-group col-xs-12"  >
				              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">附件编码</span>&nbsp;${cmsfj.fjid}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">父表编码</span>&nbsp;${cmsfj.fuid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">附件类型</span>&nbsp;${cmsfj.fjlx}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">附件文件</span>&nbsp;${cmsfj.fjwj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">附件时间</span>&nbsp;${cmsfj.fjsj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">附件说明</span>&nbsp;${cmsfj.fjsm}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项00</span>&nbsp;${cmsfj.bz00}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项01</span>&nbsp;${cmsfj.bz01}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项02</span>&nbsp;${cmsfj.bz02}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项03</span>&nbsp;${cmsfj.bz03}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项04</span>&nbsp;${cmsfj.bz04}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项05</span>&nbsp;${cmsfj.bz05}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项06</span>&nbsp;${cmsfj.bz06}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项07</span>&nbsp;${cmsfj.bz07}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项08</span>&nbsp;${cmsfj.bz08}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项09</span>&nbsp;${cmsfj.bz09}</a>
				
		   </div>
        </div>
        <div class="row"  >
            <div class="col-xs-12" style="text-align:center;">
                <button  class="btn btn-info btn-sm " onclick="close_self();">关 闭</button>
            </div>
        </div>
        <div class="panel-heading"> </div>
    </div>
</div>
<script src="../../../help/jquery/jquery.min.js"></script>

<script type="text/javascript" src="../../help/fuslUI/plugins/layui/layui.js"></script>
<!--jdaivd 的js库-->
<!--script src="../../../help/jquery/jquery-1.2.6.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../../help/jdavid/b.view.js" language="javascript" type="text/javascript"></script-->
<script src="../../../help/jdavid/c.check.js" language="javascript" type="text/javascript"></script>
<script src="../../../help/jdavid/e.util.js" language="javascript" type="text/javascript"></script>
<!--script src="../../../help/jdavid/f.request.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../../help/jdavid/g.select.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../../help/jdavid/j.jmjm.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../../help/jdavid/t.ashx.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../../help/jdavid/s.page.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../../help/jdavid/calendar/calendar_cn_time.js" language="javascript" type="text/javascript"></script-->
<!-- project 公用的js -->
<script src="../../../help/jdavid/z.proj.js" language="javascript" type="text/javascript"></script>
<!-- 页面自己的js -->
<script src="../js/detail.js?Math.random()" language="javascript" type="text/javascript" ></script>
<script type="text/javascript">
    layui.use(['element', 'form','code'], function(){
        var element = layui.element;
        element.on('collapse(test)', function(data){
            console.log(data);
        });
        layui.code();
    });

</script>
</body>
</html>
