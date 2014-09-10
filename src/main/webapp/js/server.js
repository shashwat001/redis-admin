
function toggleFormDisplay(){
    $('#addServerContent').slideToggle('fast');
    $('#addserverdisplay').css('display','none');
}

function loginSubmit(){
    var form = document.getElementById('loginform');
    var username = form.elements['username'].value;
    var password = form.elements['password'].value;


    $.post("/login",{ username : username , password : password }, function(response){
            console.log(response);
            if(response=='true')    {
                location.href = "interfacehome.jsp";
            }
            else if(response == "false")   {
                var loginAlertBox = document.getElementById('login-alert');
                loginAlertBox.textContent = "Username or Password do not match"
                loginAlertBox.style.display = "block";
            }
            else {
                console.log("Other problem");
            }
    });
}

function registerSubmit(){
    var form = document.getElementById('signupform');
    var username = form.elements['username'].value;
    var name = form.elements['name'].value;
    var password = form.elements['password'].value;
    var confirm_password = form.elements['confirm-password'].value;


    var signupAlertBox = document.getElementById('signupalert');
    var signupAlertCaptionBox = signupAlertBox.childNodes[1];
    var signupAlertMessageBox = signupAlertBox.childNodes[2];

    var errorMessage = null;
    if(username.length < 4 || username.length > 16){
        errorMessage = "Invalid Username";
    }

    else if(name.length == 0){
        errorMessage =  "Name not provided";
    }

    else if(password.length < 8 || password.length > 32){
        errorMessage =  "Invalid Password";
    }

    else if(password != confirm_password){
        errorMessage =  "Password do not match";
    }

    if(errorMessage != null){
        signupAlertBox.className = "alert alert-danger";
        signupAlertCaptionBox.className += "label label-danger";
        signupAlertCaptionBox.textContent = "Error : ";
        signupAlertMessageBox.textContent = errorMessage;
        signupAlertBox.style.display = "block";
        return;
    }
    $.post("/register",{ username : username , name : name , password : password }, function(response){
        console.log("Post successfull");
        if(response=='2')    {
            form.reset();
            signupAlertBox.className = "alert alert-success";
            signupAlertCaptionBox.className = "label label-success";
            signupAlertCaptionBox.textContent = "Success : ";
            signupAlertMessageBox.textContent = "Registered Successfully";
            signupAlertBox.style.display = "block";
        }
        else if(response == "1")   {
            signupAlertBox.className = "alert alert-danger";
            signupAlertCaptionBox.className = "label label-danger";
            signupAlertCaptionBox.textContent = "Error : ";
            signupAlertMessageBox.textContent = "User already exists";
            signupAlertBox.style.display = "block";
        }
        else {
            signupAlertBox.className = "alert alert-danger";
            signupAlertCaptionBox.className = "label label-danger";
            signupAlertCaptionBox.textContent = "Error : ";
            signupAlertMessageBox.textContent = "Invalid Input";
            signupAlertBox.style.display = "block";
        }

    });

}

function addserver(){
    var formbox =  document.forms["addServerContent"];
    var host = formbox["hostname"].value;
    var port = formbox["port"].value;
    $.get("/addServer" , { host : host, port :port },function(response){
            $("#addserverdisplay").css('display', 'block');
            if(response=='true')    {
                formbox.reset();
                formbox.style.display = "none";
                $("#addserverdisplay").html("Server added successfully");
            }
            else    {
                $("#addserverdisplay").html("Server could not be added");
            }

    });
    return false;
}

//setInterval(displayservers,"2000");
//displayservers();

function deleteServer(obj) {
    var hostport = obj.previousSibling.textContent.split(":");
    var host = hostport[0];
    var port = hostport[1];

    $.get("/deleteServer",{ host : host , port : port }, function(response){
        response = response.trim();
        if(response == "true"){
            alert("here");
            var parent = obj.parentNode;
            parent.parentNode.removeChild(parent);
        }
        else if(response == "false"){
            alert("Error Deleting server");
        }
        else if(response == "nologin"){
            location.href = "index.jsp";
        }
        else if(response == "noadmin"){
            alert("Permission denied");
        }
    });
}
function displayservers(isadmin) {
    $.get("/getServerList", function(response){

            var response = jQuery.parseJSON(response);
            var targetElement = document.getElementById("displayServerList");
            removeAllChildren(targetElement);

            if(response != 'false')    {
                var listgroup = document.createElement('li');
                listgroup.className = "btn-group-vertical";
                listgroup.style.width = "100%";
                listgroup.setAttribute("data-toggle","buttons")
                targetElement.appendChild(listgroup);

                for(var i = 0; i < response.length;i++){
                    var host = response[i].host;
                    var port = response[i].port;

                    var li = document.createElement("li");
                    li.className = "btn btn-block btn-default";
                    li.style.textAlign = "left";

                    var inputNode = document.createElement('input');
                    inputNode.setAttribute("type","radio");

                    var textNode = document.createTextNode(host+":"+port);


                    li.appendChild(inputNode);
                    li.appendChild(textNode);

                    if(response[i].active==true) {
                        li.style.color = "blue";
                        li.onclick = function(e){ getServerOperations(this); }
                    }
                    else{
                        li.style.color = "red";
                    }


                    if(isadmin == "1"){
                        var deleteNode = document.createElement('a');
                        deleteNode.style.float = "right"
                        deleteNode.onclick = function(e) {e.stopPropagation();  deleteServer(this); };
                        deleteNode.textContent = "Delete";
                        li.appendChild(deleteNode);
                    }
                    listgroup.appendChild(li);


                }

            }
            else {
                targetElement.textContent = "No Server available";
            }
    });
}

function getServerOperations(obj){
    var list = obj.childNodes[1].textContent.split(":");
    var host = list[0];
    var port = list[1];
    $.ajax({
        type: "GET",
        url: "serverOperations.jsp",
        data: "host="+host+"&port="+port,
        success: function(html){
            $('#centre').html(html);
        }
    });
}


var curKeyType = null;
var curCursor = "0";
var curCount = 0;

function fetchKeyDetails(keyType,modifyingID){
    if(curKeyType != keyType){
        curCursor = "0";
        curCount = 0;
    }
    curKeyType = keyType;
/*    $.get("list/stringkeys.jsp",function(data,status){
        document.getElementById(id).innerHTML = data;
//        alert(data);
    });*/
    $.ajax({

        type: "POST",
        url: "/listKeys",
        data: "cursor="+curCursor+"&ignorableCount="+curCount+"&type="+keyType,
        success: function(keys){
            var jsonObject = jQuery.parseJSON(keys);
            curCursor = jsonObject.cursor;
            curCount = jsonObject.ignorableCount;

            var outputHtml = "<table width='100%' >";
            for(var i = 0; i < jsonObject.keyList.length;i++){
                outputHtml += "<tr><td class=\"keycolumn\" onclick=\"cellSelected(this)\" >"+jsonObject.keyList[i]+"</td></tr>";
            }
            outputHtml += "</table>";
            if(curCursor == "0" && curCount == 0){
                document.getElementsByClassName("forwardmarker").innerHTML = "";
            }
            document.getElementById(modifyingID).innerHTML = outputHtml;
        }
    });
}

var getStringHTML = function (keys) {
    return keys;
};

var getHashHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' >"
    $.each(jsonObject,function(key,value){
        table += "<tr><td>"+key+"</td><td>"+value+"</td></tr>";
    });
    table += "</table>";
    return table;
};
var getListHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' >"
    $.each(jsonObject,function(key,value){
        table += "<tr><td>"+value+"</td></tr>";
    });
    table += "</table>";
    return table;
};
var getSetHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' >"
    $.each(jsonObject,function(key,value){
        table += "<tr><td>"+value+"</td></tr>";
    });
    table += "</table>";
    return table;
};
var getZsetHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' ><tr><th>Score</th><th>Elements</th></tr>"
    $.each(jsonObject,function(key,value){
        table += "<tr><td>"+value.score+"</td><td>";
        for(var i = 0;i < value.element.length;i++){
            table += value.element[i]+"<br>";
        }
        table += "</td></tr>";
    });
    table += "</table>";
    return table;
};
function cellSelected(obj){
    var tableNode = obj.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode.parentNode;
//    alert(tableNode.rows[0].cells[1].innerHTML);
    var keyName = obj.innerHTML;
    putKeyValueInModifyingElement(keyName,curKeyType,tableNode.rows[0].cells[1]);
}

function putKeyValueInModifyingElement(key,curKeyType,modifyingElement){
    $.ajax({
        type: "GET",
        url: "/getValue",
        data: "key="+key+"&type="+curKeyType,
        success: function(keys){
            var returnHTML = "";
            if(curKeyType == "STRING"){
                returnHTML = getStringHTML(keys);
            }
            else if(curKeyType == "HASH"){
                returnHTML = getHashHTML(keys);
            }
            else if(curKeyType == "LIST"){
                returnHTML = getListHTML(keys);
            }
            else if(curKeyType == "SET"){
                returnHTML = getSetHTML(keys);
            }
            else if(curKeyType == "ZSET"){
                returnHTML = getZsetHTML(keys);
            }

            modifyingElement.innerHTML = returnHTML;
        }
    });
}

function putEditableKeyValueInModifyingElement(key,curKeyType,modifyingElement){
    $.ajax({
        type: "GET",
        url: "/getValue",
        data: "key="+key+"&type="+curKeyType,
        success: function(keys){
            var returnHTML = "";
            if(curKeyType == "STRING"){
                returnHTML = getEditableStringHTML(keys);
            }
            else if(curKeyType == "HASH"){
                returnHTML = getEditableHashHTML(keys);
            }
            else if(curKeyType == "LIST"){
                returnHTML = getEditableListHTML(keys);
            }
            else if(curKeyType == "SET"){
                returnHTML = getEditableSetHTML(keys);
            }
            else if(curKeyType == "ZSET"){
                returnHTML = getEditableZsetHTML(keys);
            }
            console.log(returnHTML);
            modifyingElement.innerHTML = "<form >"+returnHTML+"</form>";
        }
    });
}

var getEditableStringHTML = function (keys) {
    var returnHtml = "<input type=\"text\" value=\"" + keys +"\" />";
    return returnHtml;
};

var getEditableHashHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' >"
    $.each(jsonObject,function(key,value){
        table += "<tr><td><input type=\"text\" value=\""+key+"\" /></td><td><input type=\"text\" value=\""+value+"\" /></td></tr>";
    });
    table += "</table>";
    return table;
};
var getEditableListHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' >"
    $.each(jsonObject,function(key,value){
        table += "<tr><td><input type=\"text\" value=\""+value+"\" /></td></tr>";
    });
    table += "</table>";
    return table;
};
var getEditableSetHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' >"
    $.each(jsonObject,function(key,value){
        table += "<tr><td><input type=\"text\" value=\""+value+"\" /></td></tr>";
    });
    table += "</table>";
    return table;
};
var getEditableZsetHTML = function (keys) {
    var jsonObject = jQuery.parseJSON(keys);
    var table = "<table border='1px' ><tr><th>Score</th><th>Elements</th></tr>"
    $.each(jsonObject,function(key,value){
        table += "<tr><td><input type=\"text\" value=\""+value.score+"\" /></td><td>";
        for(var i = 0;i < value.element.length;i++){
            table +="<input type=\"text\" value=\""+ value.element[i]+"\" /><br>";
        }
        table += "</td></tr>";
    });
    table += "</table>";
    return table;
};


function actionInfo(modifyingID) {
    $.get("/info",function(data) {
        $.each(data, function (key, value) {
            var table = document.createElement("table");
            table.className = "table table-bordered";

            var caption = document.createElement("caption");
            caption.innerHTML = "<h3>"+key+"</h3>";
            table.appendChild(caption);

            $.each(value,function(key,value){
                var tr = document.createElement("tr");

                var tdkey = document.createElement("td");
                tdkey.className = "col-md-6";
                tdkey.innerHTML = key;

                var tdvalue = document.createElement("td");
                tdvalue.className = "col-md-6";
                tdvalue.innerHTML = value;

                tr.appendChild(tdkey);
                tr.appendChild(tdvalue);

                table.appendChild(tr);

            });
            document.getElementById(modifyingID).appendChild(table);
            document.getElementById(modifyingID).appendChild(document.createElement("br"));
        })
//        document.getElementById(modifyingID).innerHTML = data;
    },"json");
}