/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.util.Date;
import java.util.Optional;
import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonBar;
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
public class DepositCar extends Application {

    @Override
    public void start(Stage stage) throws Exception {
        Stage depositStage = new Stage();
        Alert alert = new Alert(AlertType.CONFIRMATION);
        alert.setHeaderText(" คุณต้องการฝากรถหรือไม่");
        alert.setTitle("ยืนยัน");

        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);

        Label vrLabel = new Label("กรุณากรอกเลขทะเบียนรถ : ");
        Label blankLabel = new Label("           ");
        vrLabel.setStyle("-fx-font-size : 20px");
        TextField vrField = new TextField();
        HBox hbDeposit = new HBox();
        hbDeposit.setAlignment(Pos.CENTER);
        hbDeposit.getChildren().addAll(vrLabel, vrField);

        Button btOK = new Button("ยืนยัน");
        Button btCancel = new Button("ยกเลิก");
        HBox hbButton = new HBox();
        hbButton.setAlignment(Pos.CENTER);
        hbButton.getChildren().addAll(btOK, blankLabel, btCancel);

        Label blankLabel1 = new Label("    ");
        Label blankLabel2 = new Label("    ");

        vbox.getChildren().addAll(hbDeposit, blankLabel1, hbButton, blankLabel2);
        btOK.setOnAction(e -> {
            if (vrField.getText().length() >= 3) {
                String reFormStr = Car.reFormStrCarNo(vrField.getText());
                alert.setContentText("รถป้ายทะเบียน : " + reFormStr);
                Optional<ButtonType> result = alert.showAndWait();
                if (result.get() == ButtonType.OK) {
                    CarTicket.showTicket(reFormStr);
                    vrField.setText("");
                }
            } else {
                Alert alert2 = new Alert(AlertType.WARNING);
                alert2.setTitle("ทะเบียนรถ");
                alert2.setHeaderText(null);
                alert2.setContentText("กรุณากรอกทะเบียนรถที่มีจำนวนตัวอักษรมากกว่า3ตัวขึ้นไป");
                alert2.showAndWait();
            }
        });
        btCancel.setOnAction(e -> {
            vrField.setText("");
            depositStage.close();
        });

        Scene scene = new Scene(vbox, 400, 150);
        depositStage.setTitle("ฝากรถ");
        depositStage.setScene(scene);
        depositStage.initModality(Modality.APPLICATION_MODAL);
        depositStage.show();

    }

    public static void main(String[] args) {
        launch(args);
    }
}
