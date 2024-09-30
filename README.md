# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.


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
