# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.
import java.util.Scanner;

// Base class: Insurance
class Insurance {
    private String insuranceNo;
    private String insuranceName;
    private double amountCovered;

    // Getters and setters
    public String getInsuranceNo() {
        return insuranceNo;
    }

    public void setInsuranceNo(String insuranceNo) {
        this.insuranceNo = insuranceNo;
    }

    public String getInsuranceName() {
        return insuranceName;
    }

    public void setInsuranceName(String insuranceName) {
        this.insuranceName = insuranceName;
    }

    public double getAmountCovered() {
        return amountCovered;
    }

    public void setAmountCovered(double amountCovered) {
        this.amountCovered = amountCovered;
    }
}

// Child class: MotorInsurance
class MotorInsurance extends Insurance {
    private double idv;
    private float depPercent;

    // Getters and setters
    public double getIdv() {
        return idv;
    }

    public void setIdv(double idv) {
        this.idv = idv;
    }

    public float getDepPercent() {
        return depPercent;
    }

    public void setDepPercent(float depPercent) {
        this.depPercent = depPercent;
    }

    // Method to calculate the premium for Motor Insurance
    public double calculatePremium() {
        double amountCovered = getAmountCovered();
        idv = amountCovered - ((amountCovered * depPercent) / 100);
        return (idv * 3) / 100;  // Premium is 3% of IDV
    }
}

// Child class: LifeInsurance
class LifeInsurance extends Insurance {
    private int policyTerm;
    private float benefitPercent;

    // Getters and setters
    public int getPolicyTerm() {
        return policyTerm;
    }

    public void setPolicyTerm(int policyTerm) {
        this.policyTerm = policyTerm;
    }

    public float getBenefitPercent() {
        return benefitPercent;
    }

    public void setBenefitPercent(float benefitPercent) {
        this.benefitPercent = benefitPercent;
    }

    // Method to calculate the premium for Life Insurance
    public double calculatePremium() {
        double amountCovered = getAmountCovered();
        double benefitAmount = amountCovered - ((amountCovered * benefitPercent) / 100);
        return benefitAmount / policyTerm;  // Premium is divided by the policy term
    }
}

// Main class: Program
public class Program {

    public static double addPolicy(Insurance ins, int opt) {
        if (opt == 1) {
            LifeInsurance lifeInsurance = (LifeInsurance) ins;
            return lifeInsurance.calculatePremium();
        } else if (opt == 2) {
            MotorInsurance motorInsurance = (MotorInsurance) ins;
            return motorInsurance.calculatePremium();
        }
        return 0.0;
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        // Get common input
        System.out.print("Insurance Number: ");
        String insuranceNo = scanner.nextLine();
        System.out.print("Insurance Name: ");
        String insuranceName = scanner.nextLine();
        System.out.print("Amount Covered: ");
        double amountCovered = scanner.nextDouble();

        // Ask the user for the type of insurance
        System.out.println("Select 1.Life Insurance 2.Motor Insurance");
        int option = scanner.nextInt();

        double calculatedPremium = 0;

        if (option == 1) {
            // Life Insurance
            System.out.print("Policy Term: ");
            int policyTerm = scanner.nextInt();
            System.out.print("Benefit Percent: ");
            float benefitPercent = scanner.nextFloat();

            // Create LifeInsurance object and set properties
            LifeInsurance lifeInsurance = new LifeInsurance();
            lifeInsurance.setInsuranceNo(insuranceNo);
            lifeInsurance.setInsuranceName(insuranceName);
            lifeInsurance.setAmountCovered(amountCovered);
            lifeInsurance.setPolicyTerm(policyTerm);
            lifeInsurance.setBenefitPercent(benefitPercent);

            // Calculate premium
            calculatedPremium = addPolicy(lifeInsurance, option);

        } else if (option == 2) {
            // Motor Insurance
            System.out.print("Depreciation Percent: ");
            float depPercent = scanner.nextFloat();

            // Create MotorInsurance object and set properties
            MotorInsurance motorInsurance = new MotorInsurance();
            motorInsurance.setInsuranceNo(insuranceNo);
            motorInsurance.setInsuranceName(insuranceName);
            motorInsurance.setAmountCovered(amountCovered);
            motorInsurance.setDepPercent(depPercent);

            // Calculate premium
            calculatedPremium = addPolicy(motorInsurance, option);
        }

        // Display the calculated premium
        System.out.printf("Calculated Premium: $%.2f%n", calculatedPremium);

        // Close scanner
        scanner.close();
    }
}


1. Insurance Calculation - Work with Polymorphism - 50 Marks
Town's famous insurance company has an application for maintaining insurance details of their
customers.
Requirement:
Write a Java Program to Calculate the premium for the "Life Insurance" and "Motor Insurance"
policies of their customers.
Implement the following classes :
a) class Insurance
Field Name Datatype Access Specifier
insuranceNo String private
insuranceName String private
amountCovered Double private
Property Name Datatype Access Specifier
InsuranceNo String public
InsuranceName String public
AmountCovered Double public
b) class MotorInsurance which is a child of class Insurance
Field Name Datatype Access Specifier
idv Double private
depPercent Float private
Property Name Datatype Access Specifier
Idv Double public
DepPercent Float public
Method Name Argument Return
Type
Access
Specifier
Responsibilities
calculatePremiumN/A double public Calculates premium based on
formula given below,
Idv = AmountCovered -
((AmountCovered * DepPercent) /
100);
then, the premium is,
3% of the Idv value, return the
calculated premium.
c) class LifeInsurance which is a child of class Insurance
Field Name Datatype Access Specifier
policyTerm Int private
benefitPercent Float private
Property Name Datatype Access Specifier
PolicyTerm Int public
BenefitPercent Float public
Method Name Argument Return
Type
Access
Specifier
Responsibilities
calculatePremiumN/A double public Calculate the premium based on
formula given below,
Subtract the BenefitPercent from the
AmountCovered and divide the result
by PolicyTerm
That is,
AmountCovered -
((AmountCovered*
BenefitPercent)/100)) /
PolicyTerm;
Methods in Program.cs
Method
Name Argument Return
type
Access
Specifier Responsibilities
Main string[] args Void public static From the user get the following inputs,
insuranceNo, insuranceName,
amountCovered and insurance option '1'
or '2'
If '1' then, it is a Life Insurance, then
additionally ask the following inputs,
policyTerm, benefitPercentage
If '2' then, it is a Motor Insurance, then
additionally ask the following inputs,
depPercentage (depreciation
percentage)
Get the values from user as shown in
sample input and invoke the method
'addPolicy' accordingly.
After getting the values from user, assign
it to Life Insurance or Motor Insurance
object based on the user option. Pass this
object to 'addPolicy' method. So that
'addPolicy' will have access to
insuranceNo, insuranceName,
amountCovered attributes.
If option is 1, create an object for
LifeInsurance and call 'addPolicy'
Method
If option is 2, create an object for
MotorInsurance and call 'addPolicy'
Method
addPolicy Insurance ins,
int opt
Double public Based on opt,
1 ==> call
the 'calculatePremium' method
using LifeInsurance reference.
2 ==> call
the 'calculatePremium' method
using MotorInsurance reference.
Return the calculated premium.
Sample Input/Output:
S.No Sample Input & Output
1
Insurance Number : LI23456
Insurance Name : KisanVikas
Amount Covered : 1000000
Select
1.Life Insurance
2.Motor Insurance
1
Policy Term : 10
Benefit Percent : 12
Calculated Premium : 88000
2
Insurance Number : MO87657
Insurance Name : MotorPolicy
Amount Covered : 800000
Select
1.Life Insurance
2.Motor Insurance
2
Depreciation Percent : 8
Calculated Premium : 22080
2. Implement user defined exception to handle particular employee is present or not. 
Or
Create a list of Employees. Filter and display the employees whose name starts with ‘A’ using 
streamAPI. - 
