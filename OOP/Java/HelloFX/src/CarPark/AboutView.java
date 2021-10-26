/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

/**
 *
 * @author PURE
 */
import javafx.application.Application;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.layout.VBox;
import javafx.scene.text.Text;
import javafx.stage.Stage;

public class AboutView extends Application {

    public static void main(String[] args) {
        launch(args);
    }

    @Override
    public void start(Stage stage) {
        Text a = new Text();
        a.setText("This project is part of");
        a.setStyle("-fx-font: 24 arial;");
        Text e = new Text();
        e.setText("Object Oriented Programming (01076004)");
        e.setStyle("-fx-font: 24 arial;");
        Text f = new Text();
        f.setText("King Mongkut's Institute of Technology Ladkrabang");
        f.setStyle("-fx-font: 24 arial;");
        Text g = new Text();
        g.setText("Member List");
        g.setStyle("-fx-font: 24 arial;");
        Text b = new Text("Mr.Ponlapat Sanguansirikul 62010602 ");
        b.setStyle("-fx-font: 24 arial;");
        Text c = new Text("Mr.Pattapon Janchoo 62010619 ");
        c.setStyle("-fx-font: 24 arial;");
        Text d = new Text("Mr.Lihktbhum Likhitngam 62010795 ");
        d.setStyle("-fx-font: 24 arial;");
        VBox root = new VBox(15);
        root.getChildren().addAll(a,e,f,new Text("\n"),g,b,c,d);
        root.setAlignment(Pos.CENTER);
        Scene scene = new Scene(root, 800, 600);
        stage.setTitle("Testest");
        stage.setScene(scene);
        stage.show();
    }
}
