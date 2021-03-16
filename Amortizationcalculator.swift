import Foundation
print("Please Enter your mortgage")
let mortgage = Double(readLine()!)
print("Please Enter your yearly interest rate without the percent symbol")
let rat = Double(readLine()!)
print("Please enter the years it will take to pay of the loan")
let rate=rat!/12
let years=Double(readLine()!)
let months=years!*12
let value = pow(1+((rate)/100),months)

//func pow(value!, years!)
let monthlypayment=((rate/100*mortgage!*value)/(value-1))
print("monthly payment:",monthlypayment)
let totalpayment=monthlypayment*years!*12
print("Total Payment:",totalpayment)
var balance=mortgage!
var interest=(rate/100)*balance
var sum=0.0
var principal=0.0
 print(" month ","  monthly payment","  principal ","      interest","             sum","         balance")
for i in stride(from: 1, to: (years!*4+1), by: 1) {
interest=(((rate/100))*balance)
sum+=interest
 principal=monthlypayment-interest
balance-=principal

   print("month",Int(round(10*i)/10),":  ",Double(round(100*monthlypayment)/100),"      ",Double(round(100*principal)/100),"         ",Double(round(100*interest)/100),"           ",Double(round(100*sum)/100),"   ",Double(round(100*balance)/100))
}
