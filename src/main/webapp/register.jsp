<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <script type="text/javascript" >
        function validateForm(obj){
            var password = obj["password"].value;
            var confirmPasswd = obj["confirmPassword"].value;
            if(password == confirmPasswd) {
                return true;
            }
            obj["password"].style.borderColor="red";
            obj["confirmPassword"].style.borderColor="red";
            return false;
        }
    </script>
</head>
<body>
<h1>Welcome to Redis Administrator...!!!!!</h1>
<div class="main">
    <div class="leftsidebar">Left</div>
    <div class="centre">
        <div id="login">
            <div id="triangle"></div>
            <h1>Register</h1>
            <form  name="registerForm" action="/register" method="post" onsubmit="return validateForm(this);">
                <input type="text" name="username" placeholder="Name" />
                <input type="username" name="username" placeholder="Email" />
                <input type="password" name="password" placeholder="Password" />
                <input type="password" name="confirmPassword" placeholder="Confirm Password" />
                <input type="submit" value="Register" />
            </form>
        </div>
    </div>
    <div class="rightsidebar">Right Side</div>
</div>
</body>
</html>