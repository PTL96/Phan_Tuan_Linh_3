package model;

public class MotelRoom {
    private int idRoom;
    private String name;
    private String phoneNumber;
    private String startDay;
    private String payId;


    public MotelRoom(int id, String name, String phoneNumber, String startDay, String payId) {
    }

    public MotelRoom(int idRoom, String name, String phoneNumber, String payId) {
        this.idRoom = idRoom;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.startDay = startDay;
        this.payId = payId;

    }

    public MotelRoom(String id, String name, String phoneNumber, String startDay, String payId) {
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.startDay = startDay;
        this.payId = payId;

    }

    public int getIdRoom() {
        return idRoom;
    }

    public void setIdRoom(int idRoom) {
        this.idRoom = idRoom;
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
