$(function(){
    $('#mySlideContent').css('display','none');
    $('#addserverlink').click(function(){
        $('.addServerContent').slideToggle('slow');
        $(this).toggleClass('slideSign');
        return false;
    });
});

function addserver(){
    var formbox =  document.forms["addServerContent"];
    var host = formbox["hostname"].value;
    var port = formbox["port"].value;
    formbox["hostname"].value = "";
    formbox["port"].value = "";
    //console.log("reached here");
    $.ajax({
        type: "POST",
        url: "/addServer",
        data: "host="+host+"&port="+port,
        success: function(html){
            if(html=='true')    {
                $("#addserverdisplay").html("Server added successfully");
            }
            else    {
                $("#addserverdisplay").html("Server could not be added");
            }
            $("#addserverdisplay").css('display', 'block');
        }
    });
}

function displayservers() {
    $.ajax({
        type: "POST",
        url: "/getServerList",
        success: function(html){
            if(html!='false')    {
                var jsonObject = jQuery.parseJSON(html);
                var outputList = "";
                outputList += "<ul>";
                for(var i = 0; i < jsonObject.length;i++){
                    var host = jsonObject[i].host;
                    var port = jsonObject[i].port;
                    outputList += "<li><a href=\"#\" onclick='getServerOperations(this)'>" + host +":" + port + "</a></li>";
                }
                outputList += "</ul>";
                $("#displayserverlist").html(outputList);
            }
            else    {
                $("#displayserverlist").html("Error in gettling list");
            }
            $("#displayserverlist").css('display', 'block');
        }
    });
}

function getServerOperations(obj){
    var list = obj.innerHTML.split(":");
    var host = list[0];
    var port = list[1];
    $.ajax({
        type: "GET",
        url: "serverOperations.jsp",
        data: "host="+host+"&port="+port,
        success: function(html){
            $('.centre').html(html);
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
    $.ajax({
        type: "GET",
        url: "/getValue",
        data: "key="+keyName+"&type="+curKeyType,
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

            tableNode.rows[0].cells[1].innerHTML = returnHTML;
        }
    });
}