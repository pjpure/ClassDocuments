/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import static CarPark.Main.chargeInfo;
import static CarPark.Main.feeInfo;
import static CarPark.Main.freeLabel;
import java.util.Optional;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.CheckBox;
import javafx.scene.control.Label;
import javafx.scene.control.PasswordField;
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
public class Setting {

    private static boolean fine;
    private static boolean free;
    private static String[] passWord = {"manager", "admin"};
    private static int level;

    public static int getLevel() {
        return level;
    }

    public static void setLevel(int level) {
        Setting.level = level;
    }

    public static String getPassWord(int index) {
        return passWord[index];
    }

    public static void setPassWord(String passWord, int index) {
        Setting.passWord[index] = passWord;
    }

    public static boolean isFine() {
        return fine;
    }

    public static void setFine(boolean fine) {
        Setting.fine = fine;
    }

    public static boolean isFree() {
        return free;
    }

    public static void setFree(boolean free) {
        Setting.free = free;
    }

    public static int confixSave() {
        int save = 0;
        if (isFree()) {
            save += 1;
        }
        if (isFine()) {
            save += 2;
        }
        return save;
    }

    public static void confixRead(int save) {
        if (save > 1) {
            setFine(true);
            save -= 2;
        }
        if (save > 0) {
            setFree(true);
            save -= 1;
        }
    }

    public static void login() {
        Stage loginStage = new Stage();
        loginStage.setResizable(false);
        loginStage.initModality(Modality.APPLICATION_MODAL);
        BorderPane bpane2 = new BorderPane();
        VBox vbox = new VBox(10);
        vbox.setAlignment(Pos.CENTER);

        HBox hbox3 = new HBox();
        hbox3.setAlignment(Pos.CENTER);
        Label passLabel = new Label("รหัสผ่าน : ");
        passLabel.setStyle("-fx-font-size : 20px;");
        PasswordField passField = new PasswordField();
        hbox3.getChildren().addAll(passLabel, passField);

        Button loginBt = new Button("เข้าสู่ระบบ");
        Button resetBt = new Button("เปลี่ยนรหัสผ่าน");

        BorderPane bpane3 = new BorderPane();
        bpane3.setRight(resetBt);

        vbox.getChildren().addAll(hbox3, loginBt);
        bpane2.setCenter(vbox);
        bpane2.setBottom(bpane3);

        Scene sceneLogin = new Scene(bpane2, 400, 200);
        loginStage.setScene(sceneLogin);
        ////////////////////////////////////////////reset//////////////////////////////////////////////
        BorderPane resetBpane = new BorderPane();
        VBox vboxReset = new VBox(10);
        vboxReset.setAlignment(Pos.CENTER);
        HBox lpBox = new HBox();
        lpBox.setAlignment(Pos.CENTER);
        HBox npBox1 = new HBox();
        npBox1.setAlignment(Pos.CENTER);
        HBox npBox2 = new HBox();
        npBox2.setAlignment(Pos.CENTER);
        HBox btBox = new HBox(10);
        btBox.setAlignment(Pos.CENTER);

        Label lastPass = new Label("รหัสผ่านเดิม : ");
        lastPass.setStyle("-fx-font-size : 20px;");
        Label newPass = new Label("รหัสผ่านใหม่ : ");
        newPass.setStyle("-fx-font-size : 20px;");
        Label newPass2 = new Label("ยืนยันรหัสผ่านใหม่ : ");
        newPass2.setStyle("-fx-font-size : 20px;");

        PasswordField lpField = new PasswordField();
        PasswordField npField = new PasswordField();
        PasswordField npField2 = new PasswordField();

        lpBox.getChildren().addAll(lastPass, lpField);
        npBox1.getChildren().addAll(newPass, npField);
        npBox2.getChildren().addAll(newPass2, npField2);

        Button btOkReset = new Button("ยืนยัน");
        Button btCancelReset = new Button("ยกเลิก");
        btBox.getChildren().addAll(btOkReset, btCancelReset);

        vboxReset.getChildren().addAll(lpBox, npBox1, npBox2, btBox);
        resetBpane.setCenter(vboxReset);

        Scene resetScene = new Scene(resetBpane, 400, 200);

        loginBt.setOnAction(e -> {
            if (passField.getText().equals(getPassWord(0))) {

                setLevel(1);
                loginStage.close();
                lpField.setText("");
                npField.setText("");
                npField2.setText("");

            } else if (passField.getText().equals(getPassWord(1))) {

                setLevel(2);
                loginStage.close();
                lpField.setText("");
                npField.setText("");
                npField2.setText("");

            } else {
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setTitle("Password");
                alert.setHeaderText(null);
                alert.setContentText("กรุณากรอกรหัสผ่านให้ถูกต้อง");
                alert.showAndWait();
            }
        });

        resetBt.setOnAction(e -> {
            loginStage.setScene(resetScene);
            passField.setText("");
        });

        btCancelReset.setOnAction(e -> {
            lpField.setText("");
            npField.setText("");
            npField2.setText("");
            loginStage.setScene(sceneLogin);
        });

        btOkReset.setOnAction(e -> {
            if (lpField.getText().equals(getPassWord(0)) || lpField.getText().equals(getPassWord(1))) {
                int index=-1;
                if (lpField.getText().equals(getPassWord(0))) {
                    index = 0;
                } else if (lpField.getText().equals(getPassWord(1))){
                    index = 1;
                }
                if (npField.getText().equals(npField2.getText())) {
                    Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                    alert.setTitle("ยืนยัน");
                    alert.setHeaderText("คุณต้องการเปลี่ยนรหัสผ่านหรือไม่");
                    Optional<ButtonType> result = alert.showAndWait();
                    if (result.get() == ButtonType.OK) {
                        setPassWord(npField.getText(), index);
                        loginStage.setScene(sceneLogin);
                        lpField.setText("");
                        npField.setText("");
                        npField2.setText("");
                    }
                } else {
                    Alert alert = new Alert(Alert.AlertType.WARNING);
                    alert.setTitle("Reset");
                    alert.setHeaderText(null);
                    alert.setContentText("กรุณากรอกรหัสผ่านใหม่ให้เหมือนกัน");
                    alert.showAndWait();
                }

            } else {
                Alert alert = new Alert(Alert.AlertType.WARNING);
                alert.setTitle("Reset");
                alert.setHeaderText(null);
                alert.setContentText("กรุณากรอกรหัสผ่านเดิมให้ถูกต้อง");
                alert.showAndWait();
            }
        });
        loginStage.showAndWait();
        System.out.println(getLevel());
    }

    public static Node setting() {

        Stage settingStage = new Stage();
        settingStage.setResizable(false);
        settingStage.setTitle("Setting");
        settingStage.initModality(Modality.APPLICATION_MODAL);

        BorderPane bPane = new BorderPane();

        VBox vbox1 = new VBox(15);
        HBox hbox1 = new HBox();
        HBox hbox2 = new HBox();

        CheckBox freeBox = new CheckBox("จอดฟรีชั่วโมงแรก");
        freeBox.setStyle("-fx-font-size : 18px;");
        freeBox.setSelected(isFree());
        CheckBox fineBox = new CheckBox("ไม่เก็บค่าปรับจอดข้ามวัน");
        fineBox.setStyle("-fx-font-size : 18px;");
        fineBox.setSelected(isFine());

        TextField fee1Field = new TextField("" + FeeCal.getFeePerHour());
        fee1Field.setStyle("-fx-font-size : 20px;");
        fee1Field.setPrefSize(100, 5);

        TextField fee2Field = new TextField("" + FeeCal.getFeePerDay());
        fee2Field.setStyle("-fx-font-size : 20px;");
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
        bPane.setTop(new Label("\n\n\n\n\n\n\n\n\n\n\n\n\n"));
        bPane.setLeft(new Label("                                                                     "));
        bPane.setCenter(vbox1);
        bPane.setMinSize(725, 725);
        bPane.setMaxSize(725, 725);

        ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        freeBox.setOnAction(e -> {
            if (freeBox.isSelected()) {
                setFree(true);
                freeLabel.setText("จอดฟรีชั่วโมงแรก");
            } else {
                setFree(false);
                freeLabel.setText("");
            }
            System.out.println(isFree());
        });

        fineBox.setOnAction(e -> {
            if (fineBox.isSelected()) {
                setFine(true);
                hbox2.setDisable(true);
                chargeInfo.setText("ค่าปรับ : 0 บาท/วัน");
            } else {
                setFine(false);
                hbox2.setDisable(false);
                chargeInfo.setText("ค่าปรับ : " + FeeCal.getFeePerDay() + " บาท/วัน");
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
                feeInfo.setText("ค่าจอด : " + FeeCal.getFeePerHour() + " บาท/ชั่วโมง");
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
                chargeInfo.setText("ค่าปรับ : " + FeeCal.getFeePerDay() + " บาท/วัน");
            }
        });

        return bPane;

    }

}
