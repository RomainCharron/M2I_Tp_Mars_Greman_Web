/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.m2i.charron.web.greman_tp_web_mars;

/**
 *
 * @author Formation
 */
public class DevinerNombre {
    

    static int  minScore = 0;
    static boolean minScoreIni = false;
    
    public static void setScore(int newScore)
    {
        if (minScoreIni)
        minScore = (newScore < minScore ? newScore  : minScore);
        else
        {
            minScore = newScore;
            minScoreIni = true;
        }
    }

    public static int getMinScore() {
        return minScore;
    }
    
}
