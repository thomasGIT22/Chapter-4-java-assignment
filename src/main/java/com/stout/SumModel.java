/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.stout;

import java.math.BigDecimal;

/**
 *
 * @author Thomas Stout
 */
public class SumModel {

    private String errorMessage1 = "";
    private String errorMessage2 = "";
    private String msg = "";
    private String num1;
    private String num2;

    public SumModel(String first, String second) {
        if (first == null || first.equals("")) {
            first = "0";
        }
        if (second == null || second.equals("")) {
            second = "0";
        }
        num1 = first;
        num2 = second;
        BigDecimal num1bd = new BigDecimal("0");
        BigDecimal num2bd = new BigDecimal("0");
        try {
            num1bd = new BigDecimal(first);
        } catch (NumberFormatException e) {
            errorMessage1 = "Not a number";
            msg = "Invalid number";
        }
        try {
            num2bd = new BigDecimal(second);
        } catch (NumberFormatException e) {
            errorMessage2 = "Not a number";
            msg = "Invalid number";
        }
        if (msg.equals("")) {
            BigDecimal sum = num1bd.add(num2bd);
            msg = num1bd + " + " + num2bd + " = " + sum;
        }
    }
    
    /**
     * @return the errorMessage1
     */
    public String getErrorMessage1() {
        return errorMessage1;
    }

    /**
     * @return the errorMessage2
     */
    public String getErrorMessage2() {
        return errorMessage2;
    }

    /**
     * @return the msg
     */
    public String getMsg() {
        return msg;
    }

    /**
     * @return the num1bd
     */
    public String getNum1() {
        return num1;
    }

    /**
     * @return the num2bd
     */
    public String getNum2() {
        return num2;
    }

}