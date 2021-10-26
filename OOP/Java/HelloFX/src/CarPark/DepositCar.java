/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.util.Date;
import javafx.application.Application;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
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
        
        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);
        
        Label vrLabel = new Label("Enter car registration : ");
        Label blankLabel = new Label("           ");
        vrLabel.setStyle("-fx-font-size : 20px");
        TextField vrField = new TextField();
        HBox hbDeposit = new HBox();
        hbDeposit.setAlignment(Pos.CENTER);
        hbDeposit.getChildren().addAll(vrLabel,vrField);
        
        Label resultLabel = new Label();
        resultLabel.setStyle("-fx-font-size : 15px;-fx-text-fill: #07cc00");

        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        HBox hbButton = new HBox();
        hbButton.setAlignment(Pos.CENTER);
        hbButton.getChildren().addAll(btOK,blankLabel,btCancel);
        
        Label blankLabel1 = new Label("    ");
        Label blankLabel2 = new Label("    ");

        vbox.getChildren().addAll(hbDeposit,blankLabel1,hbButton,blankLabel2,resultLabel);

        btOK.setOnAction(e -> {
            System.out.println("Deposit:" + vrField.getText());
            resultLabel.setText("Deposit at "+Main.cp.checkIn1(new Car(vrField.getText()))+" successfully");
            vrField.setText("");
        });
        btCancel.setOnAction(e -> {
            vrField.setText("");
            depositStage.close();
        });

        Scene scene = new Scene(vbox, 400, 150);
        depositStage.setTitle("Deposit Car");
        depositStage.setScene(scene);
        depositStage.initModality(Modality.APPLICATION_MODAL);
        depositStage.show();

    }

    public static void main(String[] args) {
        launch(args);
    }
}
