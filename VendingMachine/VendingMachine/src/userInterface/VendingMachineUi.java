/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package userInterface;

import java.awt.*;
import javax.swing.*;

/**
 *
 * @author justin
 */

public class VendingMachineUi 
{
    // This section contains instatiations to be used in this class
    private JFrame frame;
    private Keypad keypad;
    private Products products;
    private ProductBin productBin;
    
    //Pre-Conditions :  None
    //Post-Conditions:  Calls initComponents method
    //Additional Info:  This provides external class visibility and prevents
    //               :  the change of any data in the private method it calls. 
    public VendingMachineUi()
    {
        initComponents();
    }
    
    //Pre-Conditions :  None
    //Post-Conditions:  Creates an instance of JFrame and adds the JPanels
    //               :  Keypad, Products, and ProductBin to the JFrame.
    //               :  Sets frame size and close action, then draws the UI
    //               :  on screen.
    private void initComponents()
    {
        // Instantiate a JFrame
        frame = new JFrame("Nihon no bīru no jidō hanbaiki");
        
        // Instantiate a BorderLayout and set it as the layout manager of frame
        frame.setLayout(new BorderLayout());

        // Instantiate Keypad and add it to frame in the east region
        keypad = new Keypad();   
        frame.add(keypad, BorderLayout.EAST);
        
        // Instantiate Products and add it to frame in the center region
        products = new Products();
        frame.add(products, BorderLayout.CENTER);
        
        // Instantiate ProductBin and add it to frame in the south region
        productBin = new ProductBin();
        frame.add(productBin, BorderLayout.SOUTH);
        
        // Set default close action
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
        
        // Size frame
        frame.pack();     // pack as tight as it will go
        
        // Make it all visible to the user
        frame.setVisible(true);
    }
}
