<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>


<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>附件信息-列表查询</title>
    <!-- jfusl css-->
    <!--基本样式-->
    <link rel="stylesheet" href="../../help/fuslUI/css/base.css" />
    <link rel="stylesheet" href="../../help/fuslUI/css/font-awesome.min.css" />
    <link rel="stylesheet" href="../../help/fuslUI/css/frame.css" />
    <link rel="stylesheet" href="../../help/fuslUI/css/element.css"/>
    <!--特效插件-->
    <link rel="stylesheet" href="../../help/fuslUI/css/skins/blue.css" class="skin-color" />

    <!-- Bootstrap css-->
    <link rel="stylesheet" href="../../help/bt/css/bootstrap.min.css" >
    <link rel="stylesheet" href="../../help/fuslUI/plugins/layui/skin/default/layer.css">

    <!-- jdavid css -->
    <link  href="../../help/jdavid/a.view.css" rel="stylesheet" type="text/css"></link>
    <style type="text/css">


        .file {
            position: relative;
            display: inline-block;
            background: #D0EEFF;
            border: 1px solid #99D3F5;
            border-radius: 4px;
            padding: 4px 12px;
            overflow: hidden;
            color: #1E88C7;
            text-decoration: none;
            text-indent: 0;
            line-height: 80px;

        }
        .file input {
            position: absolute;
            font-size: 100px;
            right: 0;
            top: 0;
            opacity: 0;
        }
        .file:hover {
            background: #AADFFD;
            border-color: #78C3F3;
            color: #004974;
            text-decoration: none;
        }

    </style>
</head>
<body>


<div  style="border:0px solid green;">

            <form id="formAdd" name="formAdd"
                  enctype="multipart/form-data"
                  action="addZp1.do?fuid=${cmsfj.fuid}" method="post">
                <input type="hidden" name="_method" value="put">

                <input id="fuid" name="fuid" value="${cmsfj.fuid}" type="hidden"/>

                <c:forEach items="${cs}" var="c" varStatus="st">
                    <div style="height:110px; width:62px; float:left; border:0px solid red; text-align:center">

                        <img onclick="window.open(this.src)" src="../../zppic/${c.fjwj}" style="width:60px; height: 80px; border:0px solid #eee;">
                        <br/>
                        <a class='btn btn-danger btn-xs btn-detail' onClick="return confirm('确定删除?');"   href="removeZp.do/${c.fjid}">删除</a>
                    </div>
                </c:forEach>

                <div style="text-align: left;float:left;width:120px;">
                    <a href="javascript:;" class="file" style="margin-left:3px;">+
                        <input name="name_input_file"  id="id_input_file" type="file" class="file"
                               style_="width: 100px; background-color: white; border: 1px solid #eee; height:100px;"
                               onchange="upload_click('${cmsfj.fuid}');"
                        />
                    </a>
                </div>
    </form>

</div><!--container-fluid-->

<script src="../../help/jquery/jquery.min.js" type="text/javascript"></script>
<script src="../../help/fuslUI/plugins/layui/layer.js" type="text/javascript"></script>
<script src="../../help/fuslUI/plugins/layui/layui.js" type="text/javascript"></script>

<!--jdaivd 的js库-->
<!--script src="../../help/jquery/jquery-1.2.6.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../help/jdavid/b.view.js" language="javascript" type="text/javascript"></script-->
<script src="../../help/jdavid/c.check.js" language="javascript" type="text/javascript"></script>
<script src="../../help/jdavid/e.util.js" language="javascript" type="text/javascript"></script>
<script src="../../help/jdavid/f.request.js" language="javascript" type="text/javascript"></script>
<!--script src="../../help/jdavid/g.select.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../help/jdavid/j.jmjm.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../help/jdavid/t.ashx.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../help/jdavid/s.page.js" language="javascript" type="text/javascript"></script-->
<!--script src="../../help/jdavid/calendar/calendar_cn_time.js" language="javascript" type="text/javascript"></script-->
<!-- project 公用的js -->
<script src="../../help/jdavid/z.proj.js" language="javascript" type="text/javascript"></script>

<!-- 页面自己的js -->
<script src="js/list.js?Math.random()" language="javascript" type="text/javascript" ></script>
<script type="text/javascript">
    layui.use(['element', 'form','code'], function(){
        var element = layui.element;
        element.on('collapse(test)', function(data){
            console.log(data);
        });
        layui.code();
    });



    function upload_click(_wzid) {
        var file=document.getElementById("id_input_file").value;

        // if(title==""){
        //   alert("附件标题不可为空!");
        //    return;
        //  }

        if(file==""){
            alert("文件不可为空!");
            return;
        }
        // var url="wzxx_zp_upload_do.jsp?_wzid="+_wzid+"&_="+get_guid32()+"";
        //name_form_zp_add.attributes["action"].value=url;
        //alert(formAdd.attributes["action"].value);
        formAdd.submit();
    }







</script>


</body>
</html>
