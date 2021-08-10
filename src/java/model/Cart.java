/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Vuong Van Truong
 */
public class Cart {
    private int cartId;
    private User user;
    private Product product;
    private int quantity;

    public Cart() {
    }

    public Cart(int cartId, User user, Product product, int quantity) {
        this.cartId = cartId;
        this.user = user;
        this.product = product;
        this.quantity = quantity;
    }

    public int getCartId() {
        return cartId;
    }

    public void setCartId(int cartId) {
        this.cartId = cartId;
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

    @Override
    public String toString() {
        return "Cart{" + "cartId=" + cartId + ", user=" + user + ", product=" + product + ", quantity=" + quantity + '}';
    }
    
}
