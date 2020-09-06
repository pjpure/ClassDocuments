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
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.image.Image;
import javafx.scene.image.ImageView;
import javafx.scene.layout.HBox;


public class AboutView  {

    public Node about() throws FileNotFoundException {
        FileInputStream input1 = new FileInputStream("resources/about.png");
        Image imageAbout = new Image(input1);
        
        ImageView aboutImage = new ImageView(imageAbout);
        
        
        HBox root = new HBox();
        root.getChildren().add(aboutImage);
        
        root.setMinSize(725, 725);
        root.setMaxSize(725, 725);
        root.setAlignment(Pos.CENTER);
        return root;
    }
}
