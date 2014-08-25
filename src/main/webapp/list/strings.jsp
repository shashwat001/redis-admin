<%
    Cookie[] cookies = null;
    cookies = request.getCookies();
    String host = cookies[0].getValue();
    int port = Integer.parseInt(cookies[1].getValue());
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>

</body>
</html>
