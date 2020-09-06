package DigitalClock;

import java.text.DecimalFormat;

import javafx.application.Application;
import javafx.event.EventHandler;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.VBox;
import javafx.stage.Stage;
import javafx.stage.WindowEvent;

public class Main extends Application {
	
	private VBox vbox = new VBox();
	private Label label = new Label("Digital Clock Test...");
	private DigitalClock clock = new DigitalClock();
	private boolean running = false;

	public void start(Stage stage) throws Exception {
		vbox.getChildren().addAll(label, clock);
		Scene scene = new Scene(vbox);
		stage.setScene(scene);
		stage.show();
		stage.setOnCloseRequest(new EventHandler<WindowEvent>() {
			public void handle(WindowEvent arg0) {
				running = false;
				stage.close();
			}
			
		});
		runClock();
	}
	
	private void runClock() {
		running = true;
		new Thread() {
			public void run() {
				long last = System.nanoTime();
				double delta = 0;
				double ns = 1000000000.0 / 1;
				int count = 0;
				
				while (running) {
					long now = System.nanoTime();
					delta += (now - last) / ns;
					last = now;
					
					while (delta >= 1) {
						count = (count + 1) % 60;
						System.out.println("pulse...." + count);
						DecimalFormat df = new DecimalFormat("00");
						clock.refreshDigits(df.format(count));
						delta--;
					}
				}
			}
		}.start();
	}

	public static void main(String[] args) {
		launch(args);
	}
}

















