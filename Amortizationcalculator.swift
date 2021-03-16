/*This program is an Amortization Schedule Calculator. It calculates your monthly payment and balance and supplies you with a monthly schedule 
 with your principal, interest, sum, and balance*/
import Foundation// importing library for power  and rounding functions
print("Please Enter your mortgage")//requesting user info
let mortgage = Double(readLine()!)//storing user input
print("Please Enter your yearly interest rate without the percent symbol")//requesting user info
let rat = Double(readLine()!)//storing userinput
print("Please enter the years it will take to pay of the loan")//requesting user info
let rate=rat!/12//translating yearly rate to monthly rate
let years=Double(readLine()!)//stores user input
let months=years!*12// changes years to months
let value = pow(1+((rate)/100),months)// monthly payment calculation pt1
let monthlypayment=((rate/100*mortgage!*value)/(value-1))// monthly payment calculation pt2
print("monthly payment:",monthlypayment)//displaying monthly payment
let totalpayment=monthlypayment*years!*12// total payment calculation
print("Total Payment:",totalpayment)// diplay total payment
var balance=mortgage!
var interest=(rate/100)*balance
var sum=0.0// intialize sum with a null value: sum= total interest
var principal=0.0// intialize principal with a null value
 print(" month ","  monthly payment","  principal ","      interest","             sum","         balance")//outputing graph header
for i in stride(from: 1, to: (years!*4+1), by: 1) //for loop that displays data every month
{interest=(((rate/100))*balance)//interest formula
sum+=interest//total interest calculation
 principal=monthlypayment-interest//principal calculation
balance-=principal// balance calculation

   print("month",Int(round(10*i)/10),":  ",Double(round(100*monthlypayment)/100),"      ",Double(round(100*principal)/100),"         ",Double(round(100*interest)/100),"           ",Double(round(100*sum)/100),"   ",Double(round(100*balance)/100))
//outputting all values
}
