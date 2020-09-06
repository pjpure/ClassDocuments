/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.util.Date;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class CarTicket {

    public static void showTicket(String carNo) {
        Stage ticketStage = new Stage();
        ticketStage.setTitle("ตั๋วรับรถ");
        Label kmitlLabel1 = new Label("KMITL");
        kmitlLabel1.setStyle("-fx-font-size : 25px");
        Label kmitlLabel2 = new Label("SMART CAR PARKING");
        kmitlLabel2.setStyle("-fx-font-size : 25px");
        
        VBox vbox2 = new VBox();
        vbox2.setAlignment(Pos.CENTER);
        vbox2.getChildren().addAll(kmitlLabel1,kmitlLabel2);
        
         Label placeLabel = new Label(""+Main.cp.checkIn1(new Car(carNo)));
         Label carLabel = new Label("ทะเบียนรถ : "+ carNo);
         Label timeLabel = new Label(""+new Date());
         
         placeLabel.setStyle("-fx-font-size :80px");
         carLabel.setStyle("-fx-font-size :20px");
         timeLabel.setStyle("-fx-font-size :20px");
         
         VBox vbox = new VBox();
         vbox.setAlignment(Pos.CENTER);
         vbox.getChildren().addAll(vbox2,placeLabel, carLabel,timeLabel );
         
         Scene scene = new Scene(vbox,300,320);
         
         ticketStage.setScene(scene);
         ticketStage.show();
    }
    
    public static void showTicket2(String carNo,int index) {
        Stage ticketStage = new Stage();
        ticketStage.setTitle("ตั๋วรับรถ");
        Label kmitlLabel1 = new Label("KMITL");
        kmitlLabel1.setStyle("-fx-font-size : 25px");
        Label kmitlLabel2 = new Label("SMART CAR PARKING");
        kmitlLabel2.setStyle("-fx-font-size : 25px");
        
        VBox vbox2 = new VBox();
        vbox2.setAlignment(Pos.CENTER);
        vbox2.getChildren().addAll(kmitlLabel1,kmitlLabel2);
        
         Label placeLabel = new Label(""+Main.cp.checkIn2(new Car(carNo), index));
         Label carLabel = new Label("ทะเบียนรถ : "+ carNo);
         Label timeLabel = new Label(""+new Date());
         
         placeLabel.setStyle("-fx-font-size :80px");
         carLabel.setStyle("-fx-font-size :20px");
         timeLabel.setStyle("-fx-font-size :20px");
         
         VBox vbox = new VBox();
         vbox.setAlignment(Pos.CENTER);
         vbox.getChildren().addAll(vbox2,placeLabel, carLabel,timeLabel );
         
         Scene scene = new Scene(vbox,300,320);
         
         ticketStage.setScene(scene);
         ticketStage.show();
    }

    static void showTicket2() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
