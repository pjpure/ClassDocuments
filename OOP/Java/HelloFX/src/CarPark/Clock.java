/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package CarPark;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javafx.application.Platform;
import javafx.scene.control.Label;

/**
 *
 * @author PURE
 */
public class Clock {

    private ScheduledExecutorService scheduledExecutorService;
    Label time = new Label();
    Label nowTime = new Label();
    DateFormat df = new DateFormat();
    public Clock() {
    }

    public void currentTime() {
        final SimpleDateFormat simpleDateFormat = new SimpleDateFormat("HH:mm:ss");

        scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();

        scheduledExecutorService.scheduleAtFixedRate(() -> {
            Platform.runLater(() -> {
                Date now = new Date();
                nowTime.setText("" + simpleDateFormat.format(now));
            });
        }, 0, 1, TimeUnit.SECONDS);
        
    }

    public void showTime(Date last) {
        
        scheduledExecutorService = Executors.newSingleThreadScheduledExecutor();

        scheduledExecutorService.scheduleAtFixedRate(() -> {
            Platform.runLater(() -> {              
                time.setText(df.toTime(df.calTime(last)));
            });
        }, 0, 1, TimeUnit.SECONDS);
    }

    public Label getTime() {
        return time;
    }

}
