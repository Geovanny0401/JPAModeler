<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-info-circle fa-fw"></i> <b> Cliente info</b></h5> 
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="list-group">

                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Id :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(CLIENTE.id)}</div>
                                        </div>
                                    </a>     
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Nombres :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(CLIENTE.nombres)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Apellidos :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(CLIENTE.apellidos)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Edad :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(CLIENTE.edad)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Direccion :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(CLIENTE.direccion)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Celular :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(CLIENTE.celular)}</div>
                                        </div>
                                    </a>             

                                </div>
                                <a href="${appPath}/cliente/list" class="btn btn-default"><i class="fa fa-arrow-circle-left fa-fw"></i>Back</a>
                            </div>
                            <!-- /.col-lg-6 (nested) -->
                        </div>
                        <!-- /.row (nested) -->
                    </div>
                    <!-- /.panel-body -->
                </div>
                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
    </div>
    <!-- /#page-wrapper -->
</div>

<%--end content--%>
<%@ include file="/webresources/common/footer.jspf"%>
