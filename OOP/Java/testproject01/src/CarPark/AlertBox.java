/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.io.IOException;
import java.util.Optional;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Alert;
import javafx.scene.control.Button;
import javafx.scene.control.ButtonType;
import javafx.scene.control.Label;
import javafx.scene.control.TextField;
import javafx.scene.layout.GridPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.layout.VBox;
import javafx.stage.Modality;
import javafx.stage.Stage;

/**
 *
 * @author PURE
 */
public class AlertBox {

    public void yesNoBox(String title, String message) {
        Stage window = new Stage();
        window.initModality(Modality.APPLICATION_MODAL);
        window.setTitle(title);
        VBox vbox = new VBox();
        HBox hbox = new HBox();
        vbox.setAlignment(Pos.CENTER);
        hbox.setAlignment(Pos.CENTER);
        Label msLabel = new Label(message);
        Label blankLabel1 = new Label("     ");
        Label blankLabel2 = new Label("     ");
        msLabel.setStyle("-fx-font-size : 15px");
        Button btOK = new Button("OK");
        Button btCancel = new Button("Cancel");
        hbox.getChildren().addAll(btOK, blankLabel1, btCancel);
        vbox.getChildren().addAll(msLabel, blankLabel2, hbox);

        btOK.setOnAction(e -> {
            Alert alert = new Alert(Alert.AlertType.CONFIRMATION);
            alert.setTitle("test");
            alert.setContentText("");
            Optional<ButtonType> result = alert.showAndWait();
            if (result.get() == ButtonType.OK) {

            }

        });
        btCancel.setOnAction(e -> {

        });

        Scene scene = new Scene(vbox, 400, 150);
        window.setScene(scene);
        window.show();
    }

}
