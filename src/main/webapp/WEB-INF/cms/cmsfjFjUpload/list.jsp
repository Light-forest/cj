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

    </style>
</head>
<body>


<div  style="border:0px solid green;">

            <form id="formAdd" name="formAdd"
                  enctype="multipart/form-data"
                  action="addZp1.do?fuid=${cmsfj.fuid}" method="post">
                <input type="hidden" name="_method" value="put">

                <input id="fuid" name="fuid" value="${cmsfj.fuid}" type="hidden"/>
                <table style="width:100%;">

                    <tr>
                        <td>

                            <div style="float: left; width: 60px; margin-top: 4px; font-size: 12px;">
                                附件文件:
                            </div>
                            <div style="float: left;">
                                <input name="name_input_file"  id="id_input_file" type="file"
                                       style="width: 400px; background-color: white; border: 1px solid #eee; height: 20px;"
                                />
                            </div>

                            <div style="width: 600px; float: left;">
                                <span style='color: red; font-size: 12px; display:;'></span>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>

                            <div style="float: left; width: 60px; margin-top: 4px; font-size: 12px;">
                                附件标题:
                            </div>
                            <div style="float: left;">
                                <input name="fjsm" id="fjsm" type="text"
                                       style="width: 320px; background-color: white; border: 1px solid #eee; height: 20px;"
                                       value="${cmsfj.fjsm}"
                                />
                            </div>
                            <div style="float: left; margin-left: 5px; margin-top: 1px;">
                                <button type="button"
                                        style="width: 70px; border: 1px solid #eee; height: 20px; cursor: hand;"
                                        onclick="submitAddFj();"
                                >
                                    上传...
                                </button>
                            </div>
                        </td>
                    </tr>

                </table>
            </form>


            <c:forEach items="${cs}" var="c" varStatus="st">

                <div style='margin:3px;'>
                    ◎ <a  href="../../zppic/${c.fjwj}"   target="_blank">${c.fjsm} </a> [${c.fjsj}]
                     <a class='btn btn-danger btn-xs btn-detail' onClick="return confirm('确定删除?');"  href="removeZp.do/${c.fjid}">删除</a>
                </div>

            </c:forEach>


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

</script>


</body>
</html>
