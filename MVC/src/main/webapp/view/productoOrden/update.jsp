<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-edit fa-fw"></i> <b> Update Producto Orden</b></h5> 
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form role="form" action="${appPath}/productoOrden/update" method="POST">

                                    <div class="form-group">
                                        <label for="id">Id</label>
                                        <input class="form-control" type="number" name="id" readonly value="${PRODUCTO_ORDEN.id}" />
                                    </div>  

                                    <div class="form-group">
                                        <label for="cantidad">Cantidad</label>
                                        <input class="form-control" type="text" name="cantidad"  value="${PRODUCTO_ORDEN.cantidad}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="localizacion">Localizacion</label>
                                        <input class="form-control" type="text" name="localizacion"  value="${PRODUCTO_ORDEN.localizacion}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="tiempo">Tiempo</label>
                                        <input class="form-control" type="text" name="tiempo"  value="${PRODUCTO_ORDEN.tiempo}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="promocion">Promocion</label>
                                        <input class="form-control" type="text" name="promocion"  value="${PRODUCTO_ORDEN.promocion}" />
                                    </div>     
                                    <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Update</button>
                                    <a href="${appPath}/productoOrden/list" class="btn btn-default"><i class="fa fa-close fa-fw"></i>Cancel</a>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<%--end content--%>
<%@ include file="/webresources/common/footer.jspf"%>
