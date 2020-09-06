
import java.util.Date;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class Geometric {
    private String color;
    private boolean isFill;
    private Date dateCreate;

    public Geometric() {
        this.dateCreate = new Date();
    }

    public Geometric(String color, boolean isFill, Date dateCreate) {
        this.dateCreate = new Date();
        this.color = color;
        this.isFill = isFill;
        this.dateCreate = dateCreate;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public boolean isIsFill() {
        return isFill;
    }

    public void setIsFill(boolean isFill) {
        this.isFill = isFill;
    }

    public Date getDateCreate() {
        return dateCreate;
    }

    public void setDateCreate(Date dateCreate) {
        this.dateCreate = dateCreate;
    }

    @Override
    public String toString() {
        return "Geometric{" + "color=" + color + ", isFill=" + isFill + ", dateCreate=" + dateCreate + '}';
    }
    
    
}
