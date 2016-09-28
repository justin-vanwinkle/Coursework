/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package core;

import core.Enumerations.CoinValid;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.Random;

/**
 *
 * @author justin
 */
public class CoinIdentifier {
    
    private static CoinValid coinValid;
    
    public static CoinValid getCoinValid(double value){
        BigDecimal cents = new BigDecimal(( value - Math.floor(value)) * 100);
        cents = cents.setScale(4, RoundingMode.HALF_DOWN);
        
        if(cents.intValue() % 5 == 0){
            Random randomNumber = new Random();
            int number = randomNumber.nextInt(100);
            
            if(number == 50)
                coinValid = Enumerations.CoinValid.FALSE;
            else
                coinValid = Enumerations.CoinValid.TRUE;
        }
        else 
            coinValid = Enumerations.CoinValid.FALSE;
        
        return coinValid;
    }
    
    public static void setCoinValid(CoinValid aCoinValid){
        coinValid = aCoinValid;
    }
    
}
