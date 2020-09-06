/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.util.Date;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class Receipt {

    public static void showReceipt(String carPlace) {
        DateFormat df = new DateFormat();
        Stage receipt = new Stage();
        String pArea;
        int index;
        if (carPlace.length() <= 2) {
             index = Main.cp.checkArrPlace(carPlace);
             pArea = carPlace;
        } else {
            index = Main.cp.checkArrayCarNo(carPlace);
            pArea = CarParking.carPlaceName[index];
        }
       

        receipt.setTitle("ใบเสร็จรับเงิน");
        Label kmitlLabel1 = new Label("KMITL");
        kmitlLabel1.setStyle("-fx-font-size :17px");
        Label kmitlLabel2 = new Label("SMART CAR PARKING");
        kmitlLabel2.setStyle("-fx-font-size :17px");

        Label dlLabel = new Label("เวลาเข้า : " + Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn);

        VBox vbox2 = new VBox();
        vbox2.setAlignment(Pos.CENTER);
        vbox2.getChildren().addAll(kmitlLabel1, kmitlLabel2);

        Label placeLabel = new Label("จุดจอดรถ : " + pArea + "  ทะเบียนรถ : " + Main.cp.arr1.get(Main.cp.searchCarIndex(index)).carNO);
        Label timeLabel = new Label("เวลาออก : " + new Date());
        Label hrsLabel = new Label("เวลาจอด : " + df.toTime(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)) + "    (ชั่วโมง:นาที:วินาที)");
        Label moneyLabel = new Label("ค่าบริการจอดรถ :   " + FeeCal.fee(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)) + "   บาท");
        Label fineLabel = new Label("ค่าปรับจอดข้ามวัน :   " + FeeCal.fee2(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)) + "   บาท");
        Label totalLabel = new Label("" + FeeCal.totalFee(FeeCal.fee(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)), FeeCal.fee2(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn))));
        Label textTotal = new Label("รวมเป็นเงิน :  ");
        Label bahtLabel = new Label("  บาท");
        HBox hbox2 = new HBox(textTotal, totalLabel, bahtLabel);
        hbox2.setAlignment(Pos.BOTTOM_CENTER);

        placeLabel.setStyle("-fx-font-size :17px");
        timeLabel.setStyle("-fx-font-size :17px");
        dlLabel.setStyle("-fx-font-size :17px");
        hrsLabel.setStyle("-fx-font-size :17px");
        moneyLabel.setStyle("-fx-font-size :17px");
        fineLabel.setStyle("-fx-font-size :17px");
        textTotal.setStyle("-fx-font-size :17px");
        bahtLabel.setStyle("-fx-font-size :17px");
        totalLabel.setStyle("-fx-font-size :23px");

        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);
        vbox.getChildren().addAll(vbox2, new Label(""), moneyLabel, fineLabel, hbox2, new Label("(ราคานี้รวามภาษีมูลค่าเพิ่มแล้ว)"), new Label(""), placeLabel, dlLabel, timeLabel, hrsLabel, new Label("---------------------------------------------"), new Label("ขอขอบคุณที่ใช้บริการ"));

        Scene scene = new Scene(vbox, 320, 380);

        receipt.setScene(scene);
        receipt.show();
    }

    public static void showReceipt2(int index) {
        DateFormat df = new DateFormat();
        Stage receipt = new Stage();
        receipt.setTitle("ใบเสร็จรับเงิน");
        Label kmitlLabel1 = new Label("KMITL");
        kmitlLabel1.setStyle("-fx-font-size :17px");
        Label kmitlLabel2 = new Label("SMART CAR PARKING");
        kmitlLabel2.setStyle("-fx-font-size :17px");

        Label dlLabel = new Label("เวลาเข้า : " + Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn);

        VBox vbox2 = new VBox();
        vbox2.setAlignment(Pos.CENTER);
        vbox2.getChildren().addAll(kmitlLabel1, kmitlLabel2);

        Label placeLabel = new Label("จุดจอดรถ : " + String.format("%c%d", 65 + index/5, index% 5 + 1) + "  ทะเบียนรถ : " + Main.cp.arr1.get(Main.cp.searchCarIndex(index)).carNO);
        Label timeLabel = new Label("เวลาออก : " + new Date());
        Label hrsLabel = new Label("เวลาจอด : " + df.toTime(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)) + "    (ชั่วโมง:นาที:วินาที)");
        Label moneyLabel = new Label("ค่าบริการจอดรถ :   " + FeeCal.fee(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)) + "   บาท");
        Label fineLabel = new Label("ค่าปรับจอดข้ามวัน :   " + FeeCal.fee2(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)) + "   บาท");
        Label totalLabel = new Label("" + FeeCal.totalFee(FeeCal.fee(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn)), FeeCal.fee2(df.calTime(Main.cp.arr1.get(Main.cp.searchCarIndex(index)).d1.dateCheckIn))));
        Label textTotal = new Label("รวมเป็นเงิน :  ");
        Label bahtLabel = new Label("  บาท");
        HBox hbox2 = new HBox(textTotal, totalLabel, bahtLabel);
        hbox2.setAlignment(Pos.BOTTOM_CENTER);

        placeLabel.setStyle("-fx-font-size :17px");
        timeLabel.setStyle("-fx-font-size :17px");
        dlLabel.setStyle("-fx-font-size :17px");
        hrsLabel.setStyle("-fx-font-size :17px");
        moneyLabel.setStyle("-fx-font-size :17px");
        fineLabel.setStyle("-fx-font-size :17px");
        textTotal.setStyle("-fx-font-size :17px");
        bahtLabel.setStyle("-fx-font-size :17px");
        totalLabel.setStyle("-fx-font-size :23px");

        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);
        vbox.getChildren().addAll(vbox2, new Label(""), moneyLabel, fineLabel, hbox2, new Label("(ราคานี้รวามภาษีมูลค่าเพิ่มแล้ว)"), new Label(""), placeLabel, dlLabel, timeLabel, hrsLabel, new Label("---------------------------------------------"), new Label("ขอขอบคุณที่ใช้บริการ"));

        Scene scene = new Scene(vbox, 320, 380);

        receipt.setScene(scene);
        receipt.show();
    }

}
