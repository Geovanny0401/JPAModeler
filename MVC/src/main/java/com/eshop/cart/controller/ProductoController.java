/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller;

import com.eshop.cart.controller.util.ErrorBean;
import com.eshop.cart.controller.util.ValidationUtil;
import com.eshop.cart.model.Producto;
import com.eshop.cart.service.ProductoFacade;
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
@Path("producto")
public class ProductoController {

    @Inject
    private javax.mvc.Models model;
    @Inject
    private ProductoFacade facade;
    @Inject
    private javax.mvc.binding.BindingResult validationResult;
    @Inject
    private ErrorBean error;

    @GET
    @Path("new")
    @javax.mvc.annotation.Controller
    public String emptyProducto() {
        return "producto/create.jsp";
    }

    @POST
    @Path("new")
    @javax.mvc.annotation.Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @javax.mvc.annotation.CsrfValid
    public String createProducto(@Valid
            @BeanParam Producto producto) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.create(producto);
        return "redirect:producto/list";
    }

    @GET
    @Path("update/{id}")
    @javax.mvc.annotation.Controller
    public String editProducto(@PathParam("id") Long id) {
        model.put("PRODUCTO", facade.find(id));
        return "producto/update.jsp";
    }

    @POST
    @Path("update")
    @javax.mvc.annotation.Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @javax.mvc.annotation.CsrfValid
    public String updateProducto(@Valid
            @BeanParam Producto producto) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.edit(producto);
        return "redirect:producto/list";
    }

    @GET
    @Path("remove/{id}")
    @javax.mvc.annotation.Controller
    public String removeProducto(@PathParam("id") Long id) {
        facade.remove(facade.find(id));
        return "redirect:producto/list";
    }

    @GET
    @Path("{id}")
    @javax.mvc.annotation.Controller
    public String findProducto(@PathParam("id") Long id) {
        model.put("PRODUCTO", facade.find(id));
        return "producto/view.jsp";
    }

    @GET
    @Path("list")
    @javax.mvc.annotation.Controller
    public String findAllProducto() {
        model.put("PRODUCTO_LIST", facade.findAll());
        return "producto/list.jsp";
    }
    
}
