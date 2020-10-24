<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>栏目信息-修改</title>
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
        <div class="panel-heading">栏目信息-修改</div>
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

				         <div id="div_lmid" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">栏目编码</div> 
             <input id="lmid" name="lmid" type="text" class="form-control"   placeholder="栏目编码" value="${lmxx.lmid}"> 
         </div> 
         <div id="div_lmbh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">栏目编号</div> 
             <input id="lmbh" name="lmbh" type="text" class="form-control"   placeholder="栏目编号" value="${lmxx.lmbh}"> 
         </div> 
         <div id="div_lmsx" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">栏目顺序</div> 
             <input id="lmsx" name="lmsx" type="text" class="form-control"   placeholder="栏目顺序" value="${lmxx.lmsx}"> 
         </div> 
         <div id="div_zwbt" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">中文标题</div> 
             <input id="zwbt" name="zwbt" type="text" class="form-control"   placeholder="中文标题" value="${lmxx.zwbt}"> 
         </div> 
         <div id="div_ywbt" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">英文标题</div> 
             <input id="ywbt" name="ywbt" type="text" class="form-control"   placeholder="英文标题" value="${lmxx.ywbt}"> 
         </div> 
         <div id="div_lmtp" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">栏目图片</div> 
             <input id="lmtp" name="lmtp" type="text" class="form-control"   placeholder="栏目图片" value="${lmxx.lmtp}"> 
         </div> 
         <div id="div_zwsm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">中文说明</div> 
             <input id="zwsm" name="zwsm" type="text" class="form-control"   placeholder="中文说明" value="${lmxx.zwsm}"> 
         </div> 
         <div id="div_ywsm" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">英文说明</div> 
             <input id="ywsm" name="ywsm" type="text" class="form-control"   placeholder="英文说明" value="${lmxx.ywsm}"> 
         </div> 
         <div id="div_djzx" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">点击展现</div> 
             <input id="djzx" name="djzx" type="text" class="form-control"   placeholder="点击展现" value="${lmxx.djzx}"> 
         </div> 
         <div id="div_bjsj" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">编辑时间</div> 
             <input id="bjsj" name="bjsj" type="text" class="form-control"   placeholder="编辑时间" value="${lmxx.bjsj}"> 
         </div> 
         <div id="div_bjry" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">编辑人员</div> 
             <input id="bjry" name="bjry" type="text" class="form-control"   placeholder="编辑人员" value="${lmxx.bjry}"> 
         </div> 
         <div id="div_fuid" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">父栏编码</div> 
             <input id="fuid" name="fuid" type="text" class="form-control"   placeholder="父栏编码" value="${lmxx.fuid}"> 
         </div> 
         <div id="div_fumc" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">父栏名称</div> 
             <input id="fumc" name="fumc" type="text" class="form-control"   placeholder="父栏名称" value="${lmxx.fumc}"> 
         </div> 
         <div id="div_lmlj" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">栏目路径</div> 
             <input id="lmlj" name="lmlj" type="text" class="form-control"   placeholder="栏目路径" value="${lmxx.lmlj}"> 
         </div> 
         <div id="div_wldz" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">外链地址</div> 
             <input id="wldz" name="wldz" type="text" class="form-control"   placeholder="外链地址" value="${lmxx.wldz}"> 
         </div> 
         <div id="div_lmzt" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">栏目状态</div> 
             <input id="lmzt" name="lmzt" type="text" class="form-control"   placeholder="栏目状态" value="${lmxx.lmzt}"> 
         </div> 
         <div id="div_gjcy" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">关键词语</div> 
             <input id="gjcy" name="gjcy" type="text" class="form-control"   placeholder="关键词语" value="${lmxx.gjcy}"> 
         </div> 
         <div id="div_wzsl" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">文章数量</div> 
             <input id="wzsl" name="wzsl" type="text" class="form-control"   placeholder="文章数量" value="${lmxx.wzsl}"> 
         </div> 
         <div id="div_djsl" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">点击数量</div> 
             <input id="djsl" name="djsl" type="text" class="form-control"   placeholder="点击数量" value="${lmxx.djsl}"> 
         </div> 
         <div id="div_bz00" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项00</div> 
             <input id="bz00" name="bz00" type="text" class="form-control"   placeholder="备注项00" value="${lmxx.bz00}"> 
         </div> 
         <div id="div_bz01" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项01</div> 
             <input id="bz01" name="bz01" type="text" class="form-control"   placeholder="备注项01" value="${lmxx.bz01}"> 
         </div> 
         <div id="div_bz02" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项02</div> 
             <input id="bz02" name="bz02" type="text" class="form-control"   placeholder="备注项02" value="${lmxx.bz02}"> 
         </div> 
         <div id="div_bz03" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项03</div> 
             <input id="bz03" name="bz03" type="text" class="form-control"   placeholder="备注项03" value="${lmxx.bz03}"> 
         </div> 
         <div id="div_bz04" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项04</div> 
             <input id="bz04" name="bz04" type="text" class="form-control"   placeholder="备注项04" value="${lmxx.bz04}"> 
         </div> 
         <div id="div_bz05" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项05</div> 
             <input id="bz05" name="bz05" type="text" class="form-control"   placeholder="备注项05" value="${lmxx.bz05}"> 
         </div> 
         <div id="div_bz06" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项06</div> 
             <input id="bz06" name="bz06" type="text" class="form-control"   placeholder="备注项06" value="${lmxx.bz06}"> 
         </div> 
         <div id="div_bz07" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项07</div> 
             <input id="bz07" name="bz07" type="text" class="form-control"   placeholder="备注项07" value="${lmxx.bz07}"> 
         </div> 
         <div id="div_bz08" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项08</div> 
             <input id="bz08" name="bz08" type="text" class="form-control"   placeholder="备注项08" value="${lmxx.bz08}"> 
         </div> 
         <div id="div_bz09" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项09</div> 
             <input id="bz09" name="bz09" type="text" class="form-control"   placeholder="备注项09" value="${lmxx.bz09}"> 
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
