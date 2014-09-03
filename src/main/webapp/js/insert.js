/**
 * Created by shashwat001 on 1/9/14.
 */

function actionInsert(modifyingID) {
    $.get("insert.jsp",function(data) {
        document.getElementById(modifyingID).innerHTML = data;
    });
}

function insertStringSubmit(obj) {
    var forms = document.forms["insertStringForm"];
    var key = forms.elements["inputStringKey"].value;
    var value = forms.elements["inputStringValue"].value;

    $.get("/addValue",
        { type :"STRING" , key : key, value : value },
        function(data) {
            var returndiv = obj.parentNode.parentNode.childNodes[3].childNodes[1];
            if(data == 0){
                returndiv.className = "alert alert-success";
                returndiv.innerHTML = "<strong>Success!</strong> Key added successfully";
            }
            else{
                returndiv.className = "alert alert-danger";
                returndiv.innerHTML = "<strong>Error!</strong> Key already exist";
            }
    });
}

function addField(obj){
    if(obj.fieldcount == null){
        obj.fieldcount = 0;
    }

    var fieldcount = obj.fieldcount;

    var inputFieldElement = document.createElement('input');
    inputFieldElement.type = "text";
    inputFieldElement.className = "form-control";
    inputFieldElement.name = "inputField"+fieldcount;
    inputFieldElement.setAttribute("placeholder","Field"+fieldcount);

    var inputFieldDiv = document.createElement('div');
    inputFieldDiv.className = "col-sm-6";
    inputFieldDiv.appendChild(inputFieldElement);

    var inputValueElement = document.createElement('input');
    inputValueElement.type = "text";
    inputValueElement.className = "form-control";
    inputValueElement.name = "inputFieldValue"+fieldcount;
    inputValueElement.setAttribute("placeholder","Value"+fieldcount);

    var inputValueDiv = document.createElement('div');
    inputValueDiv.className = "col-sm-6";
    inputValueDiv.appendChild(inputValueElement);

    var new_form_group = document.createElement('div');
    new_form_group.className = "form-group";
    new_form_group.appendChild(inputFieldDiv);
    new_form_group.appendChild(inputValueDiv);

    var forms = document.forms["insertHashForm"];
    var length = forms.childNodes.length;
    var lastChild = forms.childNodes[length-2];

    forms.insertBefore(new_form_group,lastChild.previousSibling);

    obj.fieldcount = fieldcount + 1;
}


function insertHashSubmit(){
    var forms = document.forms["insertHashForm"];

    var key = forms.elements["inputHashKey"].value;

    var requestString = "type=HASH&key="+key;

    for(var i = 0;forms.elements["inputField"+i] != null;i++){
        requestString += "&inputField"+i+"="+forms.elements["inputField"+i].value+"&inputFieldValue"+i+"="+forms.elements["inputFieldValue"+i].value;
    }
    requestString += "&count="+i;

    $.ajax({
        type: "GET",
        url: "/addValue",
        data: requestString,
        success: function(keys){

        }
    });
}

function addListValueBox(obj){
    if(obj.fieldcount == null){
        obj.fieldcount = 0;
    }

    var fieldcount = obj.fieldcount;

    var inputValueElement = document.createElement('input');
    inputValueElement.type = "text";
    inputValueElement.className = "form-control";
    inputValueElement.name = "inputValue"+fieldcount;
    inputValueElement.setAttribute("placeholder","Value"+fieldcount);

    var inputValueDiv = document.createElement('div');
    inputValueDiv.className = "col-sm-6";
    inputValueDiv.appendChild(inputValueElement);

    var new_form_group = document.createElement('div');
    new_form_group.className = "form-group";
    new_form_group.appendChild(inputValueDiv);

    var forms = document.forms["insertListForm"];
    var length = forms.childNodes.length;
    var lastChild = forms.childNodes[length-2];

    forms.insertBefore(new_form_group,lastChild.previousSibling);

    obj.fieldcount = fieldcount + 1;
}

function insertListSubmit(){
    var forms = document.forms["insertListForm"];

    var key = forms.elements["inputListKey"].value;

    var requestString = "type=LIST&key="+key;

    for(var i = 0;forms.elements["inputValue"+i] != null;i++){
        requestString += "&inputValue"+i+"="+forms.elements["inputValue"+i].value;
    }
    requestString += "&count="+i;

    $.ajax({
        type: "GET",
        url: "/addValue",
        data: requestString,
        success: function(keys){

        }
    });
}


function addSetValueBox(obj){
    if(obj.fieldcount == null){
        obj.fieldcount = 0;
    }

    var fieldcount = obj.fieldcount;

    var inputValueElement = document.createElement('input');
    inputValueElement.type = "text";
    inputValueElement.className = "form-control";
    inputValueElement.name = "inputValue"+fieldcount;
    inputValueElement.setAttribute("placeholder","Value"+fieldcount);

    var inputValueDiv = document.createElement('div');
    inputValueDiv.className = "col-sm-6";
    inputValueDiv.appendChild(inputValueElement);

    var new_form_group = document.createElement('div');
    new_form_group.className = "form-group";
    new_form_group.appendChild(inputValueDiv);

    var forms = document.forms["insertSetForm"];
    var length = forms.childNodes.length;
    var lastChild = forms.childNodes[length-2];

    forms.insertBefore(new_form_group,lastChild.previousSibling);

    obj.fieldcount = fieldcount + 1;
}

function insertListSubmit(){
    var forms = document.forms["insertSetForm"];

    var key = forms.elements["inputSetKey"].value;

    var requestString = "type=SET&key="+key;

    for(var i = 0;forms.elements["inputValue"+i] != null;i++){
        requestString += "&inputValue"+i+"="+forms.elements["inputValue"+i].value;
    }
    requestString += "&count="+i;

    $.ajax({
        type: "GET",
        url: "/addValue",
        data: requestString,
        success: function(keys){

        }
    });
}



function addZsetValueBox(obj){
    if(obj.fieldcount == null){
        obj.fieldcount = 0;
    }

    var fieldcount = obj.fieldcount;

    var inputFieldElement = document.createElement('input');
    inputFieldElement.type = "text";
    inputFieldElement.className = "form-control";
    inputFieldElement.name = "inputScore"+fieldcount;
    inputFieldElement.setAttribute("placeholder","Score"+fieldcount);

    var inputFieldDiv = document.createElement('div');
    inputFieldDiv.className = "col-sm-6";
    inputFieldDiv.appendChild(inputFieldElement);

    var inputValueElement = document.createElement('input');
    inputValueElement.type = "text";
    inputValueElement.className = "form-control";
    inputValueElement.name = "inputScoreValue"+fieldcount;
    inputValueElement.setAttribute("placeholder","Value"+fieldcount);

    var inputValueDiv = document.createElement('div');
    inputValueDiv.className = "col-sm-6";
    inputValueDiv.appendChild(inputValueElement);

    var new_form_group = document.createElement('div');
    new_form_group.className = "form-group";
    new_form_group.appendChild(inputFieldDiv);
    new_form_group.appendChild(inputValueDiv);

    var forms = document.forms["insertZsetForm"];
    var length = forms.childNodes.length;
    var lastChild = forms.childNodes[length-2];

    forms.insertBefore(new_form_group,lastChild.previousSibling);

    obj.fieldcount = fieldcount + 1;
}


function insertZsetSubmit(){
    var forms = document.forms["insertZsetForm"];

    var key = forms.elements["inputZsetKey"].value;

    var requestString = "type=ZSET&key="+key;

    for(var i = 0;forms.elements["inputScore"+i] != null;i++){
        requestString += "&inputScore"+i+"="+forms.elements["inputScore"+i].value+"&inputScoreValue"+i+"="+forms.elements["inputScoreValue"+i].value;
    }
    requestString += "&count="+i;

    $.ajax({
        type: "GET",
        url: "/addValue",
        data: requestString,
        success: function(keys){

        }
    });
}