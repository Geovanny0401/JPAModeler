/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.eshop.cart.controller.util;

import java.util.Set;
import javax.ws.rs.core.Application;
import java.util.HashMap;
import java.util.Map;
import javax.mvc.engine.ViewEngine;
import javax.mvc.security.Csrf;

/**
 *
 * @author gmendoza
 */
@javax.ws.rs.ApplicationPath("resources")
public class ApplicationConfig extends Application {

    @Override
    public Set<Class<?>> getClasses() {
        Set<Class<?>> resources = new java.util.HashSet<>();
        addRestResourceClasses(resources);
        return resources;
    }


    @Override
    public Map<String, Object> getProperties() {
        Map<String, Object> props = new HashMap<>();
        props.put(ViewEngine.VIEW_FOLDER, "/view");
        props.put(Csrf.CSRF_PROTECTION, Csrf.CsrfOptions.EXPLICIT);
        return props;
    }

    private void addRestResourceClasses(Set<Class<?>> resources) {
        resources.add(com.eshop.cart.controller.ClienteController.class);
        resources.add(com.eshop.cart.controller.ProductoController.class);
        resources.add(com.eshop.cart.controller.ProductoOrdenController.class);
        resources.add(com.eshop.cart.controller.util.CustomParamConverterProvider.class);
    }
    
}
