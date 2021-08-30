package Model;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class Order {
    private int id;
    private List<Item> item;
    private Date date = new Date();
    private DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
    private String address;
    private  int status = 0;

    public Order() {
    }

    public Order(int id, List<Item> item, Date date, DateFormat dateFormat, String address, int status) {
        this.id = id;
        this.item = item;
        this.date = date;
        this.dateFormat = dateFormat;
        this.address = address;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public List<Item> getItem() {
        return item;
    }

    public void setItem(List<Item> item) {
        this.item = item;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public DateFormat getDateFormat() {
        return dateFormat;
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "Order{" +
                "id=" + id +
                ", item=" + item +
                ", date=" + date +
                ", dateFormat=" + dateFormat +
                ", address='" + address + '\'' +
                ", status=" + status +
                '}';
    }
}
