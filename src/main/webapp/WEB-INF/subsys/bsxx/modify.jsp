<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>比赛信息-修改</title>
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
        <div class="panel-heading">比赛信息-修改</div>
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

				         <div id="div_bsid" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">比赛编码</div> 
             <input id="bsid" name="bsid" type="text" class="form-control"   placeholder="比赛编码" value="${bsxx.bsid}"> 
         </div> 
         <div id="div_bsbh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">比赛编号</div> 
             <input id="bsbh" name="bsbh" type="text" class="form-control"   placeholder="比赛编号" value="${bsxx.bsbh}"> 
         </div> 
         <div id="div_bsqh" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">比赛期号</div> 
             <input id="bsqh" name="bsqh" type="text" class="form-control"   placeholder="比赛期号" value="${bsxx.bsqh}"> 
         </div> 
         <div id="div_bsjs" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">比赛介绍</div> 
             <input id="bsjs" name="bsjs" type="text" class="form-control"   placeholder="比赛介绍" value="${bsxx.bsjs}"> 
         </div> 
         <div id="div_zgrs" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">总共人数</div> 
             <input id="zgrs" name="zgrs" type="text" class="form-control"   placeholder="总共人数" value="${bsxx.zgrs}"> 
         </div> 
         <div id="div_bmrs" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">报名人数</div> 
             <input id="bmrs" name="bmrs" type="text" class="form-control"   placeholder="报名人数" value="${bsxx.bmrs}"> 
         </div> 
         <div id="div_bsnd" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">比赛年度</div> 
             <input id="bsnd" name="bsnd" type="text" class="form-control"   placeholder="比赛年度" value="${bsxx.bsnd}"> 
         </div> 
         <div id="div_bsyf" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">比赛月份</div> 
             <input id="bsyf" name="bsyf" type="text" class="form-control"   placeholder="比赛月份" value="${bsxx.bsyf}"> 
         </div> 
         <div id="div_kssj" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">开始时间</div> 
             <input id="kssj" name="kssj" type="text" class="form-control"   placeholder="开始时间" value="${bsxx.kssj}"> 
         </div> 
         <div id="div_jssj" class="input-group col-xs-5" style="display:;"> 
             <div class="input-group-addon">结束时间</div> 
             <input id="jssj" name="jssj" type="text" class="form-control"   placeholder="结束时间" value="${bsxx.jssj}"> 
         </div> 
         <div id="div_bz00" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项00</div> 
             <input id="bz00" name="bz00" type="text" class="form-control"   placeholder="备注项00" value="${bsxx.bz00}"> 
         </div> 
         <div id="div_bz01" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项01</div> 
             <input id="bz01" name="bz01" type="text" class="form-control"   placeholder="备注项01" value="${bsxx.bz01}"> 
         </div> 
         <div id="div_bz02" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项02</div> 
             <input id="bz02" name="bz02" type="text" class="form-control"   placeholder="备注项02" value="${bsxx.bz02}"> 
         </div> 
         <div id="div_bz03" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项03</div> 
             <input id="bz03" name="bz03" type="text" class="form-control"   placeholder="备注项03" value="${bsxx.bz03}"> 
         </div> 
         <div id="div_bz04" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项04</div> 
             <input id="bz04" name="bz04" type="text" class="form-control"   placeholder="备注项04" value="${bsxx.bz04}"> 
         </div> 
         <div id="div_bz05" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项05</div> 
             <input id="bz05" name="bz05" type="text" class="form-control"   placeholder="备注项05" value="${bsxx.bz05}"> 
         </div> 
         <div id="div_bz06" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项06</div> 
             <input id="bz06" name="bz06" type="text" class="form-control"   placeholder="备注项06" value="${bsxx.bz06}"> 
         </div> 
         <div id="div_bz07" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项07</div> 
             <input id="bz07" name="bz07" type="text" class="form-control"   placeholder="备注项07" value="${bsxx.bz07}"> 
         </div> 
         <div id="div_bz08" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项08</div> 
             <input id="bz08" name="bz08" type="text" class="form-control"   placeholder="备注项08" value="${bsxx.bz08}"> 
         </div> 
         <div id="div_bz09" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项09</div> 
             <input id="bz09" name="bz09" type="text" class="form-control"   placeholder="备注项09" value="${bsxx.bz09}"> 
         </div> 
         <div id="div_bz10" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项10</div> 
             <input id="bz10" name="bz10" type="text" class="form-control"   placeholder="备注项10" value="${bsxx.bz10}"> 
         </div> 
         <div id="div_bz11" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项11</div> 
             <input id="bz11" name="bz11" type="text" class="form-control"   placeholder="备注项11" value="${bsxx.bz11}"> 
         </div> 
         <div id="div_bz12" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项12</div> 
             <input id="bz12" name="bz12" type="text" class="form-control"   placeholder="备注项12" value="${bsxx.bz12}"> 
         </div> 
         <div id="div_bz13" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项13</div> 
             <input id="bz13" name="bz13" type="text" class="form-control"   placeholder="备注项13" value="${bsxx.bz13}"> 
         </div> 
         <div id="div_bz14" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项14</div> 
             <input id="bz14" name="bz14" type="text" class="form-control"   placeholder="备注项14" value="${bsxx.bz14}"> 
         </div> 
         <div id="div_bz15" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项15</div> 
             <input id="bz15" name="bz15" type="text" class="form-control"   placeholder="备注项15" value="${bsxx.bz15}"> 
         </div> 
         <div id="div_bz16" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项16</div> 
             <input id="bz16" name="bz16" type="text" class="form-control"   placeholder="备注项16" value="${bsxx.bz16}"> 
         </div> 
         <div id="div_bz17" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项17</div> 
             <input id="bz17" name="bz17" type="text" class="form-control"   placeholder="备注项17" value="${bsxx.bz17}"> 
         </div> 
         <div id="div_bz18" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项18</div> 
             <input id="bz18" name="bz18" type="text" class="form-control"   placeholder="备注项18" value="${bsxx.bz18}"> 
         </div> 
         <div id="div_bz19" class="input-group col-xs-5" style="display:none;"> 
             <div class="input-group-addon">备注项19</div> 
             <input id="bz19" name="bz19" type="text" class="form-control"   placeholder="备注项19" value="${bsxx.bz19}"> 
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
    init_datetime("kssj");
    init_datetime("jssj");
    init_textarea("bsjs");
    init_select("bsnd","2018|2019|2020|2021|");
    init_select("bsyf","1|2|3|4|5|6|7|8|9|10|11|12|");

</script>

</body>
</html>
