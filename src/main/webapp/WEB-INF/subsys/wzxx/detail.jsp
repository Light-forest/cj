<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章信息-详情</title>
     
    <link rel="stylesheet" href="../../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../help/fuslUI/plugins/layui/skin/default/layer.css"/>
 
    <link  href="../../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
    </style>
</head>
<body>
<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">文章信息-详情</div>

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
				              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">文章编码</span>&nbsp;${wzxx.wzid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章编号</span>&nbsp;${wzxx.wzbh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章序号</span>&nbsp;${wzxx.wzxh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">中文标题</span>&nbsp;${wzxx.zwbt}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">英文标题</span>&nbsp;${wzxx.ywbt}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">标题颜色</span>&nbsp;${wzxx.btys}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章图片</span>&nbsp;${wzxx.wztp}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">中文摘要</span>&nbsp;${wzxx.zwzy}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">英文摘要</span>&nbsp;${wzxx.ywzy}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章类型</span>&nbsp;${wzxx.wzlx}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章内容</span>&nbsp;${wzxx.zwnr}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">英文内容</span>&nbsp;${wzxx.ywnr}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章标签</span>&nbsp;${wzxx.wzbq}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">关键词语</span>&nbsp;${wzxx.gjcy}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">发布时间</span>&nbsp;${wzxx.fbsj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章作者</span>&nbsp;${wzxx.wzzz}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章来源</span>&nbsp;${wzxx.wzly}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">编辑时间</span>&nbsp;${wzxx.bjsj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">文章状态</span>&nbsp;${wzxx.wzzt}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">栏目编码</span>&nbsp;${wzxx.lmid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">栏目名称</span>&nbsp;${wzxx.lmmc}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">分页方式</span>&nbsp;${wzxx.fyfs}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">分页大小</span>&nbsp;${wzxx.fydx}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">是否头条</span>&nbsp;${wzxx.sftt}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">是否推荐</span>&nbsp;${wzxx.sftj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">置顶级别</span>&nbsp;${wzxx.zdjb}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">是否归档</span>&nbsp;${wzxx.sfgd}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">评论数量</span>&nbsp;${wzxx.plsl}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项00</span>&nbsp;${wzxx.bz00}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项01</span>&nbsp;${wzxx.bz01}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项02</span>&nbsp;${wzxx.bz02}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项03</span>&nbsp;${wzxx.bz03}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项04</span>&nbsp;${wzxx.bz04}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项05</span>&nbsp;${wzxx.bz05}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项06</span>&nbsp;${wzxx.bz06}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项07</span>&nbsp;${wzxx.bz07}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项08</span>&nbsp;${wzxx.bz08}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项09</span>&nbsp;${wzxx.bz09}</a>
				
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
