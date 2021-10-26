/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class WithdrawCar extends Application {

    @Override
    public void start(Stage stage) throws Exception {
        Stage withdraStage = new Stage();
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setHeaderText("คุณต้องการถอนรถหรือไม่");
        alert.setTitle("ยืนยัน");

        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);

        Label paLabel = new Label("กรุณากรอกที่จอดรถ/ทะเบียนรถ : ");
        Label blankLabel = new Label("           ");
        paLabel.setStyle("-fx-font-size : 20px");
        TextField paField = new TextField();
        HBox hbDeposit = new HBox();
        hbDeposit.setAlignment(Pos.CENTER);
        hbDeposit.getChildren().addAll(paLabel, paField);

        Button btOK = new Button("ยืนยัน");
        Button btCancel = new Button("ยกเลิก");
        HBox hbButton = new HBox();
        hbButton.setAlignment(Pos.CENTER);
        hbButton.getChildren().addAll(btOK, blankLabel, btCancel);

        Label blankLabel1 = new Label("    ");
        Label blankLabel2 = new Label("    ");

        vbox.getChildren().addAll(hbDeposit, blankLabel1, hbButton, blankLabel2);

        btOK.setOnAction(e -> {
            try {
                if (Main.cp.checkArrPlace(paField.getText()) != -1||Main.cp.checkArrayCarNo(paField.getText())!=-1) {
                    if(Main.cp.checkArrPlace(paField.getText()) != -1){
                        alert.setContentText("ถอนรถเลขทะเบียน : "+Main.cp.arr1.get(Main.cp.searchCarIndex(Main.cp.checkArrPlace(paField.getText()))).carNO+"      จุดจอด : "+paField.getText());
                    }
                    if(Main.cp.checkArrayCarNo(paField.getText())!=-1){
                        alert.setContentText("ถอนรถเลขทะเบียน : "+paField.getText()+"      จุดจอด : "+ CarParking.carPlaceName[Main.cp.checkArrayCarNo(paField.getText())]);
                    }
                    
                    Optional<ButtonType> result = alert.showAndWait();
                    if (result.get() == ButtonType.OK) {
                        Receipt.showReceipt(paField.getText());
                        System.out.println("bug 1");
                        Main.cp.checkOut(paField.getText());
                        System.out.println("bug 2");
                        paField.setText("");
                    }
                } else {
                    Alert alert2 = new Alert(AlertType.WARNING);
                    alert2.setTitle("ถอนรถออก");
                    alert2.setHeaderText(null);
                    alert2.setContentText("กรุณากรอกที่จอดรถหรือทะเบียนรถให้ถูกต้อง");
                    alert2.showAndWait();
                }
            } catch (IOException ex) {
                Logger.getLogger(WithdrawCar.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btCancel.setOnAction(e -> {
            paField.setText("");
            withdraStage.close();
        });

        Scene scene = new Scene(vbox, 500, 150);
        withdraStage.setTitle("ถอนรถออก");
        withdraStage.setScene(scene);
        withdraStage.initModality(Modality.APPLICATION_MODAL);
        withdraStage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
