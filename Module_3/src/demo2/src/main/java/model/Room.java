package model;

public class Room {
    private int id;
    private String name;
    private String phoneNumber;
    private String startDay;
    private String payId;

    public Room() {
    }

    public Room(String name, String phoneNumber, String startDay, int payId) {
    }

    public Room(int id, String name, String phoneNumber, String startDay, String payId) {
        this.id = id;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.startDay = startDay;
        this.payId = payId;
    }

    public Room(String name, String phoneNumber, String startDay, String payId) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.startDay = startDay;
        this.payId = payId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getStartDay() {
        return startDay;
    }

    public void setStartDay(String startDay) {
        this.startDay = startDay;
    }

    public String getPayId() {
        return payId;
    }

    public void setPayId(String payId) {
        this.payId = payId;
    }
}
