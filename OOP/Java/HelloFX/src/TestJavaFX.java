
import javafx.scene.control.Button;
import javafx.application.Application;
import javafx.scene.Scene;
import javafx.stage.Stage;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author PURE
 */
public class TestJavaFX extends Application{

    @Override
    public void start(Stage stage) throws Exception {
        Button btOK = new Button("OK");
        Scene scene = new Scene(btOK, 250, 200);
        stage.setTitle("Test");
        stage.setScene(scene);
        stage.show();
        
        Stage stage2 = new Stage();
        stage2.setTitle("Test2");
        Scene sc2 = new Scene(new Button("Cancle"),250,200);
        stage2.setScene(sc2);
        stage2.show();
        
    }
    public static void main(String[] args) {
        launch(args);
    }
    
}
