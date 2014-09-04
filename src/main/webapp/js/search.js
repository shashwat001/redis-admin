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
        alert(data);
        $.each(JsonObject,function(key,value){
            var tdkey = document.createElement("td");
            tdkey.innerHTML = value.key;
            tdkey.style.width="50%";
            var tdtype = document.createElement("td");
            tdtype.style.width="50%";
            tdtype.innerHTML = value.type.toUpperCase();

            var tr = document.createElement("tr");
            tr.appendChild(tdkey);
            tr.appendChild(tdtype);

            tr.setAttribute("onclick","getValueOfSearchKey(this)");

            table.appendChild(tr);

        });

        document.getElementById("searchkeysbox").appendChild(table);

    });
}

function getValueOfSearchKey(obj) {
    var searchkey = obj.childNodes[0].innerHTML;
    var searchkeytype = obj.childNodes[1].innerHTML;

    putKeyValueInModifyingElement(searchkey,searchkeytype,document.getElementById("searchkeysvalue"));
}