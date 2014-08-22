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
                    outputList += "<li>" + host +":" + port + "</li>";
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