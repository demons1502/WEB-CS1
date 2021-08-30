package Model;

import java.text.DecimalFormat;

public class Product {

    private int productID ;
    private String name;
    private float price;
    private int quantity;
    private  String description;
    private  int category_id;
    private  String image;
    private  int featured;
    private DecimalFormat formatter = new DecimalFormat("###,###,###");


    public Product() {
    }

    public Product(int productID, String name, float price, int quantity, String description, int category_id, String image, int featured) {
        this.productID = productID;
        this.name = name;
        this.price = price;
        this.quantity = quantity;
        this.description = description;
        this.category_id = category_id;
        this.image = image;
        this.featured = featured;

    }

    public int getProductID() {
        return productID;
    }

    public void setProductID(int productID) {
        this.productID = productID;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getCategory_id() {
        return category_id;
    }

    public void setCategory_id(int category_id) {
        this.category_id = category_id;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getFeatured() {
        return featured;
    }

    public void setFeatured(int featured) {
        this.featured = featured;
    }

    public DecimalFormat getFormatter() {
        return formatter;
    }

    public void setFormatter(DecimalFormat formatter) {
        this.formatter = formatter;
    }

    @Override
    public String toString() {
        return "Product{" +
                "productID=" + productID +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", quantity=" + quantity +
                ", description='" + description + '\'' +
                ", category_id=" + category_id +
                ", image='" + image + '\'' +
                ", featured=" + featured +
                '}';
    }

    public static void main(String[] args) {
        Product pr = new Product();
        System.out.println(pr.getFormatter().format(4894443));
    }
}
