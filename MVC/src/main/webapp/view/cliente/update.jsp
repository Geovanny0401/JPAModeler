<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/webresources/common/header.jspf"%>

<div id="wrapper">
    <%@ include file="/webresources/common/navigationbar.jspf"%>
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h5><i class="fa fa-edit fa-fw"></i> <b> Update Cliente</b></h5> 
                    </div>
                    <div class="panel-body">
                        <div class="row">
                            <div class="col-lg-12">
                                <form role="form" action="${appPath}/cliente/update" method="POST">

                                    <div class="form-group">
                                        <label for="id">Id</label>
                                        <input class="form-control" type="number" name="id" readonly value="${CLIENTE.id}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="nombres">Nombres</label>
                                        <input class="form-control" type="text" name="nombres"  value="${CLIENTE.nombres}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="apellidos">Apellidos</label>
                                        <input class="form-control" type="text" name="apellidos"  value="${CLIENTE.apellidos}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="edad">Edad</label>
                                        <input class="form-control" type="text" name="edad"  value="${CLIENTE.edad}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="direccion">Direccion</label>
                                        <input class="form-control" type="text" name="direccion"  value="${CLIENTE.direccion}" />
                                    </div>     
                                    <div class="form-group">
                                        <label for="celular">Celular</label>
                                        <input class="form-control" type="text" name="celular"  value="${CLIENTE.celular}" />
                                    </div>     
                                    <input type="hidden" name="${mvc.csrf.name}" value="${mvc.csrf.token}"/>
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-check fa-fw"></i>Update</button>
                                    <a href="${appPath}/cliente/list" class="btn btn-default"><i class="fa fa-close fa-fw"></i>Cancel</a>
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
