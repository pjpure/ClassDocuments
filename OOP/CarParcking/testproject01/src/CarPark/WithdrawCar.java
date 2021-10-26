/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.IOException;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class WithdrawCar  {

    public Node withdraw() throws Exception {
        Stage withdraStage = new Stage();
        Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
        alert.setHeaderText("คุณต้องการถอนรถหรือไม่");
        alert.setTitle("ยืนยัน");

        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);
        vbox.setMinSize(725, 725);
        vbox.setMaxSize(725, 725);
        Label paLabel = new Label("กรุณากรอกที่จอดรถ/ทะเบียนรถ : ");
        Label blankLabel = new Label("           ");
        paLabel.setStyle("-fx-font-size : 25px");
        TextField paField = new TextField();
        HBox hbDeposit = new HBox();
        hbDeposit.setAlignment(Pos.CENTER);
        hbDeposit.getChildren().addAll(paLabel, paField);

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

        paField.setTextFormatter(new TextFormatter<>((change) -> {
            change.setText(change.getText().toUpperCase());
            return change;
        }));

        btOK.setOnAction(e -> {
            String reFormStr = Car.reFormStrCarNo(paField.getText());
            try {

                if (Main.cp.checkArrPlace(paField.getText()) != -1) {
                    alert.setContentText("ถอนรถเลขทะเบียน : " + Main.cp.arr1.get(Main.cp.searchCarIndex(Main.cp.checkArrPlace(paField.getText()))).carNO + "      จุดจอด : " + paField.getText());
                    Optional<ButtonType> result = alert.showAndWait();
                    if (result.get() == ButtonType.OK) {
                        Receipt.showReceipt(paField.getText());
                        Main.cp.checkOut(paField.getText());
                        paField.setText("");
                    }
                } else if (Main.cp.checkArrayCarNo(reFormStr) != -1) {
                    alert.setContentText("ถอนรถเลขทะเบียน : " + reFormStr + "      จุดจอด : " + CarParking.carPlaceName[Main.cp.checkArrayCarNo(reFormStr)]);
                    Optional<ButtonType> result = alert.showAndWait();
                    if (result.get() == ButtonType.OK) {
                        Receipt.showReceipt(reFormStr);
                        Main.cp.checkOut(reFormStr);
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

        return vbox;
    }

    public static void main(String[] args) {
        launch(args);
    }
}
