/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.FrontEnd;

import javafx.application.Application;
import static javafx.application.Application.launch;
import javafx.event.ActionEvent;
import javafx.scene.control.ScrollBar;
import javafx.scene.paint.Color;
import javafx.stage.Stage;

/**
 *
 * @author USER
 */
public class GUI extends Application {

    @Override
    public void start(Stage stage) throws Exception {
        Register a = new Register(stage);
        stage.setScene(a.scene[1]);
        stage.setTitle("LOGIN_PAGE");
        stage.show();

    }

    public static void main(String[] args) {
        launch(args);
    }
}
