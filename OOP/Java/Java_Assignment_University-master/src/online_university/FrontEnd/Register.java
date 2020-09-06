package online_university.FrontEnd;

import javafx.application.Application;
import javafx.collections.FXCollections;
import javafx.collections.ObservableList;
import javafx.event.ActionEvent;
import javafx.event.EventHandler;
import javafx.geometry.Insets;
import javafx.geometry.Pos;
import javafx.scene.Scene;
import javafx.scene.control.Button;
import javafx.scene.control.ComboBox;
import javafx.scene.control.PasswordField;
import javafx.scene.control.ScrollBar;
import javafx.scene.control.ScrollPane;
import javafx.scene.control.TextField;
import javafx.scene.input.MouseEvent;
import javafx.scene.layout.HBox;
import javafx.scene.layout.VBox;
import javafx.scene.paint.Color;
import javafx.scene.text.Font;
import javafx.scene.text.Text;
import javafx.stage.Stage;
import online_university.BackEnd.*;

/**
 *
 * @author USER
 */
public class Register extends Application {

    boolean check;
    int i = 0, p = 0;
    VBox LogInpage = new VBox(5);
    VBox Registerpage = new VBox(4);
    VBox Registerpage2 = new VBox(4);
    HBox NameBox = new HBox(70);
    HBox PWBox = new HBox(70);
    HBox TextBox = new HBox(70);

    VBox Error_Page = new VBox(60);
    VBox NameBox2 = new VBox(10);
    HBox BackBox = new HBox(20);

    Button next = new Button("Login");
    TextField fillName = new TextField("YOUR ID");
    TextField fillPW = new PasswordField();

    Button back = new Button("back");

    ScrollPane sp = new ScrollPane();

    Text[] alltext;
    Button[] allbutton;
    Scene[] scene;
    VBox[] Row;
    TextField[] allfill;
    HBox[] Column;

//    ObservableList<String> options = FXCollections.observableArrayList("STUDENT", "TEACHER", "ADMIN");
    ObservableList<String> Registorr = FXCollections.observableArrayList("Student", "Staff");
    ObservableList<String> gender = FXCollections.observableArrayList("MALE", "FEMALE");

//    ComboBox comboBox = new ComboBox(options);
    ComboBox comboBox2 = new ComboBox(Registorr);
    ComboBox genderBox = new ComboBox(gender);

    //set all scene//   
    Scene s1 = new Scene(LogInpage, 250, 250);
    Scene s2 = new Scene(Error_Page, 250, 250);
    Scene s3 = new Scene(Registerpage, 500, 350);

    /////////////////////////////////////////////////////////////
    /////////////setting for scene///////////////////////////////
    //Create starting page//
    Register(Stage a) {
        settext();
        setVbox();
        settingscene();
        setbut();
        setHbox();
        setTextbox();
        SetErrpage();
        SetRegis();
        fillName.setText("Your ID");
        fillPW.setText("");
        LogInpage.setAlignment(Pos.CENTER);
        NameBox.setAlignment(Pos.CENTER);
        PWBox.setAlignment(Pos.CENTER);
        TextBox.setAlignment(Pos.CENTER);
        allbutton[3].setText("Register");
        allbutton[3].setAlignment(Pos.BOTTOM_RIGHT);
        alltext[1].setText("Welcome Please Login");
        alltext[1].setFill(Color.NAVY);
        alltext[1].setUnderline(true);
        NameBox.getChildren().add(fillName);
//        comboBox.setVisibleRowCount(2);
        PWBox.getChildren().add(fillPW);
        TextBox.getChildren().add(alltext[1]);
        LogInpage.getChildren().addAll(TextBox, NameBox, PWBox); //, comboBox);
        LogInpage.getChildren().addAll(next, allbutton[3]);
        next.setOnAction((ActionEvent t) -> {
            Person user = (Person) idcheckers();
            if (user != null) {
                System.out.println(user.getRole() + " LOGIN ");
            } else {
                a.setScene(scene[2]);
                a.setTitle("Error404_PAGE");
            }

        });
        allbutton[3].setOnAction((ActionEvent t) -> {
            a.setScene(scene[3]);
            a.setTitle("Registor_PAGE");
        });
        ///////////////ErrorPage//////////////////
        back.setOnAction((ActionEvent t) -> {
            Setbacktostartingpage();
            a.setScene(scene[1]);
            a.setTitle("LOGIN_PAGE");
        });
        ///////////Registor Page///////////////////
        ////// Back to Loginpage From RegistorPage
        allbutton[5].setOnAction((ActionEvent t) -> {
            Setbacktostartingpage();
            registerclear();
            alltext[12].setText("");
            a.setScene(scene[1]);
            a.setTitle("LOGIN_PAGE");
        });

        allbutton[4].setOnAction((ActionEvent t) -> {
            if (checkpassWord()) {
                for (int i = 1; i < 8; i++) {
                    System.out.println(allfill[i].getText());
                }
                alltext[12].setText(" Login Success Press Back To Continues ");
                if (comboBox2.getValue().equals("Student")) {
                    Student st = new Student(allfill[1].getText(), allfill[2].getText());
                    Authority.registor(st);
                }// get role
                else if (comboBox2.getValue().equals("Staff")) {
                    Staff st = new Staff(allfill[1].getText(), allfill[2].getText());
                    Authority.registor(st);
                }
                genderBox.getValue();
                System.out.println(comboBox2.getValue());
            } else {
                registerclear();
                registerclear();
                a.setScene(scene[2]);
                a.setTitle("Error_PAGE");
            }

        });

    }

    ///// set position error page ////
    void SetErrpage() {
        Error_Page.setAlignment(Pos.CENTER);
        NameBox2.setAlignment(Pos.CENTER);
        BackBox.setAlignment(Pos.BOTTOM_RIGHT);
        alltext[3].setText("Plesae check your ID or PASSWORD");
        alltext[3].setFill(Color.RED);
        alltext[2].setText("Error");
        alltext[2].setFont(Font.font(20));
        BackBox.getChildren().add(back);
        NameBox2.getChildren().addAll(alltext[2], alltext[3]);
        Error_Page.getChildren().addAll(NameBox2, BackBox);
    }

    void SetRegis() {
        alltext[0].setText("SELECTED YOUR ROLE :        ");
        alltext[4].setText("                  ENTER  YOUR ID : ");
        alltext[5].setText("   ENTER  YOUR PASSWORD : ");
        alltext[6].setText("  REPEAT YOUR PASSWORD : ");
        alltext[7].setText("    ENTER YOUR FIRSTNAME : ");
        alltext[8].setText("     ENTER YOUR LASTNAME : ");
        alltext[9].setText("                 ENTER YOUR AGE : ");
        alltext[10].setText("            ENTER YOUR E-MAIL : ");
        alltext[11].setText("SELECTED YOUR GENDER :  ");
        alltext[12].setText("");
        alltext[12].setFill(Color.RED);
        allbutton[4].setText("Register");
        allbutton[5].setText("back");
        for (int i = 1; i <= 7; i++) {
            Column[i].getChildren().addAll(alltext[i + 3], allfill[i]);
            Column[i].setAlignment(Pos.TOP_CENTER);
        }
        Column[0].setAlignment(Pos.TOP_CENTER);
        Column[0].getChildren().addAll(alltext[0], comboBox2);
        Column[8].setAlignment(Pos.CENTER);
        Column[8].getChildren().addAll(alltext[11], genderBox);
        Registerpage2.setAlignment(Pos.TOP_CENTER);
        for (int j = 0; j < 8; j++) {
            Registerpage2.getChildren().addAll(Column[j]);
        }
        allbutton[4].setAlignment(Pos.CENTER_RIGHT);
        allbutton[5].setAlignment(Pos.CENTER_RIGHT);
        Column[11].getChildren().addAll(allbutton[4], allbutton[5]);
        Column[11].setAlignment(Pos.CENTER);
        Registerpage.setAlignment(Pos.TOP_CENTER);
        Registerpage.getChildren().addAll(Registerpage2, Column[0], Column[8], alltext[12], Column[11]);
    }

    //////////////////////////////////////////////////////
    ///////////////another function///////////////////////
    //////////////////////////////////////////////////////
    boolean checkpassWord() {
        if (allfill[2].getText().equals(allfill[3].getText()) && allfill[2].getText() != "") {
            check = true;
        } else {
            check = false;
        }
        return check;
    }

    void Setbacktostartingpage() {
        fillName.setText("Your ID");
        fillPW.setText("");
//        comboBox.setValue("");
        scene[1] = s1;
    }

    void registerclear() {
        for (int j = 1; j < 8; j++) {
            allfill[j].setText("");
        }
        comboBox2.setValue("");
        genderBox.setValue("");
    }

    Object idcheckers() {
        System.out.println("test " + fillName.getText());
        return Authority.login(fillName.getText(), fillPW.getText());

    }

    public void settingscene() {
        scene = new Scene[5];
        scene[1] = s1;
        scene[2] = s2;
        scene[3] = s3;
    }

    public void settext() {
        alltext = new Text[20];
        for (int i = 0; i < 20; i++) {
            alltext[i] = new Text("");
        }
    }

    public void setbut() {
        allbutton = new Button[20];
        for (int i = 1; i < 20; i++) {
            allbutton[i] = new Button("");
            allbutton[i].setAlignment(Pos.CENTER);
        }
    }

    public void setVbox() {
        Row = new VBox[20];
        for (int i = 1; i < 20; i++) {
            Row[i] = new VBox();
            Row[i].setAlignment(Pos.CENTER);
        }
    }

    public void setTextbox() {
        allfill = new TextField[20];
        for (int i = 1; i < 20; i++) {
            allfill[i] = new TextField("");
            allfill[i].setAlignment(Pos.CENTER);
        }

    }

    public void setHbox() {
        Column = new HBox[20];
        for (int i = 0; i < 20; i++) {
            Column[i] = new HBox(60);
            Column[i].setAlignment(Pos.CENTER);
        }
    }

    @Override
    public void start(Stage stage) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
