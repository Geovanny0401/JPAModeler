package com.eshop.cart.service;

import javax.ejb.Stateless;
import javax.inject.Named;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import com.eshop.cart.model.ProductoOrden;

@Stateless
@Named("productoOrden")
public class ProductoOrdenFacade extends AbstractFacade<ProductoOrden, Long> {

    @PersistenceContext(unitName = "DEFAULT_PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ProductoOrdenFacade() {
        super(ProductoOrden.class);
    }

}
