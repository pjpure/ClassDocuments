/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class Main extends Application {

    public static CarParking cp = new CarParking();

    @Override
    public void start(Stage stage) throws Exception {
        Stage mainStage = new Stage();
        DepositCar d1 = new DepositCar();
        WithdrawCar w1 = new WithdrawCar();
        ViewCar v1 = new ViewCar();
        LogViewer lv1 = new LogViewer();
        AboutView av1 = new AboutView();

        mainStage.setTitle("Car Parking");

        FileInputStream input = new FileInputStream("resources/kmitl_logo2.png");
        Image imageKmitl = new Image(input);

        ImageView kmitLogo = new ImageView(imageKmitl);
        kmitLogo.setFitHeight(150);
        kmitLogo.setFitWidth(350);
        

        FileInputStream input2 = new FileInputStream("resources/setting.png");
        Image imageSetting = new Image(input2);

        ImageView logoSetting = new ImageView(imageSetting);
        logoSetting.setFitHeight(40);
        logoSetting.setFitWidth(40);

        Label kmitlLabel = new Label("SMART CAR PARKING");
        kmitlLabel.setStyle("-fx-font-size : 30px");

        Clock c1 = new Clock();
        c1.currentTime();
        c1.nowTime.setStyle("-fx-font-size : 20px");

        BorderPane bPane = new BorderPane();
        VBox vbox1 = new VBox(15);
        vbox1.setAlignment(Pos.CENTER);

        Button btSetting = new Button("Setting");
        Button btAbout = new Button("About");
        btSetting.setPrefSize(80, 20);
        btAbout.setPrefSize(80, 20);
        BorderPane bPane2 = new BorderPane();
        bPane2.setRight(btSetting);
        bPane2.setLeft(btAbout);

        Button btDCar = new Button("ฝากรถเข้า");
        Button btWCar = new Button("ถอนรถออก");
        Button btVCar = new Button("ดูสถานะที่จอดรถ");
        Button btLog = new Button("Log");
        btLog.setPrefSize(80, 20);
        btDCar.setStyle("-fx-font-size : 25px");
        btWCar.setStyle("-fx-font-size : 25px");
        btVCar.setStyle("-fx-font-size : 25px");
        vbox1.getChildren().addAll(kmitLogo, kmitlLabel, btDCar, btWCar, btVCar);

        bPane.setCenter(vbox1);
        bPane.setRight(c1.nowTime);
        bPane.setLeft(btLog);
        bPane.setBottom(bPane2);
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
        btLog.setOnAction(e -> {
            try {
                lv1.start(stage);
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });

        btAbout.setOnAction(e -> {
            av1.start(stage);
        });
        btSetting.setOnAction(e -> {
            try {
                SettingFee.setting();
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });

    }

    public static void main(String[] args) throws IOException, FileNotFoundException, ClassNotFoundException {

        try {
            FileIO.readData(cp);
        } catch (IOException iOException) {
        } catch (ClassNotFoundException classNotFoundException) {
        }

        launch(args);
        FileIO.writeData(cp);
    }
}