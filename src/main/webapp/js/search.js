function actionSearch(modifyingID) {
    $.get("search.jsp",function(data) {
        document.getElementById(modifyingID).innerHTML = data;
    });
}