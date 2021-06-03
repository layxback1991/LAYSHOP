package entity;

public class Order {
    public int order_id;
    public String USER_ID;
    public String order_status;
    public String order_time;
    public int total_price ;
    public String payment;

    public Order() {
    }

    public Order(int order_id, String USER_ID, String order_status, String order_time, int total_price, String payment) {

        this.order_id = order_id;
        this.USER_ID = USER_ID;
        this.order_status = order_status;
        this.order_time = order_time;
        this.total_price = total_price;
        this.payment = payment;
    }

    public int getOrder_id() {
        return order_id;
    }

    public String getUSER_ID() {
        return USER_ID;
    }

    public String getOrder_status() {
        return order_status;
    }

    public String getOrder_time() {
        return order_time;
    }

    public int getTotal_price() {
        return total_price;
    }

    public String getPayment() {
        return payment;
    }

    public void setOrder_id(int order_id) {
        this.order_id = order_id;
    }

    public void setUSER_ID(String USER_ID) {
        this.USER_ID = USER_ID;
    }

    public void setOrder_status(String order_status) {
        this.order_status = order_status;
    }

    public void setOrder_time(String order_time) {
        this.order_time = order_time;
    }

    public void setTotal_price(int total_price) {
        this.total_price = total_price;
    }

    public void setPayment(String payment) {
        this.payment = payment;
    }
}
