/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.IOException;
import java.util.Optional;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.control.TextFormatter;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class ViewCar {

    Button[] btn = new Button[25];
    VBox[] vboxBt = new VBox[25];
    Label[] carNoLabel = new Label[25];
    final String pBT = "ffb144";
    final String eBT = "fdfd96";
    final String sBT = "ffb8a1";
    public static int indexTemp;
    public static boolean switchmode = false;

    public Node view() throws Exception {

        switchmode = false;

        GridPane gridPane = new GridPane();

        for (int i = 0; i < btn.length; i++) {
            int j = i / 5;
            btn[i] = new Button();
            vboxBt[i] = new VBox();
            carNoLabel[i] = new Label();
            carNoLabel[i].setStyle("-fx-font-size : 16px;");
            vboxBt[i].setAlignment(Pos.CENTER);
            vboxBt[i].getChildren().add(new Label(String.format("%c%d", 65 + j, i % 5 + 1)));
            btn[i].setGraphic(vboxBt[i]);
            btn[i].setPrefSize(145, 145);
            if (Main.cp.isParked[i] == 1) {
                btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #" + pBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                carNoLabel[i].setText("(" + Main.cp.arr1.get(Main.cp.searchCarIndex(i)).carNO + ")");
                vboxBt[i].getChildren().add(carNoLabel[i]);
            } else {
                btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #" + eBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                carNoLabel[i].setText("(ว่าง)");
                vboxBt[i].getChildren().add(carNoLabel[i]);
            }

            gridPane.add(btn[i], i % 5, j);
        }
        for (int i = 0; i < btn.length; i++) {
            int j = i;
            btn[j].hoverProperty().addListener((observable, oldValue, newValue) -> {
                if (newValue && switchmode) {
                    btn[j].setStyle("-fx-font-size : 20px;-fx-background-color: #" + sBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                } else {
                    if (Main.cp.isParked[j] == 1) {
                        btn[j].setStyle("-fx-font-size : 20px;-fx-background-color: #" + pBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                        carNoLabel[j].setText("(" + Main.cp.arr1.get(Main.cp.searchCarIndex(j)).carNO + ")");
                    } else {
                        btn[j].setStyle("-fx-font-size : 20px;-fx-background-color: #" + eBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                        carNoLabel[j].setText("(ว่าง)");
                    }
                }
            });
        }
        for (int i = 0; i < btn.length; i++) {
            int j = i;  
            btn[j].setOnAction(e -> {
                if (!switchmode) {
                    indexTemp = j;
                    System.out.println("Temp is " + CarParking.carPlaceName[indexTemp]);
                    if (Main.cp.isParked[j] == 1) {
                        infoBox(j);
                    } else {
                        depositBox(j);
                    }
                } else {
                    Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                    alert.setTitle("ยืนยัน");
                    alert.setHeaderText("คุณต้องการย้ายรถหรือไม่");
                    alert.setContentText("ย้ายรถไปยัง : " + String.format("%c%d", 65 + j / 5, j % 5 + 1));
                    Optional<ButtonType> result = alert.showAndWait();
                    if (result.get() == ButtonType.OK) {
                        if (Main.cp.isParked[j] == 1) {
                            Main.cp.switchpos(Main.cp.arr1.get(Main.cp.searchCarIndex(ViewCar.indexTemp)), Main.cp.arr1.get(Main.cp.searchCarIndex(j)));
                        } else {
                            CarTicket.showTicket2(Main.cp.arr1.get(Main.cp.searchCarIndex(indexTemp)).carNO, j);
                            Main.cp.switchpos(Main.cp.arr1.get(Main.cp.searchCarIndex(ViewCar.indexTemp)), j);
                        }
                        for (int k = 0; k < btn.length; k++) {
                            if (Main.cp.isParked[k] == 1) {
                                btn[k].setStyle("-fx-font-size : 20px;-fx-background-color: #" + pBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                                carNoLabel[k].setText("(" + Main.cp.arr1.get(Main.cp.searchCarIndex(k)).carNO + ")");
                            } else {
                                btn[k].setStyle("-fx-font-size : 20px;-fx-background-color: #" + eBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                                carNoLabel[k].setText("(ว่าง)");
                            }
                        }
                        switchmode = false;
                    } else {
                        switchmode = false;
                    }

                }

            });
        }
        gridPane.setAlignment(Pos.CENTER);
        return gridPane;
    }

    public void infoBox(int index) {
        Stage infoStage = new Stage();
        infoStage.initModality(Modality.APPLICATION_MODAL);
        Clock c1 = new Clock();

        Button btW = new Button("ถอนรถ");
        Button btM = new Button("ย้ายรถ");

        c1.showTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn);
        c1.getTime().setStyle("-fx-font-size : 20px");
        Label crLabel = new Label("ทะเบียนรถ : " + Main.cp.arr1.get(Main.cp.searchCarIndex(index)).carNO);
        Label areaLabel = new Label("ที่จอด : " + String.format("%c%d", 65 + index / 5, index % 5 + 1));
        Label duLarbel = new Label("เวลาจอด : ");

        crLabel.setStyle("-fx-font-size : 20px");
        areaLabel.setStyle("-fx-font-size : 20px");
        duLarbel.setStyle("-fx-font-size : 20px");

        VBox vbox1 = new VBox();
        HBox hbox = new HBox();
        hbox.setAlignment(Pos.CENTER);

        HBox btWMBox = new HBox(btW, new Label("  "), btM);
        btWMBox.setAlignment(Pos.CENTER);

        hbox.getChildren().addAll(duLarbel, c1.getTime());
        vbox1.getChildren().addAll(crLabel, areaLabel, hbox, btWMBox);
        vbox1.setAlignment(Pos.CENTER);

        btW.setOnAction(e -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("ยืนยัน");
            alert.setHeaderText("คุณต้องการถอนรถหรือไม่");
            alert.setContentText("ถอนรถทะเบียน : " + Main.cp.arr1.get(Main.cp.searchCarIndex(index)).carNO + "         จุดจอด : " + String.format("%c%d", 65 + index / 5, index % 5 + 1));
            Optional<ButtonType> result = alert.showAndWait();
            if (result.get() == ButtonType.OK) {
                try {
                    Receipt.showReceipt2(index);
                    Main.cp.checkOut2(index);
                } catch (IOException ex) {
                    
                }
                for (int i = 0; i < btn.length; i++) {
                    if (Main.cp.isParked[i] == 1) {
                        btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #" + pBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                        carNoLabel[i].setText("(" + Main.cp.arr1.get(Main.cp.searchCarIndex(i)).carNO + ")");
                    } else {
                        btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #"+eBT+";-fx-border-color: #000000; -fx-border-width: 1px;");
                        carNoLabel[i].setText("(ว่าง)");
                    }
                }
                infoStage.close();
            }
        });

        btM.setOnAction(e -> {
            ViewCar.switchmode = true;
            infoStage.close();

        });
        Scene scene = new Scene(vbox1, 400, 150);
        infoStage.setScene(scene);
        infoStage.show();
    }

    public void depositBox(int index) {
        Stage dpStage = new Stage();
        dpStage.initModality(Modality.APPLICATION_MODAL);
        Label placeLabel = new Label(String.format("%c%d", 65 + index / 5, index % 5 + 1));
        Label blankLabel1 = new Label("     ");
        Label blankLabel2 = new Label("     ");
        Label erLabel = new Label("กรุณากรอกทะเบียนรถ : ");
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

        Button btOK = new Button("ยืนยัน");
        Button btCancel = new Button("ยอกเลิก");
        hbox2.getChildren().addAll(btOK, blankLabel1, btCancel);

        vbox.getChildren().addAll(placeLabel, hbox1, blankLabel2, hbox2);

        Scene scene = new Scene(vbox, 400, 150);
        dpStage.setScene(scene);
        dpStage.show();

        dpField.setTextFormatter(new TextFormatter<>((change) -> {
            change.setText(change.getText().toUpperCase());
            return change;
        }));

        btOK.setOnAction(e -> {
            if (dpField.getText().length() >= 3) {
                Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
                String reFormStr = Car.reFormStrCarNo(dpField.getText());
                alert.setHeaderText("คุณต้องฝากรถหรือไม่");
                alert.setContentText("รถป้ายทะเบียน : " + reFormStr + "        จุดจอด : " + String.format("%c%d", 65 + index / 5, index % 5 + 1));
                Optional<ButtonType> result = alert.showAndWait();
                if (result.get() == ButtonType.OK) {
                    CarTicket.showTicket2(reFormStr, index);
                    dpField.setText("");
                    for (int i = 0; i < btn.length; i++) {
                        if (Main.cp.isParked[i] == 1) {
                            btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #" + pBT + ";-fx-border-color: #000000; -fx-border-width: 1px;");
                            carNoLabel[i].setText("(" + Main.cp.arr1.get(Main.cp.searchCarIndex(i)).carNO + ")");
                        } else {
                             btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #"+eBT+";-fx-border-color: #000000; -fx-border-width: 1px;");
                            carNoLabel[i].setText("(ว่าง)");
                        }
                    }
                    dpStage.close();
                }
            } else {
                Alert alert2 = new Alert(Alert.AlertType.WARNING);
                alert2.setTitle("ทะบียนรถ");
                alert2.setHeaderText(null);
                alert2.setContentText("กรุณากรอกทะเบียนรถให้ถูกต้อง");
                alert2.showAndWait();
            }

        });
        btCancel.setOnAction(e -> {
            dpField.setText("");
            dpStage.close();
        });
    }

}
