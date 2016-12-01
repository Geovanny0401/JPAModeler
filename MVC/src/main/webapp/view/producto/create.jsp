<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-plus-square fa-fw"></i> <b> Create a new Producto </b></h5>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form role="form" action="${appPath}/producto/new" method="POST">
                                    
                                    <div class="form-group">
                                        <label for="id">Id</label>
                                        <input class="form-control" type="number" name="id" path="id"  required="required" autofocus="autofocus"  />
                                    </div>
                                    
                                    <div class="form-group">
                                        <label for="nombre">Nombre</label>
                                        <input class="form-control" type="text" name="nombre" path="nombre"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="descripcion">Descripcion</label>
                                        <input class="form-control" type="text" name="descripcion" path="descripcion"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="listaPrecio">Lista Precio</label>
                                        <input class="form-control" type="text" name="listaPrecio" path="listaPrecio"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="ventaPrecio">Venta Precio</label>
                                        <input class="form-control" type="text" name="ventaPrecio" path="ventaPrecio"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="especPrecio">Espec Precio</label>
                                        <input class="form-control" type="text" name="especPrecio" path="especPrecio"  />
                                    </div>
                                     <div class="checkbox form-group">
                                    <label for="envioGratis">
                                        <input type="checkbox" name="envioGratis" />
                                        Envio Gratis</label>
                                </div>
                                   
                                    <div class="form-group">
                                        <label for="cantidad">Cantidad</label>
                                        <input class="form-control" type="text" name="cantidad" path="cantidad"  />
                                    </div>
                                    <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Submit</button>
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
