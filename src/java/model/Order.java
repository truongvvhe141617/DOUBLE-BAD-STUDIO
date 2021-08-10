/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.Date;

/**
 *
 * @author Vuong Van Truong
 */
public class Order {
    private int orderId;
    private User user;
    private Product product;
    private int quantity;
    private Date orderDate;
    private String orderDescription;

    public Order() {
    }

    public Order(int orderId, User user, Product product, int quantity, Date orderDate, String orderDescription) {
        this.orderId = orderId;
        this.user = user;
        this.product = product;
        this.quantity = quantity;
        this.orderDate = orderDate;
        this.orderDescription = orderDescription;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getOrderDescription() {
        return orderDescription;
    }

    public void setOrderDescription(String orderDescription) {
        this.orderDescription = orderDescription;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", user=" + user + ", product=" + product + ", quantity=" + quantity + ", orderDate=" + orderDate + ", orderDescription=" + orderDescription + '}';
    }
    
}
