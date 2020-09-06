/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarParking;

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
public class WithdrawCar extends Application{

    @Override
    public void start(Stage stage) throws Exception {
        Stage withdraStage = new Stage();
        GridPane grid = new GridPane();
        grid.setPadding(new Insets(10, 10, 10, 10));
        grid.setHgap(10);
        grid.setVgap(8);
        
        Label paLabel = new Label("Parking Area : ");
        Label blankLabel1 = new Label("                       ");
        Label blankLabel2 = new Label("     ");
        paLabel.setStyle("-fx-font-size : 20px");
        TextField paField = new TextField();

        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        HBox hbOK = new HBox();
        hbOK.getChildren().addAll(blankLabel1,btOK);
        HBox hbCancel = new HBox();
        hbCancel.getChildren().addAll(blankLabel2,btCancel);
        
        
        grid.add(paLabel, 0, 0);
        grid.add(paField, 1, 0);
        grid.add(hbOK, 0, 2);
        grid.add(hbCancel, 1, 2);
        grid.setAlignment(Pos.CENTER);
        
        btOK.setOnAction(e ->{
            System.out.println("Withdraw :"+paField.getText());
            paField.setText("");
        });
        btCancel.setOnAction(e ->{
            paField.setText("");
            withdraStage.close();
        });

        Scene scene = new Scene(grid,400,150); 
        withdraStage.setTitle("Withdraw Car");
        withdraStage.setScene(scene);
        withdraStage.initModality(Modality.APPLICATION_MODAL);
        withdraStage.show();
    }
     public static void main(String[] args) {
        launch(args);
    }
}
