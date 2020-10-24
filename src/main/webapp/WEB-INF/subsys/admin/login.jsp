<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<meta charset="UTF-8">
	<title>后台管理端登陆【吃鸡比赛】</title>
	<link rel="stylesheet" href="../../help/fuslUI/css/base.css" />
	<link rel="stylesheet" type="text/css" href="../../help/fuslUI/css/font-awesome.min.css"/>
	<link rel="stylesheet" href="../../help/fuslUI/css/frame.css" />
	<link rel="stylesheet" href="../../help/fuslUI/css/element.css"/>
	<link rel="stylesheet" href="../../help/fuslUI/css/skins/login-orange.css" />
</head>
<body class="login-bg">
<div class="login-warp">
	<div class="login-caption">
		<span class="icon-hospital-" title="后台管理端登陆">
 			<image src="image/present.png" style="width:40px; height: 40px; margin-bottom:10px;"></image>

		</span>


		吃鸡比赛-后台管理

	</div>
	<div class="login-box">
		<div class="caption-warp">
			<div class="caption-line"></div>
			<span class="caption-s">用户登录</span>
		</div>

		<form id="formLogin" action="../../subsys/admin/loginDo" method="post">
			<ul class="login-form">
				<li>
					<div class="login-icon"><i class="fa fa-user"></i></div>
					<input type="text" id="glyzh"  name="glyzh" placeholder="用户名" class="login-input"/>
				</li>
				<li class="showpwd-warp">
					<div class="login-icon"><i class="fa fa-key"></i></div>
					<input type="password" id="glymm" name="glymm" placeholder="密码"  maxlength="20" class="txt03 f-r3 login-input" tabindex="3" style="ime-mode:disabled;" onpaste="return  false" autocomplete="off" data-valid="isNonEmpty||between:6-20||level:2" data-error="密码不能为空||密码长度6-20位||该密码太简单，有被盗风险，建议字母+数字的组合" />
					<span class="showpwd" data-eye="password"></span>
				</li>
			</ul>
		</form>


		<div class="clear"></div>
		<div class="mt10"><span class="label label-danger error"><i class="fa fa-exclamation-triangle"></i> 用户名或密码错误</span></div>	
		<div class="icheck-warp" style="display: none;">
			<div class="icheck-group mb10">
				<input tabindex="9" type="checkbox" id="checkbox-1">
				<label for="checkbox-1">记住密码</label>
			</div>	
		</div>
		<div class="mt10"><button class="btn btn-l btn-block btn-primary" onclick="btn_login_click();">登 录</button></div>
	</div>
</div>
<div class="copyright mt20"><span class="icon-bsoftlogo_"> </span>。</div>
<script src="../../help/fuslUI/js/jquery-1.11.2.min.js" type="text/javascript"></script>
<script src="../../help/fuslUI/plugins/password.js"></script>
<script src="../../help/fuslUI/js/form.js"></script>
<script src="../../help/jquery/jquery.form.min.js" type="text/javascript"></script>


<script src="../../help/jdavid/c.check.js"></script>
<script src="../../help/jdavid/e.util.js"></script>
<script src="../../help/jdavid/f.request.js"></script>
<script src="../../help/jdavid/z.proj.js"></script>


<script>

    if(is_login()){
		location="../../subsys/admin/index";
    }

    function  btn_login_click() {
        //alert("btn_login_click");
        $('#formLogin').ajaxSubmit({
            dateType: 'json',
            success: function (respText) {
                //alert(respText);
                var resJsonObj = $.parseJSON(respText);
                var code=resJsonObj.code;
                var msg=resJsonObj.msg;
                var data=resJsonObj.data;

                if(data>=1){
                    alert("恭喜你，登陆成功!");
                    var glyzh=dvd_get_val("glyzh");
                    set_storage_val("glyzh",glyzh);

                    var glyzh=dvd_get_val("glyzh");
                    var glymm=dvd_get_val("glymm");

                    location="../../subsys/admin/index?glyzh="+glyzh+"&glymm="+glymm;

				}else{
                    alert("账号/密码 错误！")
				}

                //alert("登陆结果")
            }
        });

        /*
        //alert("btn_login_click");
        var username=dvd_get_val("username");
        var password=dvd_get_val("password");
        //alert(username+password);

        //var val_extcon="bsid in (select bsid from cj_bsxx where bsqh='"+val_bsqh+"') ";
        $.ajax({
            type: 'post',
            url:  '../../subsys/admin/loginDo',
            async: true, // 使用同步方式
            data: JSON.stringify({
                "glyzh":username,
                "glymm":password
            }),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            success: function (response) {
                console.log(response);
                var dt_list = response.data;
                check_glyxx(dt_list);
            },
            error: function (XMLHttpRequest, textStatus, errorThrown) {
                console.log("访问服务器失败1:"+XMLHttpRequest.status+XMLHttpRequest.readyState);
                console.log("访问服务器失败2:"+textStatus);
                //console.log("访问服务器失败3:"+errorThrown);

                alert('访问服务器失败');
            }
        });

		*/
    }
    function check_glyxx(dt){
        if(!dt){
            alert("用户/密码错误！")
            return;
		}
        if(dt.length<=0){
            alert("用户/密码错误！")
            return;
		}

        var glyzh=dt[0].glyzh;	//	管理员账号
        var glymc=dt[0].glymc;	//	管理员名称
        var glyjs=dt[0].glyjs;	//	管理员角色

        set_storage_val("glyzh",glyzh);
        set_storage_val("glymc",glymc);
        set_storage_val("glyjs",glyjs);

        set_storage_val("cj_islogin","true");
        location="../../subsys/admin/index";
	}

</script>
</body>
</html>
