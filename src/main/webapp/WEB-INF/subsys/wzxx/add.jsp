<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>文章信息-录入</title>
      
    <link rel="stylesheet" href="../../help/bt/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="../../help/fuslUI/plugins/layui/skin/default/layer.css"/> 
    <link rel="stylesheet" href="../../help/jdavid/a.view.css" type="text/css"/>

    <style type="text/css">


    </style>




    <!--for kindeditor-->
    <link rel="stylesheet" href="../../help/kindeditor/kindeditor/themes/default/default.css" />
    <link rel="stylesheet" href="../../help/kindeditor/kindeditor/plugins/code/prettify.css" />

    <script charset="utf-8" src="../../help/kindeditor/kindeditor/kindeditor-all.js"></script>
    <script charset="utf-8" src="../../help/kindeditor/kindeditor/lang/zh-CN.js"></script>
    <script charset="utf-8" src="../../help/kindeditor/kindeditor/plugins/code/prettify.js"></script>
    <script>
        var aKindEditor;
        KindEditor.ready(function(K) {
            //alert(K);
            var editor1 = K.create('textarea[name="zwnr"]', {
                cssPath : '../../help/kindeditor/kindeditor/plugins/code/prettify.css',
                //uploadJson : '../../help/kindeditor/kindeditor/jsp/upload_json.jsp',
                //fileManagerJson : '../../help/kindeditor/kindeditor/jsp/file_manager_json.jsp',
                uploadJson : '../../help/kindeditor/kindeditor/jsp/upload_json',
                fileManagerJson : '../../help/kindeditor/kindeditor/jsp/file_manager_json',
                allowFileManager : true,
                afterCreate : function() {
                    var self = this;
                    aKindEditor=this;
                    K.ctrl(document, 13, function() {
                        self.sync();
                        document.forms['formadd'].submit();
                    });
                    K.ctrl(self.edit.doc, 13, function() {
                        self.sync();
                        document.forms['formadd'].submit();
                    });
                }
            });
            prettyPrint();
        });
    </script>
    <!--end for kindeditor-->







</head>
<body  >

<div style=""  class="container-fluid">
    <div class="panel panel-info">
        <div class="panel-heading">文章信息-录入</div>
        <div id="notice" name="notice" class="alert alert-danger alert-dismissible" role="alert" style="margin:5px;display:none;">
            <button type="button" class="close" data-dismiss="alert" aria-label="Close" onclick="$(this).parent().css('display','none');">
                <span aria-hidden="true">&times;</span></button>
            <strong>提醒：</strong>主键冲突，请重新录入信息!
        </div>

        <form class="form-inline"  name="formadd" id="formadd"  method="post" action="add.do">
            <input type="hidden" name="_method" value="put">

                <div class="form-group">

                    <div id="div_wzid" class="input-group col-xs-5" style="display:none;">
                        <div class="input-group-addon">文章编码</div>
                        <input id="wzid" name="wzid" type="text" class="form-control" placeholder="文章编码"
                               value="${wzxx.wzid}">
                    </div>
                    <div id="div_wzbh" class="input-group col-xs-5" style="display:;">
                        <div class="input-group-addon">文章编号</div>
                        <input id="wzbh" name="wzbh" type="text" class="form-control" placeholder="文章编号"
                               value="${wzxx.wzbh}">
                    </div>
                    <div id="div_wzxh" class="input-group col-xs-5" style="display:;">
                        <div class="input-group-addon">文章序号</div>
                        <input id="wzxh" name="wzxh" type="text" class="form-control" placeholder="文章序号"
                               value="${wzxx.wzxh}">
                    </div>
                    <div id="div_zwbt" class="input-group col-xs-5" style="display:;">
                        <div class="input-group-addon">中文标题</div>
                        <input id="zwbt" name="zwbt" type="text" class="form-control" placeholder="中文标题"
                               value="${wzxx.zwbt}">
                    </div>
                    <div id="div_ywbt" class="input-group col-xs-5" style="display:none;">
                        <div class="input-group-addon">英文标题</div>
                        <input id="ywbt" name="ywbt" type="text" class="form-control" placeholder="英文标题"
                               value="${wzxx.ywbt}">
                    </div>
                    <div id="div_btys" class="input-group col-xs-5" style="display:none;">
                        <div class="input-group-addon">标题颜色</div>
                        <input id="btys" name="btys" type="text" class="form-control" placeholder="标题颜色"
                               value="${wzxx.btys}">
                    </div>

                    <div id="div_wztp" class="input-group col-xs-12" style="display:none;">
                        <div class="input-group-addon">文章图片</div>
                        <input id="wztp" name="wztp" type="text" class="form-control" placeholder="文章图片"
                               value="${wzxx.wztp}">
                    </div>

                    <div class="">文章图片</div>

                    <div style="text-align:left; width:100%; height:200px;">
                        <iframe
                                id="iframeZp"
                                name="iframeZp"
                                width="100%"
                                height="200px"
                                src=""
                                frameborder="0"
                                scrolling="no"
                                style="border:1px #cccccc solid;"
                        ></iframe>
                    </div>


                    <div id="div_zwzy" class="input-group col-xs-5" style="display:;">
                        <div class="input-group-addon">中文摘要</div>
                        <input id="zwzy" name="zwzy" type="text" class="form-control" placeholder="中文摘要"
                               value="${wzxx.zwzy}">
                    </div>
                    <div id="div_ywzy" class="input-group col-xs-5" style="display:none;">
                        <div class="input-group-addon">英文摘要</div>
                        <input id="ywzy" name="ywzy" type="text" class="form-control" placeholder="英文摘要"
                               value="${wzxx.ywzy}">
                    </div>
                    <div id="div_wzlx" class="input-group col-xs-5" style="display:none;">
                        <div class="input-group-addon">文章类型</div>
                        <input id="wzlx" name="wzlx" type="text" class="form-control" placeholder="文章类型"
                               value="${wzxx.wzlx}">
                    </div>
                    <div id="div_zwnr" class="input-group col-xs-12" style="display:none;">
                        <div class="input-group-addon">文章内容</div>
                        <input id="zwnr_" name="zwnr_" type="text" class="form-control" placeholder="文章内容"
                               value="${wzxx.zwnr}">
                    </div>

                    文章内容

                    <textarea id="zwnr" name="zwnr" cols="100" rows="8"
                              style="width:100%;height:450px;visibility:hidden;">${wzxx.zwnr}</textarea>


                    <div style="display: none;">

                        <div id="div_ywnr" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">英文内容</div>
                            <input id="ywnr" name="ywnr" type="text" class="form-control" placeholder="英文内容"
                                   value="${wzxx.ywnr}">
                        </div>
                        <div id="div_wzbq" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">文章标签</div>
                            <input id="wzbq" name="wzbq" type="text" class="form-control" placeholder="文章标签"
                                   value="${wzxx.wzbq}">
                        </div>
                        <div id="div_gjcy" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">关键词语</div>
                            <input id="gjcy" name="gjcy" type="text" class="form-control" placeholder="关键词语"
                                   value="${wzxx.gjcy}">
                        </div>
                        <div id="div_fbsj" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">发布时间</div>
                            <input id="fbsj" name="fbsj" type="text" class="form-control" placeholder="发布时间"
                                   value="${wzxx.fbsj}">
                        </div>
                        <div id="div_wzzz" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">文章作者</div>
                            <input id="wzzz" name="wzzz" type="text" class="form-control" placeholder="文章作者"
                                   value="${wzxx.wzzz}">
                        </div>
                        <div id="div_wzly" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">文章来源</div>
                            <input id="wzly" name="wzly" type="text" class="form-control" placeholder="文章来源"
                                   value="${wzxx.wzly}">
                        </div>
                        <div id="div_bjsj" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">编辑时间</div>
                            <input id="bjsj" name="bjsj" type="text" class="form-control" placeholder="编辑时间"
                                   value="${wzxx.bjsj}">
                        </div>
                        <div id="div_wzzt" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">文章状态</div>
                            <input id="wzzt" name="wzzt" type="text" class="form-control" placeholder="文章状态"
                                   value="${wzxx.wzzt}">
                        </div>
                        <div id="div_lmid" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">栏目编码</div>
                            <input id="lmid" name="lmid" type="text" class="form-control" placeholder="栏目编码"
                                   value="${wzxx.lmid}">
                        </div>
                        <div id="div_lmmc" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">栏目名称</div>
                            <input id="lmmc" name="lmmc" type="text" class="form-control" placeholder="栏目名称"
                                   value="${wzxx.lmmc}">
                        </div>
                        <div id="div_fyfs" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">分页方式</div>
                            <input id="fyfs" name="fyfs" type="text" class="form-control" placeholder="分页方式"
                                   value="${wzxx.fyfs}">
                        </div>
                        <div id="div_fydx" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">分页大小</div>
                            <input id="fydx" name="fydx" type="text" class="form-control" placeholder="分页大小"
                                   value="${wzxx.fydx}">
                        </div>
                        <div id="div_sftt" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">是否头条</div>
                            <input id="sftt" name="sftt" type="text" class="form-control" placeholder="是否头条"
                                   value="${wzxx.sftt}">
                        </div>
                        <div id="div_sftj" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">是否推荐</div>
                            <input id="sftj" name="sftj" type="text" class="form-control" placeholder="是否推荐"
                                   value="${wzxx.sftj}">
                        </div>
                        <div id="div_zdjb" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">置顶级别</div>
                            <input id="zdjb" name="zdjb" type="text" class="form-control" placeholder="置顶级别"
                                   value="${wzxx.zdjb}">
                        </div>
                        <div id="div_sfgd" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">是否归档</div>
                            <input id="sfgd" name="sfgd" type="text" class="form-control" placeholder="是否归档"
                                   value="${wzxx.sfgd}">
                        </div>
                        <div id="div_plsl" class="input-group col-xs-5" style="display:;">
                            <div class="input-group-addon">评论数量</div>
                            <input id="plsl" name="plsl" type="text" class="form-control" placeholder="评论数量"
                                   value="${wzxx.plsl}">
                        </div>
                        <div id="div_bz00" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项00</div>
                            <input id="bz00" name="bz00" type="text" class="form-control" placeholder="备注项00"
                                   value="${wzxx.bz00}">
                        </div>
                        <div id="div_bz01" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项01</div>
                            <input id="bz01" name="bz01" type="text" class="form-control" placeholder="备注项01"
                                   value="${wzxx.bz01}">
                        </div>
                        <div id="div_bz02" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项02</div>
                            <input id="bz02" name="bz02" type="text" class="form-control" placeholder="备注项02"
                                   value="${wzxx.bz02}">
                        </div>
                        <div id="div_bz03" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项03</div>
                            <input id="bz03" name="bz03" type="text" class="form-control" placeholder="备注项03"
                                   value="${wzxx.bz03}">
                        </div>
                        <div id="div_bz04" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项04</div>
                            <input id="bz04" name="bz04" type="text" class="form-control" placeholder="备注项04"
                                   value="${wzxx.bz04}">
                        </div>
                        <div id="div_bz05" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项05</div>
                            <input id="bz05" name="bz05" type="text" class="form-control" placeholder="备注项05"
                                   value="${wzxx.bz05}">
                        </div>
                        <div id="div_bz06" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项06</div>
                            <input id="bz06" name="bz06" type="text" class="form-control" placeholder="备注项06"
                                   value="${wzxx.bz06}">
                        </div>
                        <div id="div_bz07" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项07</div>
                            <input id="bz07" name="bz07" type="text" class="form-control" placeholder="备注项07"
                                   value="${wzxx.bz07}">
                        </div>
                        <div id="div_bz08" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项08</div>
                            <input id="bz08" name="bz08" type="text" class="form-control" placeholder="备注项08"
                                   value="${wzxx.bz08}">
                        </div>
                        <div id="div_bz09" class="input-group col-xs-5" style="display:none;">
                            <div class="input-group-addon">备注项09</div>
                            <input id="bz09" name="bz09" type="text" class="form-control" placeholder="备注项09"
                                   value="${wzxx.bz09}">
                        </div>

                    </div>
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
