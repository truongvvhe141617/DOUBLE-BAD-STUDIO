/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Categories {
    
    private int categoriesId;
    private String categoriesName;

    public Categories() {
    }

    public Categories(int categoriesId, String categoriesName) {
        this.categoriesId = categoriesId;
        this.categoriesName = categoriesName;
    }

    public int getCategoriesId() {
        return categoriesId;
    }

    public void setCategoriesId(int categoriesId) {
        this.categoriesId = categoriesId;
    }

    public String getCategoriesName() {
        return categoriesName;
    }

    public void setCategoriesName(String categoriesName) {
        this.categoriesName = categoriesName;
    }

    @Override
    public String toString() {
        return "Categories{" + "categoriesId=" + categoriesId + ", categoriesName=" + categoriesName + '}';
    }

    
    
    
}
