package by.berdnikov.calculator.model;

public class Calculator {
    public static double calculateCompoundInterest(double principal, double interest, int years, int compoundingPeriod) {
        return Math.round(principal * Math.pow((1 + (interest / compoundingPeriod )), (compoundingPeriod * years))) ;
    }
}
