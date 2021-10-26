/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import static com.sun.webkit.graphics.WCImage.getImage;
import java.awt.Color;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.event.EventType;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.Background;
import javafx.scene.layout.BackgroundFill;
import javafx.scene.layout.BackgroundImage;
import javafx.scene.layout.BackgroundPosition;
import javafx.scene.layout.BackgroundRepeat;
import javafx.scene.layout.BackgroundSize;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.CornerRadii;
import javafx.scene.layout.HBox;
import javafx.scene.layout.Priority;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Paint;
import javafx.scene.text.Font;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class Main extends Application {

    public static CarParking cp = new CarParking();

    public static Label chargeInfo = new Label();
    public static Label feeInfo = new Label();
    public static Label freeLabel = new Label();

    @Override
    public void start(Stage stage) throws Exception {
        int widthforBT = 299;
        Stage mainStage = new Stage();
        mainStage.setResizable(false);
        try {
            mainStage.getIcons().add(new Image("file:resources/icon_1.png"));
        } catch (Exception e) {
        }
        StackPane stack = new StackPane();
        DepositCar d1 = new DepositCar();
        WithdrawCar w1 = new WithdrawCar();
        ViewCar v1 = new ViewCar();
        LogViewer lv1 = new LogViewer();
        AboutView av1 = new AboutView();

        Font fontKmitl = Font.loadFont(new FileInputStream("resources/KMITLGO_Regular_ver_1.00.ttf"), 35);
        Font fontMenu = Font.loadFont(new FileInputStream("resources/KMITLGO_Regular_ver_1.00.ttf"), 30);
        Font fontStat = Font.loadFont(new FileInputStream("resources/KMITLGO_Regular_ver_1.00.ttf"), 25);

        mainStage.setTitle("Car Parking");

        FileInputStream inputr1 = new FileInputStream("resources/kmitl_logo1.png");
        Image imageKmitl = new Image(inputr1);
        FileInputStream inputr2 = new FileInputStream("resources/kmitl_logo2.png");
        Image imageKmitl2 = new Image(inputr2);
        FileInputStream inputr3 = new FileInputStream("resources/kmitl_logo3.png");
        Image imageKmitl1 = new Image(inputr3);
        
        ImageView kmitLogo = new ImageView(imageKmitl);
        kmitLogo.setFitHeight(150);
        kmitLogo.setFitWidth(150);

        FileInputStream input2 = new FileInputStream("resources/carground.png");
        Image imageCarground = new Image(input2);

        BackgroundImage backgroundimage = new BackgroundImage(imageCarground, BackgroundRepeat.SPACE, BackgroundRepeat.SPACE, BackgroundPosition.CENTER, BackgroundSize.DEFAULT);
        Background background = new Background(backgroundimage);
        stack.setBackground(background);

        Label kmitlLabel = new Label("SMART CAR PARKING");
        kmitlLabel.setFont(fontKmitl);

        Clock c1 = new Clock();
        c1.currentTime();
        c1.nowTime.setStyle("-fx-font-size : 20px");

        stack.getChildren().add(c1.nowTime);
        stack.setAlignment(Pos.TOP_RIGHT);
        HBox hb1 = new HBox();
        VBox vbox1 = new VBox(15);
        vbox1.setAlignment(Pos.CENTER);

        Button btSetting = new Button("ตั้งค่า");
        btSetting.setPrefSize(widthforBT, 50);
        Button btAbout = new Button("เกี่ยวกับ");
        btAbout.setPrefSize(widthforBT, 50);
        Button btDCar = new Button("ฝากรถเข้า");
        btDCar.setPrefSize(widthforBT, 50);
        Button btWCar = new Button("ถอนรถออก");
        btWCar.setPrefSize(widthforBT, 50);
        Button btVCar = new Button("ดูสถานะที่จอดรถ");
        btVCar.setPrefSize(widthforBT, 50);
        Button btLog = new Button("บันทึกการใช้งาน");
        btLog.setPrefSize(widthforBT, 50);
        Button btLogin = new Button("เข้าสู่ระบบ");
        btLogin.setPrefSize(widthforBT, 50);
        VBox feeBox = new VBox();
        feeInfo.setText("ค่าจอด : " + FeeCal.getFeePerHour() + " บาท/ชั่วโมง");
        feeInfo.setPrefSize(widthforBT, 50);
        feeInfo.setAlignment(Pos.CENTER);
        if (Setting.isFine()) {
            chargeInfo.setText("ค่าปรับ : 0 บาท/วัน");
        } else {
            chargeInfo.setText("ค่าปรับ : " + FeeCal.getFeePerDay() + " บาท/วัน");
        }
        chargeInfo.setPrefSize(widthforBT, 50);
        chargeInfo.setAlignment(Pos.CENTER);

        if (Setting.isFree()) {
            freeLabel.setText("จอดฟรีชั่วโมงแรก");
        } else {
            freeLabel.setText("");
        }

        freeLabel.setPrefSize(widthforBT, 50);
        freeLabel.setAlignment(Pos.CENTER);
        feeBox.getChildren().addAll(feeInfo, chargeInfo, freeLabel);

        btDCar.setStyle("-fx-background-color: #ffa500;-fx-border-color: transparent; -fx-border-width: 1px;");
        btDCar.setFont(fontMenu);
        btWCar.setStyle("-fx-background-color: #ffae19;-fx-border-color: transparent; -fx-border-width: 1px;");
        btWCar.setFont(fontMenu);
        btVCar.setStyle("-fx-background-color: #ffb732;-fx-border-color: transparent; -fx-border-width: 1px;");
        btVCar.setFont(fontMenu);
        btLog.setStyle("-fx-background-color: #ffc04c;-fx-border-color: transparent; -fx-border-width: 1px;");
        btLog.setFont(fontMenu);
        btSetting.setStyle("-fx-background-color: #ffc966;-fx-border-color: transparent; -fx-border-width: 1px;");
        btSetting.setFont(fontMenu);
        btAbout.setStyle("-fx-background-color: #ffd27f;-fx-border-color: transparent; -fx-border-width: 1px;");
        btAbout.setFont(fontMenu);
        btLogin.setStyle("-fx-background-color: #ffe4b3;-fx-border-color: transparent; -fx-border-width: 1px;");
        btLogin.setFont(fontMenu);
        feeInfo.setStyle("-fx-background-color: #ffedcc;-fx-border-color: transparent; -fx-border-width: 1px;");
        feeInfo.setFont(fontStat);     
        chargeInfo.setStyle("-fx-background-color: #ffedcc;-fx-border-color: transparent; -fx-border-width: 1px;");
        chargeInfo.setFont(fontStat);
        freeLabel.setStyle("-fx-background-color: #ffedcc;-fx-border-color: transparent; -fx-border-width: 1px;");
        freeLabel.setFont(fontStat);

        btDCar.setDisable(false);
        btWCar.setDisable(false);
        btVCar.setDisable(true);
        btLog.setDisable(true);
        btSetting.setDisable(true);
        btAbout.setDisable(false);
        btLogin.setText("เข้าสู่ระบบ");

        vbox1.getChildren().addAll(new Label(""), kmitLogo, new Label(""), kmitlLabel, new Label("\n"), btDCar, btWCar, btVCar, btLog, btSetting, btAbout, btLogin, feeBox);
        vbox1.setSpacing(0);
        vbox1.setBackground(new Background(new BackgroundFill(Paint.valueOf("ffedcc"), CornerRadii.EMPTY, Insets.EMPTY)));
        vbox1.setMinWidth(widthforBT);
        vbox1.setMaxWidth(widthforBT);

        hb1.getChildren().addAll(vbox1, stack);

        HBox.setHgrow(stack, Priority.ALWAYS);
        Scene scene = new Scene(hb1, 1024, 725);
        mainStage.setScene(scene);
        mainStage.show();

        btDCar.setOnAction(e -> {
            try {
                if (stack.getChildren().size() >= 2) {
                    stack.getChildren().remove(1);
                }

                stack.getChildren().add(d1.deposit());
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btWCar.setOnAction(e -> {
            try {
                if (stack.getChildren().size() >= 2) {
                    stack.getChildren().remove(1);
                }

                stack.getChildren().add(w1.withdraw());
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btVCar.setOnAction(e -> {
            try {
                if (stack.getChildren().size() >= 2) {
                    stack.getChildren().remove(1);
                }

                stack.getChildren().add(v1.view());
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btLog.setOnAction(e -> {
            try {
                if (stack.getChildren().size() >= 2) {
                    stack.getChildren().remove(1);
                }

                stack.getChildren().add(lv1.log());
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });

        btAbout.setOnAction(e -> {
            if (stack.getChildren().size() >= 2) {
                stack.getChildren().remove(1);
            }
            try {
                stack.getChildren().add(av1.about());
            } catch (FileNotFoundException ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }
        });
        btSetting.setOnAction(e -> {
            try {
                if (stack.getChildren().size() >= 2) {
                    stack.getChildren().remove(1);
                }

                stack.getChildren().add(Setting.setting());
            } catch (Exception ex) {
                Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
            }

        });
        btLogin.setOnAction(e -> {
            if (Setting.getLevel() == 0) {
                Setting.login();
                if (Setting.getLevel() == 1) {
                    btDCar.setDisable(false);
                    btWCar.setDisable(false);
                    btVCar.setDisable(false);
                    btLog.setDisable(false);
                    btSetting.setDisable(true);
                    btAbout.setDisable(false);
                    btLogin.setText("ออกจากระบบ");
                    kmitLogo.setImage(imageKmitl1);
                } else if (Setting.getLevel() == 2) {
                    btDCar.setDisable(false);
                    btWCar.setDisable(false);
                    btVCar.setDisable(false);
                    btLog.setDisable(false);
                    btSetting.setDisable(false);
                    btAbout.setDisable(false);
                    btLogin.setText("ออกจากระบบ");
                    kmitLogo.setImage(imageKmitl2);

                }
            } else {
                Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                alert.setTitle("ยืนยัน");
                alert.setHeaderText("คุณต้องการออกจากระบบหรือไม่");
                Optional<ButtonType> result = alert.showAndWait();
                if (result.get() == ButtonType.OK) {
                    btDCar.setDisable(false);
                    btWCar.setDisable(false);
                    btVCar.setDisable(true);
                    btLog.setDisable(true);
                    btSetting.setDisable(true);
                    btAbout.setDisable(false);
                    btLogin.setText("เข้าสู่ระบบ");
                    Setting.setLevel(0);
                    kmitLogo.setImage(imageKmitl);
                    if (stack.getChildren().size() >= 2) {
                        stack.getChildren().remove(1);
                    }
                }
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
