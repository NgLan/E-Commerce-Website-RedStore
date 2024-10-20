package entity;

public class Cart {
    private int pid; //productID
    private String image;
    private String name;
    private int quantity;
    private int sizeID;
    private String size;
    private int colorID;
    private String color;
    private double price;

    public Cart() {
    }

    public Cart(int pid, String image, String name, int quantity, int sizeID, String size, int colorID, String color, double price) {
        this.pid = pid;
        this.image = image;
        this.name = name;
        this.quantity = quantity;
        this.sizeID = sizeID;
        this.size = size;
        this.colorID = colorID;
        this.color = color;
        this.price = price;
    }

    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getSizeID() {
        return sizeID;
    }

    public void setSizeID(int sizeID) {
        this.sizeID = sizeID;
    }

    public String getSize() {
        return size;
    }

    public void setSize(String size) {
        this.size = size;
    }

    public int getColorID() {
        return colorID;
    }

    public void setColorID(int colorID) {
        this.colorID = colorID;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return "Cart{" + "pid=" + pid + ", image=" + image + ", name=" + name + ", quantity=" + quantity + ", sizeID=" + sizeID + ", size=" + size + ", colorID=" + colorID + ", color=" + color + ", price=" + price + '}';
    }
}
