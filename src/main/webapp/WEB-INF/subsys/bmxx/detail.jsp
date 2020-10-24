<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>报名信息-详情</title>
     
    <link rel="stylesheet" href="../../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../../help/fuslUI/plugins/layui/skin/default/layer.css"/>
 
    <link  href="../../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"/>
    <style type="text/css">
    </style>
</head>
<body>
<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">报名信息-详情</div>

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
				              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">报名编码</span>&nbsp;${bmxx.bmid}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">比赛编码</span>&nbsp;${bmxx.bsid}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛期号</span>&nbsp;${bmxx.bsqh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">报名编号</span>&nbsp;${bmxx.bmbh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">手机号码</span>&nbsp;${bmxx.sjhm}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">游戏角色名</span>&nbsp;${bmxx.yxjsm}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">身份证姓名</span>&nbsp;${bmxx.sfzxm}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">身份证号码</span>&nbsp;${bmxx.sfzhm}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">身份证照片</span>&nbsp;${bmxx.sfzzp}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">本人微信号</span>&nbsp;${bmxx.brwxh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">微店订单号</span>&nbsp;${bmxx.wdddh}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">是否黑名单</span>&nbsp;${bmxx.sfhmd}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">入黑原因</span>&nbsp;${bmxx.rhyy}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">报名时间</span>&nbsp;${bmxx.bmsj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛成绩</span>&nbsp;${bmxx.bscj}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛名次</span>&nbsp;${bmxx.bsmc}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">奖金金额</span>&nbsp;${bmxx.jjje}</a>              <a style="display:;" href="#" class="list-group-item "><span class="label label-info">比赛证明</span>&nbsp;${bmxx.bszm}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项00</span>&nbsp;${bmxx.bz00}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项01</span>&nbsp;${bmxx.bz01}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项02</span>&nbsp;${bmxx.bz02}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项03</span>&nbsp;${bmxx.bz03}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项04</span>&nbsp;${bmxx.bz04}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项05</span>&nbsp;${bmxx.bz05}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项06</span>&nbsp;${bmxx.bz06}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项07</span>&nbsp;${bmxx.bz07}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项08</span>&nbsp;${bmxx.bz08}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项09</span>&nbsp;${bmxx.bz09}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项10</span>&nbsp;${bmxx.bz10}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项11</span>&nbsp;${bmxx.bz11}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项12</span>&nbsp;${bmxx.bz12}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项13</span>&nbsp;${bmxx.bz13}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项14</span>&nbsp;${bmxx.bz14}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项15</span>&nbsp;${bmxx.bz15}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项16</span>&nbsp;${bmxx.bz16}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项17</span>&nbsp;${bmxx.bz17}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项18</span>&nbsp;${bmxx.bz18}</a>              <a style="display:none;" href="#" class="list-group-item "><span class="label label-info">备注项19</span>&nbsp;${bmxx.bz19}</a>
				
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
