# Project-3-Nexus
Task Nexus Info Internship 3rd project: Own project(Portifolio)


Showcase your skills and unique ideas to our team I decide to create an Portifolio where i have attached all my previous work i had done in the past and want to show my sample work of web pages.


Employee Payroll Management (70 Marks)
Problem Statement:
You are tasked with creating an Employee Payroll Management system for TeknoHR, one of India's 
largest IT service providers. The company employs both permanent and temporary (freelancer) 
employees and needs to calculate their salaries, bonuses, and provident fund (PF) contributions 
according to the following criteria:
Base Class
You are provided with a base class Employee that will be used for both permanent and temporary 
employees. This base class should include the following public properties:
Datatype Property Name Description
int Id Employee ID
String Name Employee Name
Float BasicSalary The basic salary for the employee
Float Bonus Bonus amount for the employee
Float NetSalary The net salary after all calculations
Permanent and Temporary Employee Classes
Extend the Employee class to create two specific employee types:
1. PermanentEmployee: A permanent employee who has a fixed Provident Fund (PF) 
deduction.
Public Properties:
o int Pf (Provident Fund amount)
2. TemporaryEmployee: A temporary employee who earns wages based on the number of days 
worked.
Public Properties:
o int DailyWages (Amount earned per day)
o int NoOfDays (Number of days worked)
Functionalities
Implement the following functionalities:
1. Calculate Salary for Permanent and Temporary Employees:
o For PermanentEmployee, the net salary should be calculated as:
NetSalary = BasicSalary – Pf
o For TemporaryEmployee, the net salary should be calculated as:
NetSalary = DailyWages * NoOfDays
2. Calculate Bonus Based on the PF and Daily Wages:
o For PermanentEmployee, the bonus should be calculated based on the PF 
deduction:
▪ If Pf < 1000, bonus = 10% of Basic Salary
▪ If Pf >= 1000 and Pf < 1500, bonus = 11.5% of Basic Salary
▪ If Pf >= 1500 and Pf < 1800, bonus = 12% of Basic Salary
▪ If Pf >= 1800, bonus = 15% of Basic Salary
o For TemporaryEmployee, the bonus should be calculated based on the daily wages:
▪ If DailyWages < 1000, bonus = 15% of Net Salary
▪ If DailyWages >= 1000 and DailyWages < 1500, bonus = 12% of Net Salary
▪ If DailyWages >= 1500 and DailyWages < 1750, bonus = 11% of Net Salary
▪ If DailyWages >= 1750, bonus = 8% of Net Salary
3. Initialize the Values and Call Methods:
o Create a method to initialize the employee details and calculate the salary and bonus 
accordingly. The type of employee (permanent or temporary) will be initialized first, 
and the system should calculate and display the output.
Sample Output
Initialization 1 (Permanent Employee):
• Employee Id: 101
• Employee Name: Esther
• Basic Salary: 25000
• PF: 1500
Sample Output:
The details are:
Employee Id: 101
Employee Name: Esther
Basic Salary: 25000
PF: 1500
Bonus: 3000
Net Salary: 23500
Initialization 2 (Temporary Employee):
• Employee Id: 102
• Employee Name: Ganesh
• Daily Wages: 1500
• No. of Days Worked: 20
Sample Output:
Employee Id: 102
Employee Name: Ganesh
Daily Wages: 1500
No. of Days Worked: 20
Bonus: 3300
Net Salary: 3000
