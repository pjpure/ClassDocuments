/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarParking;

import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.GridPane;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class ViewCar extends Application {
    @Override
    public void start(Stage stage) throws Exception {
        
        Stage viewStage = new Stage();
        
        GridPane gridPane = new GridPane();

        Button[] btn = new Button[25];

        for (int i = 0; i < btn.length; i++) {
                int j=i/5;                    
                btn[i] = new Button(String.format("%c%d",65+j,i+1));
                btn[i].setPrefSize(100, 100);               
                btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #00ff00;-fx-border-color: #000000; -fx-border-width: 1px;");
                gridPane.add(btn[i], i%5, j);           
        }
        
        btn[0].setOnAction(e -> {

        });
        btn[1].setOnAction(e -> {
            
        });
        btn[2].setOnAction(e -> {
            
        });
        btn[3].setOnAction(e -> {
            
        });
        btn[4].setOnAction(e -> {
            
        });
        btn[5].setOnAction(e -> {
            
        });
        btn[6].setOnAction(e -> {
            
        });
        btn[7].setOnAction(e -> {
            
        });
        btn[8].setOnAction(e -> {
            
        });
        btn[9].setOnAction(e -> {
            
        });
        btn[10].setOnAction(e -> {
            
        });
        btn[11].setOnAction(e -> {
            
        });
        btn[12].setOnAction(e -> {
            
        });
        btn[13].setOnAction(e -> {
            
        });
        btn[14].setOnAction(e -> {
            
        });
        btn[15].setOnAction(e -> {
            
        });
        btn[16].setOnAction(e -> {
            
        });
        btn[17].setOnAction(e -> {
            
        });
        btn[18].setOnAction(e -> {
            
        });
        btn[19].setOnAction(e -> {
            
        });
        btn[20].setOnAction(e -> {
            
        });
        btn[21].setOnAction(e -> {
            
        });
        btn[22].setOnAction(e -> {
            
        });
        btn[23].setOnAction(e -> {
            
        });
        btn[24].setOnAction(e -> {
            
        });
                      
        gridPane.setAlignment(Pos.CENTER);
        Scene scene = new Scene(gridPane);
        stage.setScene(scene);
        viewStage.setTitle("View Car");        
        viewStage.setScene(scene);    
        viewStage.setX(900);
        viewStage.setY(100);
        viewStage.initModality(Modality.APPLICATION_MODAL);
        viewStage.show();
    }
    
    public static void main(String[] args) {
        launch(args);
    }

}
