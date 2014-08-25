<%--
  Created by IntelliJ IDEA.
  User: shashwat001
  Date: 20/8/14
  Time: 5:25 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css" >
    <link rel="stylesheet" type="text/css" href="css/screen.css" >
    <link rel="stylesheet" type="text/css" href="css/bootstrap-theme.min.css">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script src="js/server.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <title>Welcome User</title>
</head>
<body>
    <header>
        Welcome to Redis Admin...!!!!
    </header>
    <div class="leftsidebar">
       <ul>
           <li>
               <a id="addserverlink" href="#">Adding a server</a>
               <form name="addServerContent" class="addServerContent" style="display: none">
                   <input type="text" name="hostname" placeholder="Host"/><br>
                   <input type="text" name="port" placeholder="Port"/><br>
                   <div class="btn">
                       <input type="button" value="Add" onclick="addserver();"/>
                   </div>
                   <div id="addserverdisplay" style="display: none"></div>
               </form>
           </li>
           <li>
               <a href="#" onclick="displayservers()">Connect to a server</a>
               <div id="displayserverlist" style="display: none">

               </div>
           </li>
       </ul>
    </div>
    <div class="centre">
       <%

       %>
    </div>
</body>
</html>
