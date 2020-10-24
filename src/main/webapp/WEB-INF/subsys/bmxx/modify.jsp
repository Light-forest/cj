<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>报名信息-修改</title>
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
        <div class="panel-heading">报名信息-修改</div>
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

				         <div id="div_bmid" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">报名编码</div> 
             <input id="bmid" name="bmid" type="text" class="form-control"   placeholder="报名编码" value="${bmxx.bmid}"> 
         </div> 
         <div id="div_bsid" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">比赛编码</div> 
             <input id="bsid" name="bsid" type="text" class="form-control"   placeholder="比赛编码" value="${bmxx.bsid}"> 
         </div> 
         <div id="div_bsqh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">比赛期号</div> 
             <input id="bsqh" name="bsqh" type="text" class="form-control"   placeholder="比赛期号" value="${bmxx.bsqh}"> 
         </div> 

         <div id="div_sjhm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">手机号码</div> 
             <input id="sjhm" name="sjhm" type="text" class="form-control"   placeholder="手机号码" value="${bmxx.sjhm}"> 
         </div> 
         <div id="div_yxjsm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">游戏角色名</div> 
             <input id="yxjsm" name="yxjsm" type="text" class="form-control"   placeholder="游戏角色名" value="${bmxx.yxjsm}"> 
         </div> 
         <div id="div_sfzxm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">身份证姓名</div> 
             <input id="sfzxm" name="sfzxm" type="text" class="form-control"   placeholder="身份证姓名" value="${bmxx.sfzxm}"> 
         </div> 
         <div id="div_sfzhm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">身份证号码</div> 
             <input id="sfzhm" name="sfzhm" type="text" class="form-control"   placeholder="身份证号码" value="${bmxx.sfzhm}"> 
         </div> 

         <div id="div_brwxh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">本人微信号</div> 
             <input id="brwxh" name="brwxh" type="text" class="form-control"   placeholder="本人微信号" value="${bmxx.brwxh}"> 
         </div> 

         <div id="div_sfhmd" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">是否黑名单</div> 
             <input id="sfhmd" name="sfhmd" type="text" class="form-control"   placeholder="是否黑名单" value="${bmxx.sfhmd}"> 
         </div> 
         <div id="div_rhyy" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">入黑原因</div> 
             <input id="rhyy" name="rhyy" type="text" class="form-control"   placeholder="入黑原因" value="${bmxx.rhyy}"> 
         </div> 
         <div id="div_bmsj" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">报名时间</div> 
             <input id="bmsj" name="bmsj" type="text" class="form-control"   placeholder="报名时间" value="${bmxx.bmsj}"> 
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
    init_select("sfhmd","是|否|");
    init_datetime("bmsj");

</script>

</body>
</html>
