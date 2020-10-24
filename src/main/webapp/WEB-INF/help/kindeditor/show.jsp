<%--
  Created by IntelliJ IDEA.
  User: david
  Date: 2018/6/27
  Time: 19:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("UTF-8");
    String htmlData = request.getParameter("content1") != null ? request.getParameter("content1") : "";
%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8" />
    <title>KindEditor JSP</title>
</head>
<body>
<%=htmlData%>
</body>
</html>
