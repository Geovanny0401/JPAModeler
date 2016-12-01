/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller;

import com.eshop.cart.controller.util.ErrorBean;
import com.eshop.cart.controller.util.ValidationUtil;
import com.eshop.cart.model.ProductoOrden;
import com.eshop.cart.service.ProductoOrdenFacade;
import javax.inject.Inject;
import javax.validation.Valid;
import javax.validation.executable.ExecutableType;
import javax.validation.executable.ValidateOnExecution;
import javax.ws.rs.BeanParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;

/**
 *
 * @author gmendoza
 */
@Path("productoOrden")
public class ProductoOrdenController {

    @Inject
    private javax.mvc.Models model;
    @Inject
    private ProductoOrdenFacade facade;
    @Inject
    private javax.mvc.binding.BindingResult validationResult;
    @Inject
    private ErrorBean error;

    @GET
    @Path("new")
    @javax.mvc.annotation.Controller
    public String emptyProductoOrden() {
        return "productoOrden/create.jsp";
    }

    @POST
    @Path("new")
    @javax.mvc.annotation.Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @javax.mvc.annotation.CsrfValid
    public String createProductoOrden(@Valid
            @BeanParam ProductoOrden productoOrden) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.create(productoOrden);
        return "redirect:productoOrden/list";
    }

    @GET
    @Path("update/{id}")
    @javax.mvc.annotation.Controller
    public String editProductoOrden(@PathParam("id") Long id) {
        model.put("PRODUCTOORDEN", facade.find(id));
        return "productoOrden/update.jsp";
    }

    @POST
    @Path("update")
    @javax.mvc.annotation.Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @javax.mvc.annotation.CsrfValid
    public String updateProductoOrden(@Valid
            @BeanParam ProductoOrden productoOrden) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.edit(productoOrden);
        return "redirect:productoOrden/list";
    }

    @GET
    @Path("remove/{id}")
    @javax.mvc.annotation.Controller
    public String removeProductoOrden(@PathParam("id") Long id) {
        facade.remove(facade.find(id));
        return "redirect:productoOrden/list";
    }

    @GET
    @Path("{id}")
    @javax.mvc.annotation.Controller
    public String findProductoOrden(@PathParam("id") Long id) {
        model.put("PRODUCTOORDEN", facade.find(id));
        return "productoOrden/view.jsp";
    }

    @GET
    @Path("list")
    @javax.mvc.annotation.Controller
    public String findAllProductoOrden() {
        model.put("PRODUCTOORDEN_LIST", facade.findAll());
        return "productoOrden/list.jsp";
    }
    
}
