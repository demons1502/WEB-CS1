package Model;

import java.text.DecimalFormat;
import java.util.Date;

public class ListOrder {
    private int id;
    private String fullname;
    private int proid;
    private float price;
    private int quantity;
    private Date date;
    private int status;
    private String address;
    private DecimalFormat formatter = new DecimalFormat("###,###,###");

    public ListOrder() {
    }

    public ListOrder(int id, String fullname, int proid, float price, int quantity, Date date, int status, String address) {
        this.id = id;
        this.fullname = fullname;
        this.proid = proid;
        this.price = price;
        this.quantity = quantity;
        this.date = date;
        this.status = status;
        this.address = address;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public int getProid() {
        return proid;
    }

    public void setProid(int proid) {
        this.proid = proid;
    }

    public float getPrice() {
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

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    public DecimalFormat getFormatter() {
        return formatter;
    }

    @Override
    public String toString() {
        return "ListOrder{" +
                "id=" + id +
                ", fullname='" + fullname + '\'' +
                ", proid=" + proid +
                ", price=" + price +
                ", quantity=" + quantity +
                ", date=" + date +
                ", status=" + status +
                ", address='" + address + '\'' +
                '}';
    }
}
