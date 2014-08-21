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
    <title>Welcome User</title>
</head>
<body>
    <header>
        Welcome to Redis Admin...!!!!
    </header>
    <div class="leftsidebar">
       <ul>
           <li>Adding a server
               <div class="addServerContent">
                   <p class="addserverbox">Add Server Instance</p>
                   <div class="warning"><p>Error in server configuration</p><p class="c">&nbsp;</p></div>
                   <input type="text" placeholder="Username"/>
                   <input type="text" placeholder="*******"/>
                   <p class="btn">
                       <input type="button" value="Login"/>
                   </p>
                   <ul class="nav-path">
                       <li><a href="#">Remove instance</a></li>
                       <li><a href="#">Create instance</a></li>
                   </ul>
                   <i class="ctop">&nbsp;</i>
                   <i class="cbottom">&nbsp;</i>
               </div>
           </li>
           <li>List all server instances</li>
       </ul>
    </div>
    <div class="centre">
    </div>
</body>
</html>
