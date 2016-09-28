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

public class Products extends javax.swing.JPanel
{
    // This section contains instatiations to be used in this class
    private Icon icon1;
    private Icon icon2;
    private Icon icon3;
    private Icon icon4;
    private Icon icon5;
    private Icon icon6;
    private Icon icon7;
    private Icon icon8;
    private Icon icon9;
    private Icon icon10;
    private Icon icon11;
    private Icon icon12;
    private Icon icon13;
    private Icon icon14;
    private Icon icon15;
    private Icon icon16;
    private JLabel label1;
    private JLabel label2;
    private JLabel label3;
    private JLabel label4;
    private JLabel label5;
    private JLabel label6;
    private JLabel label7;
    private JLabel label8;
    private JLabel label9;
    private JLabel label10;
    private JLabel label11;
    private JLabel label12;
    private JLabel label13;
    private JLabel label14;
    private JLabel label15;
    private JLabel label16;
    

    //Pre-Conditions :  None
    //Post-Conditions:  Calls initComponents method
    //Additional Info:  This provides external class visibility and prevents
    //               :  the change of any data in the private method it calls.
    public Products()
    {
        initComponents();
    }
    
    //Pre-Conditions :  None
    //Post-Conditions:  Handles the initialization of all components to be added
    //               :  to the Products JPanel.
    private void initComponents()
    {
       // Instantiate GridBagLayout and set it as the layout for this class
       this.setLayout(new GridBagLayout());
       // Border of JPanel
       this.setBorder(BorderFactory.createLineBorder(Color.BLACK));
    
       // This section instatiates ImageIcons and calls the imageResize method
       // to resize the images.  Next, an instance of a JLabel is created which
       // includes the resized icon.  Last, the text of the label is set and
       // aligned
       icon1 = new ImageIcon( getClass().getResource( "beers/1Asahi Dry.jpg"));
       icon1 = imageResize((ImageIcon)icon1);
       label1 = new JLabel(icon1);
       label1.setText("A1   $1.00");
       label1.setHorizontalTextPosition(JLabel.CENTER);
       label1.setVerticalTextPosition(JLabel.BOTTOM);
       
       icon2 = new ImageIcon( getClass().getResource( "beers/2Asahi Dry Black.jpg"));
       icon2 = imageResize((ImageIcon)icon2);       
       label2 = new JLabel(icon2);
       label2.setText("A2   $1.00");
       label2.setHorizontalTextPosition(JLabel.CENTER);
       label2.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon3 = new ImageIcon( getClass().getResource( "beers/3Orion.jpg"));
       icon3 = imageResize((ImageIcon)icon3);
       label3 = new JLabel(icon3);
       label3.setText("A3   $1.00");
       label3.setHorizontalTextPosition(JLabel.CENTER);
       label3.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon4 = new ImageIcon( getClass().getResource( "beers/4Orion Rich.jpg"));
       icon4 = imageResize((ImageIcon)icon4);
       label4 = new JLabel(icon4);
       label4.setText("A4   $1.00");
       label4.setHorizontalTextPosition(JLabel.CENTER);
       label4.setVerticalTextPosition(JLabel.BOTTOM);       

       icon5 = new ImageIcon( getClass().getResource( "beers/5Orion Southern Star.jpg"));
       icon5 = imageResize((ImageIcon)icon5);
       label5 = new JLabel(icon5);
       label5.setText("B1   $1.00");
       label5.setHorizontalTextPosition(JLabel.CENTER);
       label5.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon6 = new ImageIcon( getClass().getResource( "beers/6Orion Special.jpg"));
       icon6 = imageResize((ImageIcon)icon6);
       label6 = new JLabel(icon6);
       label6.setText("B2   $1.00");
       label6.setHorizontalTextPosition(JLabel.CENTER);
       label6.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon7 = new ImageIcon( getClass().getResource( "beers/7Grand Kirin.jpg"));
       icon7 = imageResize((ImageIcon)icon7);
       label7 = new JLabel(icon7);
       label7.setText("B3   $1.00");
       label7.setHorizontalTextPosition(JLabel.CENTER);
       label7.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon8 = new ImageIcon( getClass().getResource( "beers/8Kirin Ichiban Shibori Toretate Hop.jpg"));
       icon8 = imageResize((ImageIcon)icon8);
       label8 = new JLabel(icon8);
       label8.setText("B4   $1.00");
       label8.setHorizontalTextPosition(JLabel.CENTER);
       label8.setVerticalTextPosition(JLabel.BOTTOM);
       
       icon9 = new ImageIcon( getClass().getResource( "beers/9Kirin Lager.jpg"));
       icon9 = imageResize((ImageIcon)icon9);
       label9 = new JLabel(icon9);
       label9.setText("C1   $1.00");
       label9.setHorizontalTextPosition(JLabel.CENTER);
       label9.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon10 = new ImageIcon( getClass().getResource( "beers/10Kirin Original.jpg"));
       icon10 = imageResize((ImageIcon)icon10);
       label10 = new JLabel(icon10);
       label10.setText("C2   $1.00");
       label10.setHorizontalTextPosition(JLabel.CENTER);
       label10.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon11 = new ImageIcon( getClass().getResource( "beers/11Suntory Bitter Roast.png"));
       icon11 = imageResize((ImageIcon)icon11);
       label11 = new JLabel(icon11);
       label11.setText("C3   $1.00");
       label11.setHorizontalTextPosition(JLabel.CENTER);
       label11.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon12 = new ImageIcon( getClass().getResource( "beers/12Suntory Pilsner Beer.jpg"));
       icon12 = imageResize((ImageIcon)icon12);
       label12 = new JLabel(icon12);
       label12.setText("C4   $1.00");
       label12.setHorizontalTextPosition(JLabel.CENTER);
       label12.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon13 = new ImageIcon( getClass().getResource( "beers/13Suntory Relax.jpg"));
       icon13 = imageResize((ImageIcon)icon13);
       label13 = new JLabel(icon13);
       label13.setText("D1   $1.00");
       label13.setHorizontalTextPosition(JLabel.CENTER);
       label13.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon14 = new ImageIcon( getClass().getResource( "beers/14Suntory Wazen.jpg"));
       icon14 = imageResize((ImageIcon)icon14);
       label14 = new JLabel(icon14);
       label14.setText("D2   $1.00");
       label14.setHorizontalTextPosition(JLabel.CENTER);
       label14.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon15 = new ImageIcon( getClass().getResource( "beers/15YO-HO Brewing Aooni.jpg"));
       icon15 = imageResize((ImageIcon)icon15);
       label15 = new JLabel(icon15);
       label15.setText("D3   $1.00");
       label15.setHorizontalTextPosition(JLabel.CENTER);
       label15.setVerticalTextPosition(JLabel.BOTTOM);       
       
       icon16 = new ImageIcon( getClass().getResource( "beers/16YO-HO Brewing Suiyoubi No Neko.jpg"));
       icon16 = imageResize((ImageIcon)icon16);
       label16 = new JLabel(icon16);
       label16.setText("D4   $1.00");
       label16.setHorizontalTextPosition(JLabel.CENTER);
       label16.setVerticalTextPosition(JLabel.BOTTOM);            
       
       
       // This section calls the method addComponent with the container, 
       // component, and extra data needed to align the component within
       // the container under GridBagConstraints.
       // The order of values is as follows:
       // gridx, gridy, gridwidth, gridheight, weightx, weight, y.
       addComponent(0,0,1,1,0.1,0.1,this,label1);
       addComponent(1,0,1,1,0.1,0.1,this,label2);
       addComponent(2,0,1,1,0.1,0.1,this,label3);
       addComponent(3,0,1,1,0.1,0.1,this,label4);
       addComponent(0,1,1,1,0.1,0.1,this,label5);
       addComponent(1,1,1,1,0.1,0.1,this,label6);
       addComponent(2,1,1,1,0.1,0.1,this,label7);
       addComponent(3,1,1,1,0.1,0.1,this,label8);
       addComponent(0,2,1,1,0.1,0.1,this,label9);
       addComponent(1,2,1,1,0.1,0.1,this,label10);
       addComponent(2,2,1,1,0.1,0.1,this,label11);
       addComponent(3,2,1,1,0.1,0.1,this,label12);
       addComponent(0,3,1,1,0.1,0.1,this,label13);
       addComponent(1,3,1,1,0.1,0.1,this,label14);
       addComponent(2,3,1,1,0.1,0.1,this,label15);
       addComponent(3,3,1,1,0.1,0.1,this,label16); 
       
    }
    
    //Pre-Conditions :   x, y, gw, and gh are all of type int.
    //               :   wx and wy are of type double.
    //               :   aContainer is of type Container
    //               :   aComponent is of type Component
    //Post-Conditions:   Adds passed component to passed container with 
    //               :   passed values as GridBagConstraints
    private void addComponent(int x, int y, int gw, int gh, double wx, double wy, Container aContainer, 
        Component aComponent)
    {
        // Instantiations needed within this method
        GridBagLayout gridBagLayout = new GridBagLayout();
        GridBagConstraints c = new GridBagConstraints();
        
        // Initialize GridBagConstraints with the passed values
        c.gridx = x;
        c.gridy = y;
        c.gridwidth = gw;
        c.gridheight = gh;
        c.weightx = wx;
        c.weighty = wy;
        
        // Set the constraints for the passed component
        gridBagLayout.setConstraints(aComponent, c);
        
        // Add the component with its constraints to the passed container
        aContainer.add(aComponent, c);
    }
    
    //Pre-Conditions :   icon is of type ImageIcon
    //Post-Conditions:   This method returns a resized icon, scaled to 100x150px
    private ImageIcon imageResize(ImageIcon icon)
    {
        // Pull the image from the icon class
        Image image = icon.getImage();
        
        // Rescale the image
        Image newImage = image.getScaledInstance(100, 150, Image.SCALE_SMOOTH);
      
        // Instantiate a new ImageIcon, containing the resized image
        icon = new ImageIcon(newImage);
        return icon;
    }
}
