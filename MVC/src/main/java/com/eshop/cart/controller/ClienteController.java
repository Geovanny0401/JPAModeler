/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller;

import com.eshop.cart.controller.util.ErrorBean;
import com.eshop.cart.controller.util.ValidationUtil;
import com.eshop.cart.model.Cliente;
import com.eshop.cart.service.ClienteFacade;
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
@Path("cliente")
public class ClienteController {

    @Inject
    private javax.mvc.Models model;
    @Inject
    private ClienteFacade facade;
    @Inject
    private javax.mvc.binding.BindingResult validationResult;
    @Inject
    private ErrorBean error;

    @GET
    @Path("new")
    @javax.mvc.annotation.Controller
    public String emptyCliente() {
        return "cliente/create.jsp";
    }

    @POST
    @Path("new")
    @javax.mvc.annotation.Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @javax.mvc.annotation.CsrfValid
    public String createCliente(@Valid
            @BeanParam Cliente cliente) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.create(cliente);
        return "redirect:cliente/list";
    }

    @GET
    @Path("update/{id}")
    @javax.mvc.annotation.Controller
    public String editCliente(@PathParam("id") Long id) {
        model.put("CLIENTE", facade.find(id));
        return "cliente/update.jsp";
    }

    @POST
    @Path("update")
    @javax.mvc.annotation.Controller
    @ValidateOnExecution(type = ExecutableType.NONE)
    @javax.mvc.annotation.CsrfValid
    public String updateCliente(@Valid
            @BeanParam Cliente cliente) {
        if (validationResult.isFailed()) {
            return ValidationUtil.getResponse(validationResult, error);
        }
        facade.edit(cliente);
        return "redirect:cliente/list";
    }

    @GET
    @Path("remove/{id}")
    @javax.mvc.annotation.Controller
    public String removeCliente(@PathParam("id") Long id) {
        facade.remove(facade.find(id));
        return "redirect:cliente/list";
    }

    @GET
    @Path("{id}")
    @javax.mvc.annotation.Controller
    public String findCliente(@PathParam("id") Long id) {
        model.put("CLIENTE", facade.find(id));
        return "cliente/view.jsp";
    }

    @GET
    @Path("list")
    @javax.mvc.annotation.Controller
    public String findAllCliente() {
        model.put("CLIENTE_LIST", facade.findAll());
        return "cliente/list.jsp";
    }
    
}
