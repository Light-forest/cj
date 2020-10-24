<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>栏目信息-详情</title>
     
    <link rel="stylesheet" href="../../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../help/fuslUI/plugins/layui/skin/default/layer.css"/>
 
    <link  href="../../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
    </style>
</head>
<body>
<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">栏目信息-详情</div>

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
				              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">栏目编码</span>&nbsp;${lmxx.lmid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">栏目编号</span>&nbsp;${lmxx.lmbh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">栏目顺序</span>&nbsp;${lmxx.lmsx}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">中文标题</span>&nbsp;${lmxx.zwbt}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">英文标题</span>&nbsp;${lmxx.ywbt}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">栏目图片</span>&nbsp;${lmxx.lmtp}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">中文说明</span>&nbsp;${lmxx.zwsm}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">英文说明</span>&nbsp;${lmxx.ywsm}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">点击展现</span>&nbsp;${lmxx.djzx}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">编辑时间</span>&nbsp;${lmxx.bjsj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">编辑人员</span>&nbsp;${lmxx.bjry}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">父栏编码</span>&nbsp;${lmxx.fuid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">父栏名称</span>&nbsp;${lmxx.fumc}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">栏目路径</span>&nbsp;${lmxx.lmlj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">外链地址</span>&nbsp;${lmxx.wldz}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">栏目状态</span>&nbsp;${lmxx.lmzt}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">关键词语</span>&nbsp;${lmxx.gjcy}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章数量</span>&nbsp;${lmxx.wzsl}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">点击数量</span>&nbsp;${lmxx.djsl}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项00</span>&nbsp;${lmxx.bz00}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项01</span>&nbsp;${lmxx.bz01}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项02</span>&nbsp;${lmxx.bz02}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项03</span>&nbsp;${lmxx.bz03}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项04</span>&nbsp;${lmxx.bz04}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项05</span>&nbsp;${lmxx.bz05}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项06</span>&nbsp;${lmxx.bz06}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项07</span>&nbsp;${lmxx.bz07}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项08</span>&nbsp;${lmxx.bz08}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项09</span>&nbsp;${lmxx.bz09}</a>
				
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
<script src="../../../help/jquery/jquery.min.js"  ></script>
<script src="../../../help/bt/js/bootstrap.min.js"></script> 
<script src="../../../help/fuslUI/plugins/layui/layui.js"  ></script>

<script src="../../../help/jdavid/c.check.js" language="javascript" type="text/javascript"></script>
<script src="../../../help/jdavid/e.util.js" language="javascript" type="text/javascript"></script> 
<!-- project 公用的js -->
<script src="../../../help/jdavid/z.proj.js" language="javascript" type="text/javascript"></script>
<!-- 页面自己的js -->
<script src="../js/detail.js?Math.random()" language="javascript" type="text/javascript" ></script>
<script type="text/javascript">
    

</script>
</body>
</html>
