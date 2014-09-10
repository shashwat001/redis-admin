<%--
  Created by IntelliJ IDEA.
  User: shashwat001
  Date: 20/8/14
  Time: 5:25 PM
  To change this template use File | Settings | File Templates.
--%>

<%
    if(session.getAttribute("username") == null){
        response.sendRedirect("index.jsp");
    }
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/screen.css" >
    <link rel="stylesheet" type="text/css" href="css/insert.css" >
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script src="js/server.js" type="text/javascript"></script>
    <script src="js/insert.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/search.js" type="text/javascript"></script>
    <title>Welcome User</title>
</head>
<body>
    <div class="container-fluid" >
        <div class="row" >
            <header>
                Welcome to Redis Admin...!!!!
                <a class="btn-sm btn-default pull-right" type="button" href="/logout"><strong>Logout</strong></a>
            </header>

        </div>
        <div class="row"  id="main" >
            <% if(session.getAttribute("admin")!=null) {  %>
                <div  class="col-lg-3" >
            <%  } else {  %>
                <div class="col-lg-2" >
            <%  }  %>

                <%
                    if(session.getAttribute("admin")!=null) {  %>

                        <label style = "margin-bottom: 15px" id = "addserverlink" class="btn btn-block btn-default" type = "button" onclick = "toggleFormDisplay()" ><strong > Add new server</strong ></label >
                        <form id = "addServerContent" name = "addServerContent" style = "display: none" action = "" >
                            <input type = "text" name = "hostname" placeholder = "Host" /><br >
                            <input type = "text" name = "port" placeholder = "Port" /><br >
                            <button class="btn btn-block" onclick = "return addserver()" > Add </button >
                        </form >
                        <label id = "addserverdisplay" style = "display: none" ></label >
                <%
                    }

                %>
               

                <div class="panel panel-default">
                    <div class="panel-heading" style="text-align: center"><strong>Available Servers</strong></div>
                    <div id="displayServerList" class="panel-body">
                        <script>
                            displayservers( <%= session.getAttribute("admin") %>);
                        </script>
                    </div>
                </div>



            </div>
            <% if(session.getAttribute("admin")!=null) {  %>
                <div id="centre"  class="col-lg-9" >
            <%  } else {  %>
                <div id="centre"  class="col-lg-10" >
            <%  }  %>
            </div>
        </div>
    </div>
</body>
</html>
