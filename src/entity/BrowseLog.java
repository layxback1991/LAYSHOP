package entity;

public class BrowseLog {
    public String BROWSE_id;
    public String USER_ID;
    public int PRODUCT_ID;
    public String browse_time;
    public String buy;

    public BrowseLog(String BROWSE_id, String USER_ID, int PRODUCT_ID, String browse_time, String buy) {
        this.BROWSE_id = BROWSE_id;
        this.USER_ID = USER_ID;
        this.PRODUCT_ID = PRODUCT_ID;
        this.browse_time = browse_time;
        this.buy = buy;
    }

    public String getBROWSE_id() {
        return BROWSE_id;
    }

    public String getUSER_ID() {
        return USER_ID;
    }

    public int getPRODUCT_ID() {
        return PRODUCT_ID;
    }

    public String getBrowse_time() {
        return browse_time;
    }

    public String getBuy() {
        return buy;
    }

    public void setBROWSE_id(String BROWSE_id) {
        this.BROWSE_id = BROWSE_id;
    }

    public void setUSER_ID(String USER_ID) {
        this.USER_ID = USER_ID;
    }

    public void setPRODUCT_ID(int PRODUCT_ID) {
        this.PRODUCT_ID = PRODUCT_ID;
    }

    public void setBrowse_time(String browse_time) {
        this.browse_time = browse_time;
    }

    public void setBuy(String buy) {
        this.buy = buy;
    }
}
