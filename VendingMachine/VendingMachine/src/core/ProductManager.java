/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package core;

/**
 *
 * @author justin
 */
public class ProductManager {

    private static Product[][] productData = new Product[4][4];
    
    public ProductManager(){
        initializeData();
    }
    
    private void initializeData(){
        
        productData[0][0] = new Product(25, 1.00);
        productData[1][0] = new Product(25, 1.00);
        productData[2][0] = new Product(25, 1.00);
        productData[3][0] = new Product(25, 1.00);

        productData[0][1] = new Product(25, 1.00);
        productData[1][1] = new Product(25, 1.00);
        productData[2][1] = new Product(25, 1.00);
        productData[3][1] = new Product(25, 1.00);

        productData[0][2] = new Product(25, 1.00);
        productData[1][2] = new Product(25, 1.00);
        productData[2][2] = new Product(25, 1.00);
        productData[3][2] = new Product(25, 1.00);

        productData[0][3] = new Product(25, 1.00);
        productData[1][3] = new Product(25, 1.00);
        productData[2][3] = new Product(25, 1.00);
        productData[3][3] = new Product(25, 1.00);
        
    }
    
    public int getProductCount (int row, int column){
        return productData[row][column].getCount();
    }
    
    public double getProductPrice(int row, int column){
        return productData[row][column].getPrice();
    }
    
    public void dispenseProduct(int row, int column){
        productData[row][column].setCount(productData[row][column].getCount() - 1);
    }

    public void restockProduct(int row, int column, int quantity){
        productData[row][column].setCount(quantity);
    }
    
    public void repriceProduct(int row, int column, double price){
        productData[row][column].setPrice(price);
    }
}