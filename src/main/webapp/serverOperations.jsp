<%
    String host = request.getParameter("host");
    String port = request.getParameter("port");
    Cookie hostCookie = new Cookie("host",host);
    Cookie portCookie = new Cookie("port",port);
    response.addCookie(hostCookie);
    response.addCookie(portCookie);

%>

<ul class="nav nav-tabs" role="tablist">
    <li class="dropdown">
        <a data-toggle="dropdown" class="dropdown-toggle" href="#">List Keys <b class="caret"></b></a>
        <ul class="dropdown-menu">
            <li><a data-toggle="tab" href="#initialInformation">All Keys</a></li>
            <li><a data-toggle="tab" href="#dropdownStrings" onclick="fetchKeyDetails('STRING','stringkeyspace')">Strings</a></li>
            <li><a data-toggle="tab" href="#dropdownhashes" onclick="fetchKeyDetails('HASH','hashkeyspace')">Hashes</a></li>
            <li><a data-toggle="tab" href="#dropdownlists" onclick="fetchKeyDetails('LIST','listkeyspace')">Lists</a></li>
            <li><a data-toggle="tab" href="#dropdownsets" onclick="fetchKeyDetails('SET','setkeyspace')">Sets</a></li>
            <li><a data-toggle="tab" href="#dropdownzsets" onclick="fetchKeyDetails('ZSET','zsetkeyspace')">Zsets</a></li>
        </ul>
    </li>

    <%--<li class="active"><a data-toggle="tab" href="#sectionA">List Keys</a></li>--%>
    <li><a data-toggle="tab" href="#tabSearch" onclick="actionSearch('tabSearch')" >Search</a></li>
    <li><a data-toggle="tab" href="#tabInsert" onclick="actionInsert('tabInsert')" >Insert</a></li>
    <li><a data-toggle="tab" href="#tabInfo" onclick="actionInfo('tabInfo')" >Info</a></li>
</ul>

<div class="tab-content">
    <div id="initialInformation" class="tab-pane fade in active" >
        Current Host : <%= host%> <br>
        Current Port : <%= port%>
    </div>
    <div id="tabSearch" class="tab-pane fade">

    </div>
    <div id="tabInsert" class="tab-pane fade">

    </div>
    <div id="tabInfo" class="tab-pane fade">
    </div>





    <div id="dropdownStrings" class="tab-pane fade">

        <jsp:include page="list/stringkeys.jsp" flush="false" />
    </div>
    <div id="dropdownhashes" class="tab-pane fade">

        <jsp:include page="list/hashkeys.jsp" flush="false" />
    </div>
    <div id="dropdownlists" class="tab-pane fade">

        <jsp:include page="list/listkeys.jsp" flush="false" />
    </div>
    <div id="dropdownsets" class="tab-pane fade">

        <jsp:include page="list/setkeys.jsp" flush="false" />
    </div>
    <div id="dropdownzsets" class="tab-pane fade">

        <jsp:include page="list/zsetkeys.jsp" flush="false" />
    </div>
</div>