<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-edit fa-fw"></i> <b> Update Producto</b></h5> 
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form role="form" action="${appPath}/producto/update" method="POST">
                                   
                                    <div class="form-group">
                                        <label for="id">ID</label>
                                        <input class="form-control" type="text" name="id"  value="${PRODUCTO.id}" />
                                    </div>     
                                    
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input class="form-control" type="text" name="nombre"  value="${PRODUCTO.nombre}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="descripcion">Descripcion</label>
                                        <input class="form-control" type="text" name="descripcion"  value="${PRODUCTO.descripcion}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="listaPrecio">Lista Precio</label>
                                        <input class="form-control" type="text" name="listaPrecio"  value="${PRODUCTO.listaPrecio}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="ventaPrecio">Venta Precio</label>
                                        <input class="form-control" type="text" name="ventaPrecio"  value="${PRODUCTO.ventaPrecio}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="especPrecio">Espec Precio</label>
                                        <input class="form-control" type="text" name="especPrecio"  value="${PRODUCTO.especPrecio}" />
                                    </div> 
                                     <div class="checkbox form-group">
                                    <label for="envioGratis">
                                        <input type="checkbox" name="envioGratis" selected="${PRODUCTO.envioGratis}"/>
                                        Envio Gratis</label>
                                </div>
                                   
                                        
                                    <div class="form-group">
                                        <label for="cantidad">Cantidad</label>
                                        <input class="form-control" type="text" name="cantidad"  value="${PRODUCTO.cantidad}" />
                                    </div>     
                                    <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Update</button>
                                    <a href="${appPath}/producto/list" class="btn btn-default"><i class="fa fa-close fa-fw"></i>Cancel</a>
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
