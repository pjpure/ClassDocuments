/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.util.Optional;
import static javafx.application.Application.launch;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.Alert.AlertType;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.TextFormatter;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class DepositCar {

    public Node deposit() throws Exception {
        Stage depositStage = new Stage();
        Alert alert = new Alert(AlertType.CONFIRMATION);
        alert.setHeaderText(" คุณต้องการฝากรถหรือไม่");
        alert.setTitle("ยืนยัน");

        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);
        vbox.setMinSize(725, 725);
        vbox.setMaxSize(725, 725);
        Label vrLabel = new Label("กรุณากรอกเลขทะเบียนรถ : ");
        Label blankLabel = new Label("           ");
        vrLabel.setStyle("-fx-font-size : 25px");
        TextField vrField = new TextField();
        HBox hbDeposit = new HBox();
        hbDeposit.setAlignment(Pos.CENTER);
        hbDeposit.getChildren().addAll(vrLabel, vrField);

        Button btOK = new Button("ยืนยัน");
        btOK.setStyle("-fx-font-size : 15px");
        Button btCancel = new Button("ยกเลิก");
        btCancel.setStyle("-fx-font-size : 15px");
        HBox hbButton = new HBox();
        hbButton.setAlignment(Pos.CENTER);
        hbButton.getChildren().addAll(btOK, blankLabel, btCancel);

        Label blankLabel1 = new Label("    ");
        Label blankLabel2 = new Label("    ");

        vbox.getChildren().addAll(hbDeposit, blankLabel1, hbButton, blankLabel2);

        vrField.setTextFormatter(new TextFormatter<>((change) -> {
            change.setText(change.getText().toUpperCase());
            return change;
        }));

        btOK.setOnAction(e -> {
            if (Car.carCount < 25) {
                String reFormStr = Car.reFormStrCarNo(vrField.getText());
                if (reFormStr.length() >= 3) {
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
            } else {
                Alert alert2 = new Alert(AlertType.WARNING);
                alert2.setTitle("รถเต็ม");
                alert2.setHeaderText(null);
                alert2.setContentText("จุดจอดรถเต็มแล้ว กรุณาลองอีกครั้งภายหลัง");
                alert2.showAndWait();
            }

        });
        btCancel.setOnAction(e -> {
            vrField.setText("");
            depositStage.close();
        });

        return vbox;

    }

    public static void main(String[] args) {
        launch(args);
    }
}
