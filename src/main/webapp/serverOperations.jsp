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
            <li><a data-toggle="tab" href="list/listall.jsp"> ">All Keys</a></li>
            <li><a data-toggle="tab" href="list/strings.jsp">Strings</a></li>
            <li><a data-toggle="tab" href="#dropdown2">Hashes</a></li>
            <li><a data-toggle="tab" href="#dropdown2">Lists</a></li>
            <li><a data-toggle="tab" href="#dropdown2">Sets</a></li>
            <li><a data-toggle="tab" href="#dropdown2">Sorted Set</a></li>
            <li><a data-toggle="tab" href="#dropdown2">HyperLogLogs</a></li>
        </ul>
    </li>

    <%--<li class="active"><a data-toggle="tab" href="#sectionA">List Keys</a></li>--%>
    <li><a data-toggle="tab" href="#sectionB">Search</a></li>
    <li><a data-toggle="tab" href="#sectionC">Insert</a></li>
    <li><a data-toggle="tab" href="#sectionC">Update</a></li>
    <li><a data-toggle="tab" href="#sectionC">Delete</a></li>
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
        <h3>Section C</h3>
        <p>Vestibulum nec erat eu nulla rhoncus fringilla ut non neque. Vivamus nibh urna, ornare id gravida ut, mollis a magna. Aliquam porttitor condimentum nisi, eu viverra ipsum porta ut. Nam hendrerit bibendum turpis, sed molestie mi fermentum id. Aenean volutpat velit sem. Sed consequat ante in rutrum convallis. Nunc facilisis leo at faucibus adipiscing.</p>
    </div>
</div>