/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Ch15;

import javafx.application.Application;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.layout.BorderPane;
import javafx.scene.layout.HBox;
import javafx.scene.layout.StackPane;
import javafx.scene.shape.Circle;
import javafx.stage.Stage;
/**
 *
 * @author PURE
 */
public class CircleControl extends Application {

    CirclePane c1 = new CirclePane();

    @Override
    public void start(Stage stage) throws Exception {

        BorderPane bPane = new BorderPane();
        HBox hbox = new HBox();
        hbox.setAlignment(Pos.CENTER);
        Button enBtn = new Button("Enlarge");
        Button shBtn = new Button("Shrink");
        hbox.getChildren().addAll(enBtn, shBtn);
        bPane.setBottom(hbox);
        bPane.setCenter(c1);
//pattern 1:
//        enBtnHandlerClass h1 = new enBtnHandlerClass();
//        enBtn.setOnAction(h1);

//pattern 2:
//        enBtn.setOnAction(new EventHandler<ActionEvent>() {
//            @Override
//            public void handle(ActionEvent t) {
//                c1.enlarge();
//            }
//        });

//pattern 3:
        enBtn.setOnAction((ActionEvent t) -> {
            c1.enlarge();
        });

//        shBtnHandlerClass h2 = new shBtnHandlerClass();
//        shBtn.setOnAction(h2);
        
        shBtn.setOnAction((ActionEvent t) -> {
            c1.shrink();
        });

        Scene scene = new Scene(bPane, 400, 200);
        stage.setScene(scene);
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }

//    private class enBtnHandlerClass implements EventHandler<ActionEvent> {
//
//        @Override
//        public void handle(ActionEvent t) {
//            c1.enlarge();
//        }
//    }
//    private class shBtnHandlerClass implements EventHandler<ActionEvent> {
//
//        @Override
//        public void handle(ActionEvent t) {
//            c1.shrink();
//        }
//    }

}

class CirclePane extends StackPane {

    Circle circle = new Circle(20);

    public CirclePane() {
        getChildren().add(circle);
    }

    void enlarge() {
        circle.setRadius(circle.getRadius() + 2);
    }

    void shrink() {
        circle.setRadius(circle.getRadius() - 2);
    }
}
