package cdu.pojo;

import java.util.Date;

public class Place {
    private Integer id;
    private String changdi;
    private String shangjia;
    private double price;
    private String free;
    private Date settime;

    public Place() {
    }

    public Place(String changdi, String shangjia, double price, String free, Date settime) {
        this.changdi = changdi;
        this.shangjia = shangjia;
        this.price = price;
        this.free = free;
        this.settime = settime;
    }

    public Place(Integer id, String changdi, String shangjia, double price, String free, Date settime) {
        this.id = id;
        this.changdi = changdi;
        this.shangjia = shangjia;
        this.price = price;
        this.free = free;
        this.settime = settime;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getChangdi() {
        return changdi;
    }

    public void setChangdi(String changdi) {
        this.changdi = changdi;
    }

    public String getShangjia() {
        return shangjia;
    }

    public void setShangjia(String shangjia) {
        this.shangjia = shangjia;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getFree() {
        return free;
    }

    public void setFree(String free) {
        this.free = free;
    }

    public Date getSettime() {
        return settime;
    }

    public void setSettime(Date settime) {
        this.settime = settime;
    }

    @Override
    public String toString() {
        return "Place{" +
                "id=" + id +
                ", changdi='" + changdi + '\'' +
                ", shangjia='" + shangjia + '\'' +
                ", price=" + price +
                ", free='" + free + '\'' +
                ", settime=" + settime +
                '}';
    }
}