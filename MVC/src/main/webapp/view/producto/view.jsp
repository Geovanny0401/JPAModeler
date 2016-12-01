<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-info-circle fa-fw"></i> <b> Producto info</b></h5> 
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="list-group">

                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">ID :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.id)}</div>
                                        </div>
                                    </a> 
                                        
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Nombre :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.nombre)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Descripcion :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.descripcion)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Lista Precio :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.listaPrecio)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Venta Precio :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.ventaPrecio)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Espec Precio :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.especPrecio)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Envio Gratis :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.envioGratis)}</div>
                                        </div>
                                    </a>             
                                    <a href="#" class="list-group-item">
                                        <div class="row">
                                            <div class="col-lg-4"><span class="small">Cantidad :</span></div>
                                            <div class="col-lg-8">${mvc.encoders.html(PRODUCTO.cantidad)}</div>
                                        </div>
                                    </a>             

                                </div>
                                <a href="${appPath}/producto/list" class="btn btn-default"><i class="fa fa-arrow-circle-left fa-fw"></i>Back</a>
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
