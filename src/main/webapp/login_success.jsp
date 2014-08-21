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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript"></script>
    <script src="js/server.js" type="text/javascript"></script>
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
               <div class="addServerContent">
                   <input type="text" name="hostname" placeholder="Host"/><br>
                   <input type="text" name="port" placeholder="Port"/><br>
                   <input type="password" name="password" placeholder="**********"/>
                   <p class="btn">
                       <input type="button" value="Add"/>
                   </p>
                   <i class="ctop">&nbsp;</i>
                   <i class="cbottom">&nbsp;</i>
               </div>
           </li>
           <li>
               <a href="#">Listing all instances of server</a>
           </li>
       </ul>
    </div>
    <div class="centre">
    </div>
</body>
</html>
