/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarParking;

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
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class DepositCar extends Application{
    @Override
    public void start(Stage stage) throws Exception {
        Stage depositStage = new Stage();
        GridPane grid = new GridPane();
        grid.setPadding(new Insets(10, 10, 10, 10));
        grid.setHgap(10);
        grid.setVgap(8);
        Label vrLabel = new Label("Enter car registration:");
        Label blankLabel1 = new Label("                                 ");
        Label blankLabel2 = new Label(" ");
        vrLabel.setStyle("-fx-font-size : 20px");
        TextField vrField = new TextField();

        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        HBox hbOK = new HBox();
        hbOK.getChildren().addAll(blankLabel1,btOK);
        HBox hbCancel = new HBox();
        hbCancel.getChildren().addAll(blankLabel2,btCancel);
        
        grid.add(vrLabel, 0, 0);
        grid.add(vrField, 1, 0);
        grid.add(hbOK, 0, 2);
        grid.add(hbCancel, 1, 2);
        
        grid.setAlignment(Pos.CENTER);
        
        btOK.setOnAction(e ->{
            System.out.println("Deposit:"+vrField.getText());
            vrField.setText("");
        });
        btCancel.setOnAction(e ->{
            vrField.setText("");
            depositStage.close();
        });

        Scene scene = new Scene(grid,400,150); 
        depositStage.setTitle("Deposit Car");
        depositStage.setScene(scene);
        depositStage.initModality(Modality.APPLICATION_MODAL);
        depositStage.show();
        
    }   
     public static void main(String[] args) {
        launch(args);
    }
}
