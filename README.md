# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.


Pay Calculation
ABC Corporation has manpower workers on a contract basis for a new project. The wages are 
paid based on the following rules.
The standard rate is $80/hr
The standard rate is for 56 hours only.
Above 56 hrs, the pay is one and half times of the standard rate for each hour.
A tax of 2% is applied for each employee .
Method Name Argument Return 
Type
Access 
Specifier
Responsibilities
GetGrossPay int double public This method must calculate the gross pay based 
on the given pay rate and the number of 
hours worked which is passed as input and 
returns the gross pay as a double value.
CalculateTax double double public This method takes the gross pay as input , 
calculates the tax and returns the deductable tax 
amount .
CalculateNetPay int double public This method takes the number of hours worked 
as input , calculates the netpay by deducting the 
tax from the gross pay. Net pay=gross -
deductable tax amount.
Hint Important:
1. call the method GetGrossPay passing 
hoursworked
2. call the method CalculateTax passing gross 
pay calculated in previous step
3. calculate the net pay and return it.
Important : Keep the method as 'Public' and 'Static'
Requirement :
1. Calculate the GetGrossPay and return the gross pay.
2. Calculate the 2% tax in the CalculateTax method.
3. Calculate the net pay by deducting the tax from gross pay.
Sample Input/Output
Sample Input : 1
Enter the number of hours worked
46
Sample Output 1:
The calculated Net Pay is $3606.4
Sample Input : 2
Enter the number of hours worked
80
Sample Output 2:
The calculated Net Pay is $7212.



import java.util.Scanner;

public class PayCalculation {

    // Constants for standard rate, overtime rate, standard hours, and tax percentage
    private static final double STANDARD_RATE = 80.0;
    private static final double OVERTIME_RATE = 1.5 * STANDARD_RATE;
    private static final int STANDARD_HOURS = 56;
    private static final double TAX_PERCENTAGE = 2.0;

    // Method to calculate the gross pay
    public static double GetGrossPay(int hoursWorked) {
        if (hoursWorked <= STANDARD_HOURS) {
            return hoursWorked * STANDARD_RATE;
        } else {
            // Calculate standard pay + overtime pay
            int overtimeHours = hoursWorked - STANDARD_HOURS;
            return (STANDARD_HOURS * STANDARD_RATE) + (overtimeHours * OVERTIME_RATE);
        }
    }

    // Method to calculate the tax
    public static double CalculateTax(double grossPay) {
        return (TAX_PERCENTAGE / 100) * grossPay;
    }

    // Method to calculate the net pay
    public static double CalculateNetPay(int hoursWorked) {
        // Step 1: Calculate gross pay
        double grossPay = GetGrossPay(hoursWorked);

        // Step 2: Calculate tax
        double tax = CalculateTax(grossPay);

        // Step 3: Calculate and return net pay
        return grossPay - tax;
    }

    // Main method to test the program
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Input: number of hours worked
        System.out.print("Enter the number of hours worked: ");
        int hoursWorked = scanner.nextInt();

        // Calculate net pay
        double netPay = CalculateNetPay(hoursWorked);

        // Output the result
        System.out.printf("The calculated Net Pay is $%.2f%n", netPay);

        // Close the scanner
        scanner.close();
    }
}

