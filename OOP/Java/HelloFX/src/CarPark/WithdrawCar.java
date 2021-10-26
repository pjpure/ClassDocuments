/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
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
public class WithdrawCar extends Application{

    @Override
    public void start(Stage stage) throws Exception {
        Stage withdraStage = new Stage();
        
        VBox vbox = new VBox();
        vbox.setAlignment(Pos.CENTER);
        
        Label paLabel = new Label("Enter parking area : ");
        Label blankLabel = new Label("           ");
        paLabel.setStyle("-fx-font-size : 20px");
        TextField paField = new TextField();
        HBox hbDeposit = new HBox();
        hbDeposit.setAlignment(Pos.CENTER);
        hbDeposit.getChildren().addAll(paLabel,paField);
        
        Label resultLabel = new Label();
        

        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        HBox hbButton = new HBox();
        hbButton.setAlignment(Pos.CENTER);
        hbButton.getChildren().addAll(btOK,blankLabel,btCancel);
        
        Label blankLabel1 = new Label("    ");
        Label blankLabel2 = new Label("    ");

        vbox.getChildren().addAll(hbDeposit,blankLabel1,hbButton,blankLabel2,resultLabel);
        
        btOK.setOnAction(e ->{
            System.out.println("Withdraw :"+paField.getText());
            try {
                if(Main.cp.checkArrIndex(paField.getText())!=-1){
                    resultLabel.setStyle("-fx-font-size : 15px;-fx-text-fill: #07cc00");
                   resultLabel.setText("Withdraw car "+Main.cp.arr1.get(Main.cp.searchCarIndex(Main.cp.checkArrIndex(paField.getText()))).carNO+" successfully");
                   Main.cp.checkOut(paField.getText());
                }else{
                    resultLabel.setStyle("-fx-font-size : 15px;-fx-text-fill: #ff0000");
                    resultLabel.setText("There's no Car in Parking Area");
                }             
            } catch (IOException ex) {
                Logger.getLogger(WithdrawCar.class.getName()).log(Level.SEVERE, null, ex);
            }
            paField.setText("");
        });
        btCancel.setOnAction(e ->{
            paField.setText("");
            withdraStage.close();
        });

        Scene scene = new Scene(vbox,400,150); 
        withdraStage.setTitle("Withdraw Car");
        withdraStage.setScene(scene);
        withdraStage.initModality(Modality.APPLICATION_MODAL);
        withdraStage.show();
    }
     public static void main(String[] args) {
        launch(args);
    }
}
