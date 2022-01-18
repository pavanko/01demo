import UIKit

var greeting = "Hello, playground"
print("hii",10,2.5)
print("pavan")
print("morning")
var ab = "Ajay!"
var grade = 90
var age = 22
print("your age is \(age) and when you tripled your age will be \(age*3)")
print("""
Hello
world!
this
is
Pavan
""")
print("Hello All,\rWelcome to ios")
let first : String = "IOS, "
print(first , "is good :)")
print("welcome to swift programming")
print("fall 2021")
print("******")
print("the numbers are ", terminator: ":")
print( 1,2,3,4,5,6 , separator: "-")

var mobileBrand = "apple"
mobileBrand = "Samsung"
print(mobileBrand)
let pi = 3.14
print(pi)
var age1 : Int = 23
age1 = age1 * 2
print(age1)
var aweMessage = "This is Superb!"
print(aweMessage)
print("aweMessage")
var course1 = "iOS"
var course2 = "Java"
print(course1,course2)
print(course1,"-",course2)
print(10,20,30, terminator: ":")
    print(12.5,15.5)
var httpError  = (errorCode : 404  , errorMessage : "PageNot Found")
print(httpError)
print(httpError.errorCode , terminator : ": ")
print(httpError.errorMessage )
var name = ("John","Smith")
var fName = name.0
var lName = name.1
print(fName , terminator : ",")
print(lName)
var origin = (x : 0 , y : 0)
var point = origin
print(point)
let city = (name : "Maryville" , population : 11,000)
let ( cityName ,cityPopulation ) = (city.0 , city.1)
print(cityName)
print(cityPopulation)
let groceries = ("bread","onions",123456)
print(groceries.0)
print(groceries.1)
print(type(of: groceries))
var cricketKit = ("handGloves" ,"helmet",("bat","ball"))
print(cricketKit.0)
print(cricketKit.1)
print(cricketKit.2.0)
print(cricketKit.2.1)
