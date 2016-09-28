/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package userInterface;

import core.*;
import core.Enumerations.VendingState;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

/**
 *
 * @author justin
 */

public class Keypad extends javax.swing.JPanel 
{
    private CentralComputer computer;
    private JButton buttonA;
    private JButton buttonB;
    private JButton buttonC;
    private JButton buttonD;
    private JButton button0;
    private JButton button1;
    private JButton button2;
    private JButton button3;
    private JButton button4;
    private JButton button5;
    private JButton button6;
    private JButton button7;
    private JButton button8;
    private JButton button9;
    private JButton money;
    private JButton buttonDot;
    private JLabel moneyEntered;
    private JLabel message;
    private ProductBin productBin;
    private String value = "";
    private String product = "";
   
    
    //Pre-Conditions :  None
    //Post-Conditions:  Calls initComponents method
    //Additional Info:  This provides external class visibility and prevents
    //               :  the change of any data in the private method it calls.
    public Keypad()
    {
        initComponents();
        
    }
    
    //Pre-Conditions :  None
    //Post-Conditions:  Handles the initialization of all components to be added
    //               :  to the Keypad JPanel.
    private void initComponents()
    {
        
        computer = new CentralComputer();
        computer.setState(VendingState.READY);
        
        // Instantiate GridBagLayout for keypad which is an extension of JPanel
        this.setLayout(new GridBagLayout());
        // Set a border around the JPanel
        this.setBorder(BorderFactory.createLineBorder(Color.BLACK));
        
        // Instantiate all buttons with text
        button0 = new JButton("0");
        button1 = new JButton("1");
        button2 = new JButton("2");
        button3 = new JButton("3");
        button4 = new JButton("4");
        button5 = new JButton("5");
        button6 = new JButton("6");
        button7 = new JButton("7");
        button8 = new JButton("8");
        button9 = new JButton("9");
        buttonA = new JButton("A");
        buttonB = new JButton("B");
        buttonC = new JButton("C");
        buttonD = new JButton("D");
        buttonDot = new JButton(".");
        money = new JButton("Enter Money");
        money.setPreferredSize(new Dimension(150,25));
        
        //Registering ActionListeners
        button0.addActionListener(new KeyAction());
        button1.addActionListener(new KeyAction());
        button2.addActionListener(new KeyAction());
        button3.addActionListener(new KeyAction());
        button4.addActionListener(new KeyAction());
        button5.addActionListener(new KeyAction());
        button6.addActionListener(new KeyAction());
        button7.addActionListener(new KeyAction());
        button8.addActionListener(new KeyAction());
        button9.addActionListener(new KeyAction());
        buttonA.addActionListener(new KeyAction());
        buttonB.addActionListener(new KeyAction());
        buttonC.addActionListener(new KeyAction());
        buttonD.addActionListener(new KeyAction());
        buttonDot.addActionListener(new KeyAction());
        money.addActionListener(new MoneyAction());

        // Instantiate JLabels
        moneyEntered = new JLabel("$00.00");
        message = new JLabel("");
        
        
        // Call addComponent to set constraints and add component to panel
        addComponent(2, 6, 1, 1, 0.1, 0.1, this, button0);
        addComponent(1, 3, 1, 1, 0.1, 0.1, this, button1);
        addComponent(2, 3, 1, 1, 0.1, 0.1, this, button2);
        addComponent(3, 3, 1, 1, 0.1, 0.1, this, button3);
        addComponent(1, 4, 1, 1, 0.1, 0.1, this, button4);
        addComponent(2, 4, 1, 1, 0.1, 0.1, this, button5);
        addComponent(3, 4, 1, 1, 0.1, 0.1, this, button6);
        addComponent(1, 5, 1, 1, 0.1, 0.1, this, button7);
        addComponent(2, 5, 1, 1, 0.1, 0.1, this, button8);
        addComponent(3, 5, 1, 1, 0.1, 0.1, this, button9);
        addComponent(0, 3, 1, 1, 0.1, 0.1, this, buttonA);
        addComponent(0, 4, 1, 1, 0.1, 0.1, this, buttonB);
        addComponent(0, 5, 1, 1, 0.1, 0.1, this, buttonC);
        addComponent(0, 6, 1, 1, 0.1, 0.1, this, buttonD);
        addComponent(3, 6, 1, 1, 0.1, 0.1, this, buttonDot);
        addComponent(0, 7, 4, 1, 0.1, 1.0, this, money);
        addComponent(0, 0, 4, 2, 0.1, 0.7, this, moneyEntered);
        addComponent(0, 1, 4, 2, 0.1, 0.7, this, message);

    }
    
    //Pre-Condition :   x, y, gw, and gh are all of type int.
    //              :   wx and wy are of type double.
    //              :   aContainer is of type Container
    //              :   aComponent is of type Component
    //Post-Condition:   sets GridBagConstraints and adds specified component to 
    //              :   specified container.
    private void addComponent(int x, int y, int gw, int gh, double wx, double wy, Container aContainer, 
        Component aComponent)
    {
        GridBagLayout gridBagLayout = new GridBagLayout();
        GridBagConstraints c = new GridBagConstraints();
        c.gridx = x;
        c.gridy = y;
        c.gridwidth = gw;
        c.gridheight = gh;
        c.weightx = wx;
        c.weighty = wy;
        gridBagLayout.setConstraints(aComponent, c);
        aContainer.add(aComponent, c);
    }
    
        public ProductBin getProductBin(){
        return productBin;
    }
    
    public void setProductBin(ProductBin productBin){
        this.productBin = productBin;
        computer.setProductBin(productBin);
    }
    
    // Registering event handler to Buttons
    private class KeyAction implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) 
        {
            if(computer.getState() == VendingState.MONEY){
                if(e.getActionCommand().equals("."))
                    buttonDot.setEnabled(false);
                
                value += e.getActionCommand();
                moneyEntered.setText(value);
            }
            else if (computer.getState() == VendingState.PRODUCT){
                if(product.equals("") &&
                        (e.getActionCommand().equals("A") ||
                        e.getActionCommand().equals("B") ||
                        e.getActionCommand().equals("C") ||
                        e.getActionCommand().equals("D") ))
                        {
                            product += e.getActionCommand();
                            
                            buttonA.setEnabled(false);
                            buttonB.setEnabled(false);
                            buttonC.setEnabled(false);
                            buttonD.setEnabled(false);
                        }
                else if (product.length() > 0 && product.length() < 2)
                {
                    product += e.getActionCommand();
                    computer.setProductSelected(product);
                }
            }
        }
    }
            
    
    // Registering event handler to money input
    private class MoneyAction implements ActionListener
    {
        @Override
        public void actionPerformed(ActionEvent e) {

            if(e.getActionCommand().equals("Enter Money")){
                computer.setState(VendingState.MONEY);
                money.setText("Finished");
                buttonA.setEnabled(false);
                buttonB.setEnabled(false);
                buttonC.setEnabled(false);
                buttonD.setEnabled(false);
            }
            else{
                computer.setState(VendingState.PRODUCT);
                computer.setMoneyEntered(
                Float.parseFloat(moneyEntered.getText()));
                money.setText("Enter Money");
                buttonA.setEnabled(true);
                buttonB.setEnabled(true);
                buttonC.setEnabled(true);
                buttonD.setEnabled(true);
            }
            repaint();
        }
    }
}
    




