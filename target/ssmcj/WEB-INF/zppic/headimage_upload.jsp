<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 2018/3/22
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>文件上传测试</title>
</head>
<body>
<form action="../headimage_upload/v1" enctype="multipart/form-data" method="post">

    <input type="file" name="file"></input>
    <input type="text" value="123abc" name="filename"/>
    <input type="text" value="001001" name="yhid"/>
    <button type="submit">submit</button>
</form>

</body>
</html>
