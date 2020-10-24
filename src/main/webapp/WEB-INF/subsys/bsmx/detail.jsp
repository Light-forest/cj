<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>比赛明细-详情</title>
     
    <link rel="stylesheet" href="../../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../help/fuslUI/plugins/layui/skin/default/layer.css"/>
 
    <link  href="../../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
    </style>
</head>
<body>
<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">比赛明细-详情</div>

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
				              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">明细编码</span>&nbsp;${bsmx.mxid}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">比赛编码</span>&nbsp;${bsmx.bsid}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">报名编码</span>&nbsp;${bsmx.bmid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛期号</span>&nbsp;${bsmx.bsqh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">游戏角色名</span>&nbsp;${bsmx.jsmc}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛时间</span>&nbsp;${bsmx.bssj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">吃鸡次数</span>&nbsp;${bsmx.bscc}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛名次</span>&nbsp;${bsmx.bsmc}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛证明</span>&nbsp;${bsmx.bszm}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项00</span>&nbsp;${bsmx.bz00}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛奖金</span>&nbsp;${bsmx.bz01}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项02</span>&nbsp;${bsmx.bz02}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项03</span>&nbsp;${bsmx.bz03}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项04</span>&nbsp;${bsmx.bz04}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项05</span>&nbsp;${bsmx.bz05}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项06</span>&nbsp;${bsmx.bz06}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项07</span>&nbsp;${bsmx.bz07}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项08</span>&nbsp;${bsmx.bz08}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项09</span>&nbsp;${bsmx.bz09}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项10</span>&nbsp;${bsmx.bz10}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项11</span>&nbsp;${bsmx.bz11}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项12</span>&nbsp;${bsmx.bz12}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项13</span>&nbsp;${bsmx.bz13}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项14</span>&nbsp;${bsmx.bz14}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项15</span>&nbsp;${bsmx.bz15}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项16</span>&nbsp;${bsmx.bz16}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项17</span>&nbsp;${bsmx.bz17}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项18</span>&nbsp;${bsmx.bz18}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项19</span>&nbsp;${bsmx.bz19}</a>
				
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
