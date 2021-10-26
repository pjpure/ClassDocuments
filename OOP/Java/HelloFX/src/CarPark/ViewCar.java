/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

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
    //int x;
    public static Button[] btn = new Button[25];
    @Override
    public void start(Stage stage) throws Exception {

        Stage viewStage = new Stage();

        GridPane gridPane = new GridPane();

       

        for (int i = 0; i < btn.length; i++) {
            int j = i / 5;
            btn[i] = new Button(String.format("%c%d", 65 + j, i % 5 + 1));
            btn[i].setPrefSize(100, 100);
            if (Main.cp.isParked[i] == 1) {
                btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #ff0000;-fx-border-color: #000000; -fx-border-width: 1px;");
            } else {
                btn[i].setStyle("-fx-font-size : 20px;-fx-background-color: #00ff00;-fx-border-color: #000000; -fx-border-width: 1px;");
            }

            gridPane.add(btn[i], i % 5, j);
        }

        for (int i = 0; i < btn.length; i++) {
            int j=i;
            btn[j].setOnAction(e -> {
                if (Main.cp.isParked[j] == 1) {
                    AlertBox.infoBox(j);
                }else{
                    AlertBox.depositBox(j);                                     
                }
            });
        }
        

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
