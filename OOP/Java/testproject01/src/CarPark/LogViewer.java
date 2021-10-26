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
import javafx.scene.control.Alert;
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
        TableView<Data> table = new TableView<Data>();
        ArrayList<Log> arrlog = new ArrayList<>();
        ObservableList<Data> data = FXCollections.observableArrayList();
        try {
            arrlog = FileIO.readLog();
        } catch (FileNotFoundException fileNotFoundException) {
            Alert alert = new Alert(Alert.AlertType.WARNING);
            alert.setTitle("Log");
            alert.setHeaderText(null);
            alert.setContentText("ขณะนี้ยังไม่มีการบันทึกLog");
            alert.showAndWait();
        }

        for (int i = 0; i < arrlog.size(); i++) {
            data.add(new Data(arrlog.get(i).id, arrlog.get(i).area, arrlog.get(i).dur, arrlog.get(i).in, arrlog.get(i).out,arrlog.get(i).price));
        }

        Scene scene = new Scene(new Group());
        Stage logStage = new Stage();
        logStage.setTitle("LogViewer");
        logStage.setWidth(710);
        logStage.setHeight(490);
//        logStage.setMaxWidth(710);
//        logStage.setMinWidth(710);
//        logStage.setMaxHeight(490);
//        logStage.setMinHeight(490);
logStage.sizeToScene();
        final Label label = new Label("LogViewer");
        label.setFont(new Font("Arial", 20));
        label.setAlignment(Pos.CENTER);
        table.setEditable(false);

        TableColumn<Data, String> caridCol = new TableColumn("เลขป้ายทะเบียน");
        caridCol.setMinWidth(80);
        caridCol.setCellValueFactory(
                new PropertyValueFactory<>("carid"));
        caridCol.setStyle("-fx-alignment: CENTER;");

        TableColumn<Data, String> areaCol = new TableColumn("พื้นที่จอด");
        areaCol.setMinWidth(50);
        areaCol.setCellValueFactory(
                new PropertyValueFactory<>("area"));
        areaCol.setStyle("-fx-alignment: CENTER;");

        TableColumn<Data, String> durCol = new TableColumn("ระยะเวลา");
        durCol.setMinWidth(100);
        durCol.setCellValueFactory(
                new PropertyValueFactory<>("duration"));
        durCol.setStyle("-fx-alignment: CENTER;");

        TableColumn<Data, String> dateinCol = new TableColumn("วันที่เข้า");
        dateinCol.setMinWidth(180);
        dateinCol.setCellValueFactory(
                new PropertyValueFactory<>("datein"));
        dateinCol.setStyle("-fx-alignment: CENTER;");

        TableColumn<Data, String> dateoutCol = new TableColumn("วันที่ออก");
        dateoutCol.setMinWidth(180);
        dateoutCol.setCellValueFactory(
                new PropertyValueFactory<>("dateout"));
        dateoutCol.setStyle("-fx-alignment: CENTER;");

        TableColumn<Data,String> priceCol = new TableColumn("ราคา(THB)");
        priceCol.setMinWidth(80);
        priceCol.setCellValueFactory(
                new PropertyValueFactory<>("price"));
        priceCol.setStyle("-fx-alignment: CENTER;");

        table.setItems(data);
        table.getColumns().addAll(caridCol, areaCol, durCol, dateinCol, dateoutCol, priceCol);
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);
        
        final VBox vbox = new VBox();
        vbox.setSpacing(5);
        vbox.setPadding(new Insets(10, 10, 10, 10));
        vbox.getChildren().addAll(label, table);
        vbox.setAlignment(Pos.CENTER);
        ((Group) scene.getRoot()).getChildren().addAll(vbox);

        logStage.setScene(scene);
        logStage.show();
    }

    public static class Data {

        private final String carid;
        private final String area;
        private final String duration;
        private final String datein;
        private final String dateout;
        private final String price;

        private Data(String carid, String area, String duration, String datein, String dateout, String price) {
            this.carid = carid;
            this.area = area;
            this.duration = duration;
            this.datein = datein;
            this.dateout = dateout;
            this.price = price;
        }

        public String getCarid() {
            return carid;
        }

        public String getArea() {
            return area;
        }

        public String getDuration() {
            return duration;
        }

        public String getDatein() {
            return datein;
        }

        public String getDateout() {
            return dateout;
        }

        public String getPrice() {
            return price;
        }

    }
}

//    public static class Data {
//
//        private final SimpleStringProperty carid;
//        private final SimpleStringProperty area;
//        private final SimpleStringProperty duration;
//        private final SimpleStringProperty datein;
//        private final SimpleStringProperty dateout;
//
//        private Data(String carid, String area, String duration, String datein, String dateout) {
//            this.carid = new SimpleStringProperty(carid);
//            this.area = new SimpleStringProperty(area);
//            this.duration = new SimpleStringProperty(duration);
//            this.datein = new SimpleStringProperty(datein);
//            this.dateout = new SimpleStringProperty(dateout);
//
//        }
//
//        public String getCarid() {
//            return carid.get();
//        }
//
//        public void setCarid(String data) {
//            carid.set(data);
//        }
//
//        public String getArea() {
//            return area.get();
//        }
//
//        public void setArea(String data) {
//            area.set(data);
//        }
//
//        public String getDuration() {
//            return duration.get();
//        }
//
//        public void setDuration(String data) {
//            duration.set(data);
//        }
//
//        public String getDatein() {
//            return datein.get();
//        }
//
//        public void setDatein(String in) {
//            datein.set(in);
//        }
//
//        public String getDateout() {
//            return dateout.get();
//        }
//
//        public void setDateout(String out) {
//            dateout.set(out);
//        }
//
//    }
//}

