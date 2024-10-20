/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGOC LAN
 */
public class CartInsert {
    private int userID;
    private int productID;
    private int sizeID;
    private int colorID;
    private int quantity;

    public CartInsert() {
    }

    public CartInsert(int userID, int productID, int sizeID, int colorID, int quantity) {
        this.userID = userID;
        this.productID = productID;
        this.sizeID = sizeID;
        this.colorID = colorID;
        this.quantity = quantity;
    }

    public int getUserID() {
        return userID;
    }

    public void setUserID(int userID) {
        this.userID = userID;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public int getSizeID() {
        return sizeID;
    }

    public void setSizeID(int sizeID) {
        this.sizeID = sizeID;
    }

    public int getColorID() {
        return colorID;
    }

    public void setColorID(int colorID) {
        this.colorID = colorID;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "CartInsert{" + "userID=" + userID + ", productID=" + productID + ", sizeID=" + sizeID + ", colorID=" + colorID + ", quantity=" + quantity + '}';
    }
}
