/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class AlertBox {

    public static void yesNoBox(String title, String massage) {
        Stage window = new Stage();
        window.initModality(Modality.APPLICATION_MODAL);
        window.setTitle(title);
        VBox vbox = new VBox();
        HBox hbox = new HBox();
        vbox.setAlignment(Pos.CENTER);
        hbox.setAlignment(Pos.CENTER);
        Label msLabel = new Label(massage);
        Label blankLabel1 = new Label("     ");
        Label blankLabel2 = new Label("     ");
        msLabel.setStyle("-fx-font-size : 15px");
        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        hbox.getChildren().addAll(btOK, blankLabel1, btCancel);
        vbox.getChildren().addAll(msLabel, blankLabel2, hbox);

        Scene scene = new Scene(vbox, 400, 150);
        window.setScene(scene);
        window.show();

    }

    public static void infoBox(int index) {
        Stage infoStage = new Stage();
        infoStage.initModality(Modality.APPLICATION_MODAL);
        Clock c1 = new Clock();
        
 
        Button btW = new Button("Withdraw");
        c1.showTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn);
        c1.getTime().setStyle("-fx-font-size : 16px");
        Label crLabel = new Label("Car registration : "+Main.cp.arr1.get(Main.cp.searchCarIndex(index)).carNO);
        Label areaLabel = new Label("Parking area : "+String.format("%c%d", 65 + index / 5, index % 5 + 1));
        Label duLarbel = new Label("Duration : ");
        
        crLabel.setStyle("-fx-font-size : 16px");
        areaLabel.setStyle("-fx-font-size : 16px");
        duLarbel.setStyle("-fx-font-size : 16px");
        
        VBox vbox1 = new VBox();
        HBox hbox = new HBox();
        hbox.setAlignment(Pos.CENTER);
       
        hbox.getChildren().addAll(duLarbel,c1.getTime());
        vbox1.getChildren().addAll(crLabel,areaLabel,hbox, btW);
        vbox1.setAlignment(Pos.CENTER);
        
        btW.setOnAction(e -> {
            try {
                Main.cp.checkOut2(index);
            } catch (IOException ex) {
                Logger.getLogger(AlertBox.class.getName()).log(Level.SEVERE, null, ex);
            }
            for (int i = 0; i < ViewCar.btn.length; i++) {
                if (Main.cp.isParked[i] == 1) {
                    ViewCar.btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #ff0000;-fx-border-color: #000000; -fx-border-width: 1px;");
                } else {
                    ViewCar.btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #00ff00;-fx-border-color: #000000; -fx-border-width: 1px;");
                }
            }
            infoStage.close();

        });

        Scene scene = new Scene(vbox1, 400, 150);
        infoStage.setScene(scene);
        infoStage.show();
    }

    public static void depositBox(int index) {
        Stage dpStage = new Stage();
        dpStage.initModality(Modality.APPLICATION_MODAL);
        Label placeLabel = new Label(String.format("%c%d", 65 + index / 5, index % 5 + 1));
        Label blankLabel1 = new Label("     ");
        Label blankLabel2 = new Label("     ");
        Label erLabel = new Label("Enter car registration : ");
        TextField dpField = new TextField();
        erLabel.setStyle("-fx-font-size : 20px");
        placeLabel.setStyle("-fx-font-size : 30px");

        HBox hbox1 = new HBox();
        HBox hbox2 = new HBox();
        VBox vbox = new VBox();
        hbox1.setAlignment(Pos.CENTER);
        hbox2.setAlignment(Pos.CENTER);
        vbox.setAlignment(Pos.CENTER);

        hbox1.getChildren().addAll(erLabel, dpField);

        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        hbox2.getChildren().addAll(btOK, blankLabel1, btCancel);

        vbox.getChildren().addAll(placeLabel, hbox1, blankLabel2, hbox2);

        Scene scene = new Scene(vbox, 400, 150);
        dpStage.setScene(scene);
        dpStage.show();

        btOK.setOnAction(e -> {
            System.out.println("Deposit:" + dpField.getText());
            Main.cp.checkIn2(new Car(dpField.getText()), index);
            dpField.setText("");
            for (int i = 0; i < ViewCar.btn.length; i++) {
                if (Main.cp.isParked[i] == 1) {
                    ViewCar.btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #ff0000;-fx-border-color: #000000; -fx-border-width: 1px;");
                } else {
                    ViewCar.btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #00ff00;-fx-border-color: #000000; -fx-border-width: 1px;");
                }
            }
            dpStage.close();
        });
        btCancel.setOnAction(e -> {
            dpField.setText("");
            dpStage.close();
        });
    }

}
