<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>报名信息-录入</title>
      
    <link rel="stylesheet" href="../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../help/fuslUI/plugins/layui/skin/default/layer.css"/> 
    <link rel="stylesheet" href="../../help/jdavid/a.view.css" type="text/css"/>

    <style type="text/css">


    </style>
</head>
<body  >

<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">报名信息-录入</div>
        <div id="notice" name="notice" class="alert alert-danger alert-dismissible" role="alert" style="margin:5px;display:none;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$(this).parent().css('display','none');">
                <span aria-hidden="true">&times;</span></button>
            <strong>提醒：</strong>主键冲突，请重新录入信息!
        </div>

        <form class="form-inline"  name="formadd" id="formadd"  method="post" action="add.do">
            <input type="hidden" name="_method" value="put">

            <div class="form-group">
				      <div id="div_bmid" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">报名编码</div>          <input id="bmid" name="bmid" type="text" class="form-control"   placeholder="报名编码" value="${bmxx.bmid}">       </div>      <div id="div_bsid" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">比赛编码</div>          <input id="bsid" name="bsid" type="text" class="form-control"   placeholder="比赛编码" value="${bmxx.bsid}">       </div>      <div id="div_bsqh" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">比赛期号</div>          <input id="bsqh" name="bsqh" type="text" class="form-control"   placeholder="比赛期号" value="${bmxx.bsqh}">       </div>      <div id="div_bmbh" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">报名编号</div>          <input id="bmbh" name="bmbh" type="text" class="form-control"   placeholder="报名编号" value="${bmxx.bmbh}">       </div>      <div id="div_sjhm" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">手机号码</div>          <input id="sjhm" name="sjhm" type="text" class="form-control"   placeholder="手机号码" value="${bmxx.sjhm}">       </div>      <div id="div_yxjsm" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">游戏角色名</div>          <input id="yxjsm" name="yxjsm" type="text" class="form-control"   placeholder="游戏角色名" value="${bmxx.yxjsm}">       </div>      <div id="div_sfzxm" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">身份证姓名</div>          <input id="sfzxm" name="sfzxm" type="text" class="form-control"   placeholder="身份证姓名" value="${bmxx.sfzxm}">       </div>      <div id="div_sfzhm" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">身份证号码</div>          <input id="sfzhm" name="sfzhm" type="text" class="form-control"   placeholder="身份证号码" value="${bmxx.sfzhm}">       </div>      <div id="div_sfzzp" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">身份证照片</div>          <input id="sfzzp" name="sfzzp" type="text" class="form-control"   placeholder="身份证照片" value="${bmxx.sfzzp}">       </div>      <div id="div_brwxh" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">本人微信号</div>          <input id="brwxh" name="brwxh" type="text" class="form-control"   placeholder="本人微信号" value="${bmxx.brwxh}">       </div>      <div id="div_wdddh" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">微店订单号</div>          <input id="wdddh" name="wdddh" type="text" class="form-control"   placeholder="微店订单号" value="${bmxx.wdddh}">       </div>      <div id="div_sfhmd" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">是否黑名单</div>          <input id="sfhmd" name="sfhmd" type="text" class="form-control"   placeholder="是否黑名单" value="${bmxx.sfhmd}">       </div>      <div id="div_rhyy" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">入黑原因</div>          <input id="rhyy" name="rhyy" type="text" class="form-control"   placeholder="入黑原因" value="${bmxx.rhyy}">       </div>      <div id="div_bmsj" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">报名时间</div>          <input id="bmsj" name="bmsj" type="text" class="form-control"   placeholder="报名时间" value="${bmxx.bmsj}">       </div>      <div id="div_bscj" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">比赛成绩</div>          <input id="bscj" name="bscj" type="text" class="form-control"   placeholder="比赛成绩" value="${bmxx.bscj}">       </div>      <div id="div_bsmc" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">比赛名次</div>          <input id="bsmc" name="bsmc" type="text" class="form-control"   placeholder="比赛名次" value="${bmxx.bsmc}">       </div>      <div id="div_jjje" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">奖金金额</div>          <input id="jjje" name="jjje" type="text" class="form-control"   placeholder="奖金金额" value="${bmxx.jjje}">       </div>      <div id="div_bszm" class="input-group col-xs-5" style=" ">          <div class="input-group-addon">比赛证明</div>          <input id="bszm" name="bszm" type="text" class="form-control"   placeholder="比赛证明" value="${bmxx.bszm}">       </div>      <div id="div_bz00" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项00</div>          <input id="bz00" name="bz00" type="text" class="form-control"   placeholder="备注项00" value="${bmxx.bz00}">       </div>      <div id="div_bz01" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项01</div>          <input id="bz01" name="bz01" type="text" class="form-control"   placeholder="备注项01" value="${bmxx.bz01}">       </div>      <div id="div_bz02" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项02</div>          <input id="bz02" name="bz02" type="text" class="form-control"   placeholder="备注项02" value="${bmxx.bz02}">       </div>      <div id="div_bz03" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项03</div>          <input id="bz03" name="bz03" type="text" class="form-control"   placeholder="备注项03" value="${bmxx.bz03}">       </div>      <div id="div_bz04" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项04</div>          <input id="bz04" name="bz04" type="text" class="form-control"   placeholder="备注项04" value="${bmxx.bz04}">       </div>      <div id="div_bz05" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项05</div>          <input id="bz05" name="bz05" type="text" class="form-control"   placeholder="备注项05" value="${bmxx.bz05}">       </div>      <div id="div_bz06" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项06</div>          <input id="bz06" name="bz06" type="text" class="form-control"   placeholder="备注项06" value="${bmxx.bz06}">       </div>      <div id="div_bz07" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项07</div>          <input id="bz07" name="bz07" type="text" class="form-control"   placeholder="备注项07" value="${bmxx.bz07}">       </div>      <div id="div_bz08" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项08</div>          <input id="bz08" name="bz08" type="text" class="form-control"   placeholder="备注项08" value="${bmxx.bz08}">       </div>      <div id="div_bz09" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项09</div>          <input id="bz09" name="bz09" type="text" class="form-control"   placeholder="备注项09" value="${bmxx.bz09}">       </div>      <div id="div_bz10" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项10</div>          <input id="bz10" name="bz10" type="text" class="form-control"   placeholder="备注项10" value="${bmxx.bz10}">       </div>      <div id="div_bz11" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项11</div>          <input id="bz11" name="bz11" type="text" class="form-control"   placeholder="备注项11" value="${bmxx.bz11}">       </div>      <div id="div_bz12" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项12</div>          <input id="bz12" name="bz12" type="text" class="form-control"   placeholder="备注项12" value="${bmxx.bz12}">       </div>      <div id="div_bz13" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项13</div>          <input id="bz13" name="bz13" type="text" class="form-control"   placeholder="备注项13" value="${bmxx.bz13}">       </div>      <div id="div_bz14" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项14</div>          <input id="bz14" name="bz14" type="text" class="form-control"   placeholder="备注项14" value="${bmxx.bz14}">       </div>      <div id="div_bz15" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项15</div>          <input id="bz15" name="bz15" type="text" class="form-control"   placeholder="备注项15" value="${bmxx.bz15}">       </div>      <div id="div_bz16" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项16</div>          <input id="bz16" name="bz16" type="text" class="form-control"   placeholder="备注项16" value="${bmxx.bz16}">       </div>      <div id="div_bz17" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项17</div>          <input id="bz17" name="bz17" type="text" class="form-control"   placeholder="备注项17" value="${bmxx.bz17}">       </div>      <div id="div_bz18" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项18</div>          <input id="bz18" name="bz18" type="text" class="form-control"   placeholder="备注项18" value="${bmxx.bz18}">       </div>      <div id="div_bz19" class="input-group col-xs-5" style="display:none">          <div class="input-group-addon">备注项19</div>          <input id="bz19" name="bz19" type="text" class="form-control"   placeholder="备注项19" value="${bmxx.bz19}">       </div>
                
				
				
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
