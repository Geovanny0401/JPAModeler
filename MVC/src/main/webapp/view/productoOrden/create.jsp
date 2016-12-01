<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-plus-square fa-fw"></i> <b> Create a new Producto Orden </b></h5>
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form role="form" action="${appPath}/productoOrden/new" method="POST">

                                    <div class="form-group">
                                        <label for="id">Id</label>
                                        <input class="form-control" type="number" name="id" path="id"  required="required" autofocus="autofocus"  />
                                    </div>

                                    <div class="form-group">
                                        <label for="cantidad">Cantidad</label>
                                        <input class="form-control" type="text" name="cantidad" path="cantidad"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="localizacion">Localizacion</label>
                                        <input class="form-control" type="text" name="localizacion" path="localizacion"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="tiempo">Tiempo</label>
                                        <input class="form-control" type="text" name="tiempo" path="tiempo"  />
                                    </div>
                                    <div class="form-group">
                                        <label for="promocion">Promocion</label>
                                        <input class="form-control" type="text" name="promocion" path="promocion"  />
                                    </div>
                                    <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Submit</button>
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
