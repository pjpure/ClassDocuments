/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.util.Optional;
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class SettingFee {

    private static boolean fine;
    private static boolean free;

    public static boolean isFine() {
        return fine;
    }

    public static void setFine(boolean fine) {
        SettingFee.fine = fine;
    }

    public static boolean isFree() {
        return free;
    }

    public static void setFree(boolean free) {
        SettingFee.free = free;
    }
    public static int confixSave(){
        int save=0;
        if(isFree()){
            save+=1;
        }
        if(isFine()){
            save+=2;
        }
        return save;
    }
    
    public static void confixRead(int save){
        if(save > 1){
            setFine(true);
            save-=2;
        }
        if(save>0){
            setFree(true);
            save-=1;
        }
    }

    public static void setting() {
        Stage settingStage = new Stage();
        settingStage.setTitle("Setting");
        settingStage.initModality(Modality.APPLICATION_MODAL);

        BorderPane bPane = new BorderPane();

        VBox vbox1 = new VBox(15);
        HBox hbox1 = new HBox();
        HBox hbox2 = new HBox();
        //hbox1.setAlignment(Pos.CENTER);
        // hbox2.setAlignment(Pos.CENTER);
        // vbox1.setAlignment(Pos.CENTER);

        CheckBox freeBox = new CheckBox("จอดฟรีชั่วโมงแรก");
        freeBox.setStyle("-fx-font-size : 15px;");
        freeBox.setSelected(isFree());
        CheckBox fineBox = new CheckBox("ไม่เก็บค่าปรับจอดข้ามวัน");
        fineBox.setStyle("-fx-font-size : 15px;");
        fineBox.setSelected(isFine());

        TextField fee1Field = new TextField("" + FeeCal.getFeePerHour());
        fee1Field.setStyle("-fx-font-size : 15px;");
        fee1Field.setPrefSize(100, 5);

        TextField fee2Field = new TextField("" + FeeCal.getFeePerDay());
        fee2Field.setStyle("-fx-font-size : 15px;");
        fee2Field.setPrefSize(100, 5);

        Label hLabel = new Label("ค่าจอด : ");
        Button btEdit1 = new Button("แก้ไข");
        hLabel.setStyle("-fx-font-size : 20px;");

        Label dLabel = new Label("ค่าปรับ : ");
        Button btEdit2 = new Button("แก้ไข");
        dLabel.setStyle("-fx-font-size : 20px;");

        Label pHour = new Label(" บาท/ชั่วโมง  ");
        pHour.setStyle("-fx-font-size : 20px;");
        Label pDay = new Label(" บาท/วัน  ");
        pDay.setStyle("-fx-font-size : 20px;");

        hbox1.getChildren().addAll(hLabel, fee1Field, pHour, btEdit1);
        hbox2.getChildren().addAll(dLabel, fee2Field, pDay, btEdit2);

        vbox1.getChildren().addAll(hbox1, hbox2, freeBox, fineBox);
        bPane.setTop(new Label("            "));
        bPane.setLeft(new Label("            "));
        bPane.setCenter(vbox1);
        Scene scene = new Scene(bPane, 400, 200);
        settingStage.setScene(scene);
        settingStage.show();

        freeBox.setOnAction(e -> {
            if (freeBox.isSelected()) {
                setFree(true); 
            } else {
                setFree(false);
                
            }
            System.out.println(isFree());
        });

        fineBox.setOnAction(e -> {
            if (fineBox.isSelected()) {
                setFine(true);
                hbox2.setDisable(true);   
            } else {
                setFine(false);
                hbox2.setDisable(false);   
            }
            System.out.println(isFine());
        });

        btEdit1.setOnAction(e -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("แก้ไข");
            alert.setHeaderText("ต้องการเปลี่ยนแปลงค่าจอดรถหรือไม่");
            alert.setContentText("เปลี่ยนค่าจอดเป็น  " + fee1Field.getText() + "  บาท/ชั่วโมง");
            Optional<ButtonType> result = alert.showAndWait();
            if (result.get() == ButtonType.OK) {
               FeeCal.setFeePerHour(Integer.valueOf(fee1Field.getText()));
            }
        });
        btEdit2.setOnAction(e -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setHeaderText("ต้องการเปลี่ยนแปลงค่าปรับหรือไม่");
            alert.setTitle("แก้ไข");
            alert.setContentText("เปลี่ยนค่าปรับเป็น  " + fee2Field.getText() + "  บาท/วัน ");
            Optional<ButtonType> result = alert.showAndWait();
            if (result.get() == ButtonType.OK) {
                FeeCal.setFeePerDay(Integer.valueOf(fee2Field.getText()));
            }
        });
    }

}
