/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package driver;

/**
 *
 * @author Emp. Elesar II
 */
import java.util.Date;
import java.util.Timer;
import java.util.TimerTask;

public class Tes{
    long delay = 60 * 1000;
    long delay2 = 1 * 1000;
    LoopTask task = new LoopTask();
    LoopTask2 task2 = new LoopTask2();
    Timer timer = new Timer("TaskName");
    Database db;

    public void start(){
        timer.cancel();
        timer = new Timer("TaskName");
        Date executionDate = new Date();
        db = new Database();
        db.getKontak();
        timer.scheduleAtFixedRate(task, executionDate, delay);
        timer.scheduleAtFixedRate(task2, executionDate, delay2);
    }

    public class LoopTask extends TimerTask{
        @Override
        public void run(){
            db.dbToSMS();
            db.updateDelay();
        }
    }
    
    public class LoopTask2 extends TimerTask{
        @Override
        public void run(){
            db.loading();
            db.SMStoDB();
        }
    }

    
}
