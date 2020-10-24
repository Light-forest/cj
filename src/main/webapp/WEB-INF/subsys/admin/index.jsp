<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="X-UA-Compatible" content="ie=edge" />

<title>吃鸡比赛</title>
<link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">
<!--基本样式-->
<link rel="stylesheet" href="../../help/fuslUI/css/base.css" />
<link rel="stylesheet" href="../../help/fuslUI/css/font-awesome.min.css" />
<link rel="stylesheet" href="../../help/fuslUI/css/frame.css" />
<link rel="stylesheet" href="../../help/fuslUI/css/element.css"/>
<!--特效插件-->
<link rel="stylesheet" href="../../help/fuslUI/css/skins/blue.css" class="skin-color" />
    <!--
    <link rel="stylesheet" href="../../help/fuslUI/plugins/layui/skin/default/layer.css"/-->
</head>
<body class="body-bg">
<div class="main-container">
  <div class="sidebar">
    <div class="brand">
      <div class="icon-hospital_" title="">
         <image src="image/present.png" style="width:30px; height: 30px; margin-bottom:10px;"></image>

      </div>
      <p class="brand-caption">吃鸡比赛管理端</p>
      <p class="brand-caption-sub"></p>
    </div>
    <ul class="nav nav-list">
      <li><a href="javascript:;">
          <i class="menu-icon fa fa-home"></i>
          <span class="menu-text">首页</span></a><b class="arrow"></b></li>


        <li><a href="#" class="dropdown-toggle">
            <i class="menu-icon fa fa-hand-o-right"></i><span class="menu-text">信息发布</span>
            <b class="arrow fa fa-angle-down"></b> </a><b class="arrow"></b>
            <ul class="submenu">
                <li><a href="javascript:client_load_url('../../subsys/lmxx/list');"><i class="menu-icon fa fa-caret-right"></i>信息发布</a><b class="arrow"></b></li>

            </ul>
        </li>



     <li><a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-hand-o-right"></i>
         <span class="menu-text">比赛信息</span>
         <b class="arrow fa fa-angle-down"></b> </a>
         <b class="arrow"></b>
        <ul class="submenu">
        	<li><a href="javascript:client_load_url('../../subsys/bsxx/list');">
                <i class="menu-icon fa fa-caret-right"></i>比赛信息</a><b class="arrow"></b></li>
          
        </ul>
      </li>
	  
	  
	 <li><a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-pencil-square-o"></i><span class="menu-text">报名信息</span> <b class="arrow fa fa-angle-down"></b> </a><b class="arrow"></b>
        <ul class="submenu">
        	<li><a href="javascript:client_load_url('../../subsys/bmxx/list');"><i class="menu-icon fa fa-caret-right"></i>报名信息</a><b class="arrow"></b></li>
          
        </ul>
      </li>
        <li><a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-pencil-square-o"></i><span class="menu-text">管理员信息</span> <b class="arrow fa fa-angle-down"></b> </a><b class="arrow"></b>
            <ul class="submenu">
                <li><a href="javascript:client_load_url('../../subsys/glyxx/list');"><i class="menu-icon fa fa-caret-right"></i>管理员信息</a><b class="arrow"></b></li>

            </ul>
        </li>

        <!--
        <li><a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-diamond"></i><span class="menu-text">比赛明细</span> <b class="arrow fa fa-angle-down"></b> </a><b class="arrow"></b>
          <ul class="submenu">
              <li><a href="javascript:client_load_url('../cj_bsmx/c.jsp');"><i class="menu-icon fa fa-caret-right"></i>比赛明细</a><b class="arrow"></b></li>

          </ul>
        </li>



        <!--
        <li><a href="#" class="dropdown-toggle"> <i class="menu-icon fa fa-bar-chart-o"></i><span class="menu-text">退出后台</span> <b class="arrow fa fa-angle-down"></b> </a><b class="arrow"></b>
          <ul class="submenu">

          </ul>
        </li>
         -->
    </ul>
    <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse"> <i class="ace-icon fa fa-bars" data-icon1="ace-icon fa fa-bars" data-icon2="ace-icon fa fa-bars"></i> </div>
  </div>
  <div class="main-content">
     <div class="header">
      <ul class="user-center">
        <li class="dropdown-inner"><a href="Javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown"> <span class="btn-circle btn-circle-m"> <i class="fa fa-user"></i> </span> 
            <span>[<span id="glymc">${glyxx.glymc}.${glyxx.glyjs}</span>]欢迎您！</span> </a>
          <div class="dropdown-menu account-area">
            <div class="account-area-header">切换皮肤</div>
            <div class="account-area-body">
              <ul class="skin-list" id="style-switcher">
                <li><a href="#blue"><span class="color-block bg-blue"></span>Blue</a></li>
                <li><a href="#green"><span class="color-block bg-green"></span>Green</a></li>
                <li><a href="#orange"><span class="color-block bg-orange"></span>Orange</a></li>
              </ul>
            </div>
            <div class="account-area-footer"><a href=""><i class="fa fa-cog"></i>管理界面</a></div>
          </div>
        </li>
        <li> <a href="Javascript:void(0);"> <span class="btn-circle btn-circle-m">
            <i class="fa fa-bell"></i> </span> <span>通知</span> </a> </li>

        <li> <a href="Javascript:logout();location='login.html';"> <span class="btn-circle btn-circle-m">
            <i class="fa fa-power-off"></i> </span> <span>退出平台</span> </a> </li>

        <li> <a href="Javascript:window.open('../../h5app/cj/home.html');"> <span class="btn-circle btn-circle-m">
            <i class="fa fa-power-off"></i> </span> <span>app端</span> </a> </li>
      </ul>
    </div>
	
	
	
    <div class="container">
      <div class="row">
	  
	    <!--client 开始-->
        <div class="col-xx-12">
		 <iframe id="id_iframe_client" style="width:100%;height:800px;"
						frameborder='0'>
		 </iframe>  
		
		
		
		
		  <!--
          <div class="tabs-container">
            <ul class="tabs tabs-brief">
              <li class="active">效果</li>
              <li>代码 </li>
              <li>文档说明</li>
            </ul>
            <div class="tab-content">
              <div class="tab-pane">
              	效果
              </div>
              <div class="tab-pane hide">
                <pre class="layui-code" lay-encode="true">代码部分</pre>
              </div>
              <div class="tab-pane hide">
                <p>通过追加 <code>class：tabs-card</code> 来设定简洁风格。</p>
              </div>
            </div>
          </div>
		  -->
        </div>
		
		 <!--client 结束-->
		
		
      </div>
     </div>
  </div>
</div>
<script type="text/javascript" src="../../help/fuslUI/js/jquery-1.11.2.min.js" ></script> 
<script type="text/javascript" src="../../help/fuslUI/js/bootstrap.2.0.js"></script> 
<script type="text/javascript" src="../../help/fuslUI/js/project.js"></script>
<!--
<script type="text/javascript" src="../../help/fuslUI/plugins/layui/layui.js"></script>
-->

<script src="../../help/fuslUI/js/form.js"></script> 
<script src="../../help/fuslUI/plugins/ace-menu/ace-menu.js"></script> 
<script src="../../help/fuslUI/plugins/ace-menu/ace.sidebar.js"></script>
<script src="../../help/jdavid/z.proj.js" language="javascript" type="text/javascript"></script>


<script>

    if(!is_login()) {
        location="../../subsys/admin/login";
    }
    else{
        // var glymc=get_storage_val("glymc");
        // $("#glymc").html(glymc);

    }




    function client_load_url(url){
        $("#id_iframe_client").attr("src",url);
        var minHeight = $(window).height();
        startInit('id_iframe_client', minHeight);
    }

    //===========start 设置高度======================
    var browserVersion = window.navigator.userAgent.toUpperCase();
    var isOpera = browserVersion.indexOf("OPERA") > -1 ? true : false;
    var isFireFox = browserVersion.indexOf("FIREFOX") > -1 ? true : false;
    var isChrome = browserVersion.indexOf("CHROME") > -1 ? true : false;
    var isSafari = browserVersion.indexOf("SAFARI") > -1 ? true : false;
    var isIE = (!!window.ActiveXObject || "ActiveXObject" in window);
    var isIE9More = (! -[1, ] == false);

    function reinitIframe(iframeId, minHeight) {
        try {
            var iframe = document.getElementById(iframeId);
            var bHeight = 0;
            if (isChrome == false && isSafari == false)
                bHeight = iframe.contentWindow.document.body.scrollHeight;

            var dHeight = 0;
            if (isFireFox == true)
                dHeight = iframe.contentWindow.document.documentElement.offsetHeight + 2;
            else if (isIE == false && isOpera == false)
                dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
            else if (isIE == true && isIE9More) {//ie9+
                var heightDeviation = bHeight - eval("window.IE9MoreRealHeight" + iframeId);
                if (heightDeviation == 0) {
                    bHeight += 3;
                } else if (heightDeviation != 3) {
                    eval("window.IE9MoreRealHeight" + iframeId + "=" + bHeight);
                    bHeight += 3;
                }
            }
            else//ie[6-8]、OPERA
                bHeight += 3;

            var height = Math.max(bHeight, dHeight);
            if (height < minHeight) height = minHeight;
            iframe.style.height = height + "px";
        } catch (ex) { }
    }
    function startInit(iframeId, minHeight) {
        eval("window.IE9MoreRealHeight" + iframeId + "=0");
        window.setInterval("reinitIframe('" + iframeId + "'," + minHeight + ")", 800);
    }

    //===========end 设置高度======================


    /*
    layui.use(['element', 'form','code'], function(){
     var element = layui.element;
     element.on('collapse(test)', function(data){
       console.log(data);
     });
     layui.code();
    });
    */
</script>
</body>
</html>