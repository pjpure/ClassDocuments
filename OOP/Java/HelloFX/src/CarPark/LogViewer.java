/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

/**
 *
 * @author ppbas
 */
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javafx.application.Application;
import javafx.beans.property.SimpleStringProperty;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Group;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.VBox;
import javafx.scene.text.Font;
import javafx.stage.Stage;

public class LogViewer extends Application { 

    public static void main(String[] args) {

        launch(args);
    }

    @Override
    public void start(Stage stage) throws FileNotFoundException {
        TableView<Person> table = new TableView<Person>();
        ArrayList<Log> arrlog = new ArrayList<>();
        ObservableList<Person> data = FXCollections.observableArrayList();
            arrlog = FileIO.readLog();

            for (int i = 0; i < arrlog.size(); i++) {
                data.add(new Person(arrlog.get(i).id, arrlog.get(i).area, arrlog.get(i).dur, arrlog.get(i).in, arrlog.get(i).out));
            }
        
        Scene scene = new Scene(new Group());
        Stage logStage = new Stage();
        logStage.setTitle("LogViewer");
        logStage.setWidth(660);
        logStage.setHeight(490);
        logStage.setMaxWidth(660);
        logStage.setMinWidth(660);
        logStage.setMaxHeight(490);
        logStage.setMinHeight(490);
        final Label label = new Label("LogViewer");
        label.setFont(new Font("Arial", 20));
        label.setAlignment(Pos.CENTER);
        table.setEditable(false);

        TableColumn caridCol = new TableColumn("Car ID");
        caridCol.setMinWidth(80);
        caridCol.setCellValueFactory(
                new PropertyValueFactory<Person, String>("carid"));
        caridCol.setStyle("-fx-alignment: CENTER;");

        TableColumn areaCol = new TableColumn("Area");
        areaCol.setMinWidth(50);
        areaCol.setCellValueFactory(
                new PropertyValueFactory<Person, String>("area"));
        areaCol.setStyle("-fx-alignment: CENTER;");

        TableColumn durCol = new TableColumn("Duration");
        durCol.setMinWidth(100);
        durCol.setCellValueFactory(
                new PropertyValueFactory<Person, String>("duration"));
        durCol.setStyle("-fx-alignment: CENTER;");

        TableColumn dateinCol = new TableColumn("DateIn");
        dateinCol.setMinWidth(180);
        dateinCol.setCellValueFactory(
                new PropertyValueFactory<Person, String>("datein"));
        dateinCol.setStyle("-fx-alignment: CENTER;");

        TableColumn dateoutCol = new TableColumn("DateOut");
        dateoutCol.setMinWidth(180);
        dateoutCol.setCellValueFactory(
                new PropertyValueFactory<Person, String>("dateout"));
        dateoutCol.setStyle("-fx-alignment: CENTER;");

        table.setItems(data);
        table.getColumns().addAll(caridCol, areaCol, durCol, dateinCol, dateoutCol);

        final VBox vbox = new VBox();
        vbox.setSpacing(5);
        vbox.setPadding(new Insets(10, 0, 0, 10));
        vbox.getChildren().addAll(label, table);
        vbox.setAlignment(Pos.CENTER);
        ((Group) scene.getRoot()).getChildren().addAll(vbox);

        logStage.setScene(scene);
        logStage.show();
    }

    public static class Person {

        private final SimpleStringProperty carid;
        private final SimpleStringProperty area;
        private final SimpleStringProperty duration;
        private final SimpleStringProperty datein;
        private final SimpleStringProperty dateout;

        private Person(String carid, String area, String duration, String datein, String dateout) {
            this.carid = new SimpleStringProperty(carid);
            this.area = new SimpleStringProperty(area);
            this.duration = new SimpleStringProperty(duration);
            this.datein = new SimpleStringProperty(datein);
            this.dateout = new SimpleStringProperty(dateout);

        }

        public String getCarid() {
            return carid.get();
        }

        public void setCarid(String data) {
            carid.set(data);
        }

        public String getArea() {
            return area.get();
        }

        public void setArea(String data) {
            area.set(data);
        }

        public String getDuration() {
            return duration.get();
        }

        public void setDuration(String data) {
            duration.set(data);
        }

        public String getDatein() {
            return datein.get();
        }

        public void setDatein(String in) {
            datein.set(in);
        }

        public String getDateout() {
            return dateout.get();
        }

        public void setDateout(String out) {
            dateout.set(out);
        }

    }
}
