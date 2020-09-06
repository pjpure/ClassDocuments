/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package online_university.BackEnd;

import java.io.Serializable;

/**
 *
 * @author USER
 */
public class Grading implements Serializable {

    private String Grade = "X", Score = "0";

    public String getGrade() {
        return Grade;
    }

    public void setGrade(String Grade) {
        this.Grade = Grade;
    }

    @Override
    public String toString() {
        return "Grading{Score : " + this.Score + " Grade : " + this.Grade + "}"; //To change body of generated methods, choose Tools | Templates.
    }

    public String getScore() {
        return Score;
    }

    public void setScore(String Score) {
        this.Score = Score;
    }
}
