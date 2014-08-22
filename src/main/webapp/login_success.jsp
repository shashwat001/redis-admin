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
    <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.5.0/jquery.min.js" type="text/javascript"></script>
    <script src="js/server.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
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
        <ul class="nav nav-tabs" role="tablist">
            <li class="active"><a data-toggle="tab" href="#sectionA">Home</a></li>
            <li><a data-toggle="tab" href="#sectionB">Profile</a></li>
            <li><a data-toggle="tab" href="#sectionC">Messages</a></li>
        </ul>

        <div class="tab-content">
            <div id="sectionA" class="tab-pane fade in active">
                <h3>Section A</h3>
                <p>Aliquip placeat salvia cillum iphone. Seitan aliquip quis cardigan american apparel, butcher voluptate nisi qui. Raw denim you probably haven't heard of them jean shorts Austin. Nesciunt tofu stumptown aliqua, retro synth master cleanse. Mustache cliche tempor, williamsburg carles vegan helvetica. Reprehenderit butcher retro keffiyeh dreamcatcher synth.</p>
            </div>
            <div id="sectionB" class="tab-pane fade">
                <h3>Section B</h3>
                <p>Vestibulum nec erat eu nulla rhoncus fringilla ut non neque. Vivamus nibh urna, ornare id gravida ut, mollis a magna. Aliquam porttitor condimentum nisi, eu viverra ipsum porta ut. Nam hendrerit bibendum turpis, sed molestie mi fermentum id. Aenean volutpat velit sem. Sed consequat ante in rutrum convallis. Nunc facilisis leo at faucibus adipiscing.</p>
            </div>
            <div id="sectionC" class="tab-pane fade">
                <h3>Section B</h3>
                <p>Vestibulum nec erat eu nulla rhoncus fringilla ut non neque. Vivamus nibh urna, ornare id gravida ut, mollis a magna. Aliquam porttitor condimentum nisi, eu viverra ipsum porta ut. Nam hendrerit bibendum turpis, sed molestie mi fermentum id. Aenean volutpat velit sem. Sed consequat ante in rutrum convallis. Nunc facilisis leo at faucibus adipiscing.</p>
            </div>
        </div>
    </div>
</body>
</html>
