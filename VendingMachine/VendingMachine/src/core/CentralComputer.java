/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package core;

import core.Enumerations.*;
import javax.swing.JLabel;
import userInterface.ProductBin;

/**
 *
 * @author justin
 */
public class CentralComputer {
    private static VendingState state;
    private static float moneyEntered;
    private static String productSelected;
    private static BillValidator billValidator;
    private static CoinIdentifier coinIdentifier;
    private static ProductManager productManager;
    private static Sensors sensors;
    private static ProductBin productBin;
    private static JLabel message;
    
    
    public static JLabel getMessage(){
        return message;
    }
    
    public static void setMessage(JLabel aMessage){
        message = aMessage;
    }
    
    public CentralComputer(){
        billValidator = new BillValidator();
        coinIdentifier = new CoinIdentifier();
        productManager = new ProductManager();
        sensors = new Sensors();
    }
    
    public static float getMoneyEntered(){
        return moneyEntered;
    }
    
    public static void setMoneyEntered(float aMoneyEntered){
        moneyEntered = aMoneyEntered;
        
        if (billValidator.getBillValid() == BillValid.FALSE)
            message.setText("Invalid Bill");
        
        if (coinIdentifier.getCoinValid(moneyEntered) == CoinValid.FALSE)
            message.setText("Invalid Coin");
    }
 
    public static String getProductSelected(){
        return productSelected;
    }
    
    public static void setProductSelected(String aProductSelected){
        productSelected = aProductSelected;
        
        int row = -1;
        int column;
        
        if(productSelected.substring(0, 1).equals("A"))
            row = 0;
        else if(productSelected.substring(0, 1).equals("B"))
            row = 1;
        else if(productSelected.substring(0, 1).equals("C"))
            row = 2;
        else if(productSelected.substring(0, 1).equals("D"))
            row = 3;

        column = Integer.parseInt(productSelected.substring(1, 2));
        
        if(productManager.getProductCount(row, column) > 0){
            if(moneyEntered >= productManager.getProductPrice(row, column)){
                state = VendingState.DISPENSED;
                productManager.dispenseProduct(row, column);
                sensors.setDispensed(Dispensed.TRUE);
                productBin.blink();
            }
            else{
                message.setText("Not enough money");
            }
        }
        else{
            message.setText("Out of stock.  Please make new selection");
        }
    }
        
    public VendingState getState(){
        return state;
    }

    public void setState(VendingState state){
        this.state = state;
    }

    public ProductBin getProductBin(){
        return productBin;
    }

    public void setProductBin(ProductBin productBin){
        this.productBin = productBin;
    }
}
    

