/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package core;

import core.Enumerations.Dispensed;

/**
 *
 * @author justin
 */
public class Sensors {
    private static Dispensed dispensed;

    private static Dispensed getDispensed(){
        return dispensed;
    }
    
    public static void setDispensed(Dispensed aDispensed){
        dispensed = aDispensed;
    }
    
}
