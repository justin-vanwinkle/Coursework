/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package core;

import core.Enumerations.BillValid;
import java.util.Random;

/**
 *
 * @author justin
 */
public class BillValidator {

    private static BillValid billValid;
    
    public static BillValid getBillValid() {
        Random randomNumber = new Random();
        int number = randomNumber.nextInt(100);
        
        if(number == 50)
            billValid = BillValid.FALSE;
        else 
            billValid = BillValid.TRUE;
        
        return billValid;
    }
    
    public static void setBillValid(BillValid aBillValid){
        billValid = aBillValid;
    }
    
}
