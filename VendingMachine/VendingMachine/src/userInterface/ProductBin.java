/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package userInterface;

import core.Enumerations.VendingState;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author justin
 */

public class ProductBin extends javax.swing.JPanel {

    // This section contains instatiations to be used in this class
    private JButton retreiveProduct;
    private boolean productReceived = false;
    
    //Pre-Conditions :  None
    //Post-Conditions:  Calls initComponents method
    //Additional Info:  This provides external class visibility and prevents
    //               :  the change of any data in the private method it calls.
    public ProductBin()
    {
        initComponents();
    }
        
    //Pre-Conditions :  None
    //Post-Conditions:  Handles the initialization of all components to be added
    //               :  to the ProductBin JPanel.
    private void initComponents()
    {
        // Instantiate GridBagLayout and set it as the layout for this class
        this.setLayout(new GridBagLayout());
        // Border of JPanel
        this.setBorder(BorderFactory.createLineBorder(Color.BLACK));
        
        // This section instatiates and initializes, with text, the JButton to
        // be added to the ProductBin JPanel
        retreiveProduct = new JButton("");
        retreiveProduct.addActionListener(new Action());
        retreiveProduct.setPreferredSize(new Dimension(600, 100));

        
        this.add(retreiveProduct);
        repaint();
                
    }
    
    
    
    public void blink(){
        retreiveProduct.setBorder(BorderFactory.createLineBorder(Color.RED, 5));
        repaint();
    }
    
    // Registering event handler to product retreival
    class Action implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) {
            retreiveProduct.setBorder(BorderFactory.createLineBorder(Color.BLACK));
            repaint();
        }
        
    }
}