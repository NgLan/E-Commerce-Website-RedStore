/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author NGOC LAN
 */
public class SubImage {
    private int id; 
    private int productID;
    private String link;

    public SubImage() {
    }

    public SubImage(int id, int productID, String link) {
        this.id = id;
        this.productID = productID;
        this.link = link;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    @Override
    public String toString() {
        return "SubImage{" + "id=" + id + ", productID=" + productID + ", link=" + link + '}';
    }
}
