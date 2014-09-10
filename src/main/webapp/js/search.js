function actionSearch(modifyingID) {
    $.get("search.jsp",function(data) {
        document.getElementById(modifyingID).innerHTML = data;
    });
}

function searchFormSubmit() {
    var searchform = document.forms["searchform"];
    var searchkey = searchform.elements["keyname"].value;
    var searchoption = searchform.elements["searchoption"].value;

    $.get("/search/"+searchoption , {key : searchkey} , function(data){
        var JsonObject = jQuery.parseJSON(data);

        var table = document.createElement("table");
        table.className = "table-bordered";
        $.each(JsonObject,function(key,value){
            var tdkey = document.createElement("td");
            tdkey.innerHTML = value.key;
//            tdkey.style.width="50%";

            var tdtype = document.createElement("td");
//            tdtype.style.width="50%";
            tdtype.innerHTML = value.type.toUpperCase();

            var deletebutton = document.createElement("button");
            //deletebutton.setAttribute("onclick","deleteKey('"+value.key+"')");
            deletebutton.onclick = function(e){e.stopPropagation();
                deleteKey(value.key);
            }
            deletebutton.innerHTML="Delete";

            var updatebutton = document.createElement("button");
            updatebutton.onclick = function(e) {
                e.stopPropagation();
                updateKey(value.key,value.type);
            }
            updatebutton.innerHTML="Update";

            var tdDeleteButton = document.createElement("td");
            tdDeleteButton.appendChild(deletebutton);

            var tdUpdateButton = document.createElement("td");
            tdUpdateButton.appendChild(updatebutton);

            var tr = document.createElement("tr");
            tr.appendChild(tdkey);
            tr.appendChild(tdtype);
            tr.appendChild(tdDeleteButton);
            tr.appendChild(tdUpdateButton);

            tr.setAttribute("onclick","getValueOfSearchKey(this)");

            table.appendChild(tr);

        });

        var targetElement = document.getElementById("searchkeysbox");
        removeAllChildren(targetElement);
        removeAllChildren(document.getElementById("searchkeysvalue"));

        targetElement.appendChild(table);
    });
}

function removeAllChildren(node){
    while (node.firstChild) {
        node.removeChild(node.firstChild);
    }
}

function getValueOfSearchKey(obj) {
    var searchkey = obj.childNodes[0].innerHTML;
    var searchkeytype = obj.childNodes[1].innerHTML;


    var searchbox = document.getElementById("searchkeysvalue");

    putKeyValueInModifyingElement(searchkey,searchkeytype,searchbox);
}

function deleteKey(keyname) {
    $.get("/delete", {key : keyname} , function(data){

    });
}

function updateKey(keyname,keyType) {
    var searchbox = document.getElementById("searchkeysvalue");
    putEditableKeyValueInModifyingElement(keyname,keyType.toUpperCase(),searchbox);
}

