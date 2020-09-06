/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarParking;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class Main extends Application {
    @Override
    public void start(Stage stage) throws Exception {
        Stage mainStage = new Stage();
        
        DepositCar d1 = new DepositCar();
        WithdrawCar w1 = new WithdrawCar();
        ViewCar v1 = new ViewCar();
        
        Clock c1 = new Clock();
        c1.currentTime();
        c1.nowTime.setStyle("-fx-font-size : 20px");
        
        BorderPane bPane = new BorderPane();
        VBox hbox1 = new VBox(15);
        hbox1.setAlignment(Pos.CENTER);
        Button btDCar = new Button("Deposit Car");
        Button btWCar = new Button("Withdraw Car");
        Button btVCar = new Button("View Car");
        btDCar.setStyle("-fx-font-size : 20px");
        btWCar.setStyle("-fx-font-size : 20px");
        btVCar.setStyle("-fx-font-size : 20px");
        hbox1.getChildren().addAll(btDCar, btWCar, btVCar);
        
        bPane.setCenter(hbox1);
        bPane.setRight(c1.nowTime);
        Scene scene = new Scene(bPane, 800, 600);
        mainStage.setScene(scene);
        mainStage.show();
        btDCar.setOnAction(e -> {
            try {
                d1.start(stage);
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btWCar.setOnAction(e -> {
            try {
                w1.start(stage);
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btVCar.setOnAction(e -> {
            try {
                v1.start(stage);
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });

    }
    

    public static void main(String[] args) {
        launch(args);
    }
}
