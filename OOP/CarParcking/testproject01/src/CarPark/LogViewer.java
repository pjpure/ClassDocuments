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
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.collections.transformation.FilteredList;
import javafx.collections.transformation.SortedList;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Node;
import javafx.scene.control.Alert;
import javafx.scene.control.Label;
import javafx.scene.control.TableColumn;
import javafx.scene.control.TableView;
import javafx.scene.control.TextField;
import javafx.scene.control.TextFormatter;
import javafx.scene.control.cell.PropertyValueFactory;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;

public class LogViewer {

    public Node log() throws FileNotFoundException {
        TableView<Data> table = new TableView<Data>();
        ArrayList<Log> arrlog = new ArrayList<>();
        ObservableList<Data> data = FXCollections.observableArrayList();
        FilteredList<Data> filteredData = new FilteredList(data, p -> true);
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
            data.add(new Data(arrlog.get(i).id, arrlog.get(i).area, arrlog.get(i).dur, arrlog.get(i).in, arrlog.get(i).out, Double.valueOf(arrlog.get(i).price)));
        }

        table.setEditable(false);
        table.setMinHeight(675);
        table.setMaxHeight(675);
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

        dateinCol.setSortable(false);
        TableColumn<Data, String> dateoutCol = new TableColumn("วันที่ออก");
        dateoutCol.setMinWidth(180);
        dateoutCol.setCellValueFactory(
                new PropertyValueFactory<>("dateout"));
        dateoutCol.setStyle("-fx-alignment: CENTER;");
        dateoutCol.setSortable(false);

        TableColumn<Data, Double> priceCol = new TableColumn("ราคา(THB)");
        priceCol.setMinWidth(80);
        priceCol.setCellValueFactory(
                new PropertyValueFactory<>("price"));
        priceCol.setStyle("-fx-alignment: CENTER;");

       // table.setItems(data);
        table.getColumns().addAll(caridCol, areaCol, durCol, dateinCol, dateoutCol, priceCol);
        table.setColumnResizePolicy(TableView.CONSTRAINED_RESIZE_POLICY);

        TextField search = new TextField();
        search.setTextFormatter(new TextFormatter<>((change) -> {
            change.setText(change.getText().toUpperCase()); 
            return change;
        }));
        search.setPrefSize(100, 20);
        search.setMaxSize(100, 20);
        search.textProperty().addListener((observable, oldValue, newValue) -> {
            filteredData.setPredicate(Data -> {
                if (newValue == null || newValue.isEmpty()) {
                    return true;
                }
                String reformFilter = newValue;

                if (Data.getCarid().contains(reformFilter)) {
                    return true; // Filter matches first name.
                } 
                return false; // Does not match.
            });
            
        });
        SortedList<Data> sortedData = new SortedList<>(filteredData);
        sortedData.comparatorProperty().bind(table.comparatorProperty());
        table.setItems(sortedData);
        Label searchLabel = new Label(" ค้นหาทะเบียนรถ");
        searchLabel.setStyle("-fx-font-size : 18px;");
        HBox hbox = new HBox();
        hbox.getChildren().addAll(search,searchLabel);
        final VBox vbox = new VBox();
        //vbox.setAlignment(Pos.CENTER);
        vbox.setSpacing(5);
        vbox.setPadding(new Insets(10, 10, 10, 10));
        vbox.getChildren().addAll(hbox, table);

        return vbox;

    }

    public static class Data {

        private final String carid;
        private final String area;
        private final String duration;
        private final String datein;
        private final String dateout;
        private final Double price;

        private Data(String carid, String area, String duration, String datein, String dateout, Double price) {
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

        public Double getPrice() {
            return price;
        }

    }
}
