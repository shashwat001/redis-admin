<%--
  Created by IntelliJ IDEA.
  User: shashwat001
  Date: 3/9/14
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<form name="searchform" class="form-horizontal" role="form">
    <div class="form-group">
        <label for="keyname" class="col-sm-2 control-label">Key</label>
        <div class="col-sm-10">
            <input type="text" class="form-control" name="keyname" id="keyname" placeholder="Email">
        </div>
    </div>
    <div class="form-group" style="height: auto">
        <div class="col-sm-offset-2 col-sm-4">
            <input type="radio" name="searchoption" value="exact">&nbsp; &nbsp; Exact Search
        </div>
        <div class="col-sm-6">
            <input type="radio" name="searchoption" value="regex">&nbsp;&nbsp;Regex Search
        </div>

    </div>
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
            <button type="button" class="btn btn-default" onclick="searchFormSubmit()">Search</button>
        </div>
    </div>
</form>
<div class="container" >
    <div class="row" >
        <div id="searchkeysbox" class="col-lg-3" >

        </div>
        <div id="searchkeysvalue" class="col-lg-9" >

        </div>
    </div>
</div>
