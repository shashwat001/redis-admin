<%--
  Created by IntelliJ IDEA.
  User: shashwat001
  Date: 2/9/14
  Time: 2:03 PM
  To change this template use File | Settings | File Templates.
--%>
<div class="container-fluid" >
    <div class="row" >
        <div class="col-md-4">
            <div class="insertButtons" >
                <div class="btn-group-vertical">
                    <button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href='#insertString'" >String</button>
                    <button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href='#insertHash'" >Hash</button>
                    <button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href='#insertList'" >List</button>
                    <button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href='#insertSet'" >Set</button>
                    <button type="button" class="btn btn-default btn-lg btn-block" onclick="location.href='#insertZset'" >Zset</button>
                </div>
            </div>
        </div>

        <div class="col-md-8">
            <div class="target">

                <%--Div for inserting string begins--%>
                <div id="insertString">
                    <form class="form-horizontal" role="form" name="insertStringForm" action="" >
                        <div class="form-group">
                            <label for="inputStringKey" class="col-sm-3 control-label">Key</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="inputStringKey" name="inputStringKey" placeholder="Key">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputStringValue" class="col-sm-3 control-label">Value</label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" id="inputStringValue" name="inputStringValue" placeholder="Value">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-offset-3 col-sm-2">
                                <button type="button" class="btn btn-default" onclick="insertStringSubmit(this)" >Add</button>
                            </div>
                            <div class="col-sm-7">
                                <div>
                                </div>
                            </div>
                        </div>
                    </form>

                    <%--Div for inserting string ends--%>
                </div>

                    <%--Div for inserting hash begins--%>
                <div id="insertHash">
                    <form class="form-horizontal" role="form" name="insertHashForm" action="" >
                        <div class="form-group">
                            <label for="inputHashKey" class="col-sm-2">Key</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="inputHashKey" name="inputHashKey" placeholder="Key">
                            </div>
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="addField(this)" >Add Field</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="insertHashSubmit()" >Add</button>
                            </div>
                            <div class="col-sm-9">
                                <div>
                                </div>
                            </div>
                        </div>
                    </form>





                    <%--Div for inserting hash ends--%>
                </div>




                <%--Div for inserting list begins--%>
                <div id="insertList">
                    <form class="form-horizontal" role="form" name="insertListForm" action="" >
                        <div class="form-group">
                            <label for="inputListKey" class="col-sm-2">Key</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="inputListKey" name="inputListKey" placeholder="Key">
                            </div>
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="addListValueBox(this)" >Add Value</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="insertListSubmit()" >Add</button>
                            </div>
                            <div class="col-sm-9">
                                <div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <%--Div for inserting list ends--%>
                </div>


                <%--Div for inserting set begins--%>
                <div id="insertSet">
                    <form class="form-horizontal" role="form" name="insertSetForm" action="" >
                        <div class="form-group">
                            <label for="inputSetKey" class="col-sm-2">Key</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="inputSetKey" name="inputSetKey" placeholder="Key">
                            </div>
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="addSetValueBox(this)" >Add Value</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="insertSetSubmit()" >Add</button>
                            </div>
                            <div class="col-sm-9">
                                <div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <%--Div for inserting set ends--%>
                </div>



                <%--Div for inserting zset begins--%>
                <div id="insertZset">
                    <form class="form-horizontal" role="form" name="insertZsetForm" action="" >
                        <div class="form-group">
                            <label for="inputZsetKey" class="col-sm-2">Key</label>
                            <div class="col-sm-7">
                                <input type="text" class="form-control" id="inputZsetKey" name="inputZsetKey" placeholder="Key">
                            </div>
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="addZsetValueBox(this)" >Add Value</button>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-sm-3">
                                <button type="button" class="btn btn-default" onclick="insertZsetSubmit()" >Add</button>
                            </div>
                            <div class="col-sm-9">
                                <div>
                                </div>
                            </div>
                        </div>
                    </form>
                    <%--Div for inserting zset ends--%>
                </div>


            </div>
        </div>
    </div>

</div>
