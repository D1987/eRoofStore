package com.eroofstore.dao.impl;

import com.eroofstore.dao.CustomerOrderDao;
import com.eroofstore.model.CustomerOrder;
import com.eroofstore.service.CartService;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository
@Transactional
public class CustomerOrderDaoImpl implements CustomerOrderDao{

    @Autowired
    private SessionFactory sessionFactory;

    public void addCustomerOrder(CustomerOrder customerOrder) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(customerOrder);
        session.flush();
    }

    public double getCustomerOrderGrandTotal(int cartId) {
        return 0;
    }
}