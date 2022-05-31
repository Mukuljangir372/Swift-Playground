//
//  LearnSwift.swift
//  Swift Playground
//
//  Created by Mukul Jangir on 31/05/22.
//

import Foundation

/**
 Variables, Constants, Statements, Blocks, Loops
 */

class LevelOne {
    
    //declaring variables
    var name = "mukul"
    var amount: Int = 10
    
    //assigning value to variables
    func assignTo() {
        name = "what"
        amount = 091
    }
    
    //declaring constants
    let largeName = "fake"
    let largeAmount = 10
    
    //*you can't assign values to constants
    
    let year = 2020
    func ifElseStatement() {
        if(year < 2020){
            print("Year \(year) is less than 2020")
        }
    }
    
    //for loop
    func looops() {
        for i in 1...5 {
            print("value = \(i)")
        }
    }
    
    //a function with return type
    func isGreaterThanTen(num: Int) -> Bool {
        let result = num > 10
        return result
    }
    
    
}

/**
 Optional in Swift
 There are different data type in swift like Int, Float, Bool, String etc.
 Optional is another data type in swift. It represents a data type by using
 ! (Exclamation Mark) or ? (Question Mark).
 
 Optional concept basics is same as kotlin.
 */

class LevelTwo {
    
    let name : String? = "mukul"
    //? means, name can nil (null)
    
    init(amount: Int, someValue: Int){
        self.amount = amount
        self.someValue = someValue
    }
    
    func useThis() {
        //for accessing the value from `name` variable
        //use !
        print("\(name!)")
        //print = mukul
    }
    
    var amount: Int?
    var largeAmount: Int = 100
    
    func printAmount() {
        print("\(amount!)")
        //print = nil (null)
        print("\(largeAmount)")
        //print = 100
    }
    
    

    let someValue: Int?
    var someOtherValue: Int? = 100
    
    //handling the optionals
    func handleTheOptionals() {
        if someValue != nil {
            //someValue have some values
        }else{
            //someValue is nill (null)
        }
        
        if someOtherValue != nil {
            //someOtherValue has some values
        }else {
            //someOtherValue is nill (null)
        }
    }
    
    
    //Optional Binding (if-let)
    //Optional binding helps you to find out whether an optional containts
    //a value or not
    
    func optinalBinding() {
        if let tempValue = someValue {
            //it has some values
            print("value = \(tempValue)")
        }else {
            //doesn't contain value
        }
        
        //In kotlin value?.let { }
        //is same as : if let `any_name` = `any_value` { }
    
    }

    //Guard Statements OR guard-let statement
    //Gurad statements is same as if-else statements without body/block
    
    func guardStatements() {
        let somevalue: Int? = 10
        guard let temp = somevalue else {
            return
        }

        print("value \(temp)")
        
        //explanation :
        //if `somevalue` contains value then guard-let statement unwrapps the value
        //from `somevalue` and assign it to `temp` constant.
        //if `somevalue` doesn't have any value then guard-let statement else block
        //will execute and it returns the calling function. In this case, print(..)
        //will not execute
    }

    //Nil Coalescing operator
    //We can also check if optional contains value or not using a operator
    func checkIfContains() {
        let a : Int?
        let defaultValue: Int = 10
        
        //check if contains value
//        let unwrappedValue = a ?? defaultValue
//
//        print("\(a!)")
//        print("\(unwrappedValue)")
    }
    
    //Ternary Operator
    func checkThis() {
        let code: Int? = 200
        let status = (code == 200) ? "succes" : "failed"

        print("value = \(status)")
    }
    
    
}

class LevelThree {
    
    //switch condition
    let day = 1

    func checkTheDay() {
        switch day {
        case 1:
            print("")
        
        case 2:
            print("")
        
        default:
            print("")
        
        }
    }
    
    //for loop with where clause
    func forLoop() {
        let languages = ["java","kotlin","swift"]
        for language in languages where language != "java"{
            
        }
    }
    
    //stride function
    func strideDemo() {
        for i in stride(from: 1, to: 10, by: 2){
            print(i)
        }
        //1,3,5,7,9
        
        //by: 2 means, increment the i by 2 in each cycle
    }
  
    
}

class LevelFour {
    //array
    var lanaguages = [String]()
    var fakers = [Int]()
    var names = ["swift","java","kotlin"]
    
    func makeFun() {
        
        //add element
        lanaguages.append("java")
        //add element at position
        fakers.insert(10, at: 1)
        //at: 1 is index of element 10
        
        //modify the elements of array
        lanaguages[1] = "swift"
        
        //remove the element
        names.remove(at: 1)
        
    
    }
    
    //Swift Dictionary
    //It is an unordered collection of items, stored as key-value pairs.
    
    var cart = [1: "milk",2:"veg"]
    var cities = ["nepal":"kathmandu","Italy":"Rome"]
    
    func makeFunAgain() {
        let milkFromCart = cart[1]
        let capitalOfNepal = cities["nepal"]
        
        print("\(milkFromCart!)")
        //milk
        print("\(capitalOfNepal!)")
        //"kathmandu
    }
 
    
    //Swift Tuples
    //Tuples is a group of different values.
    //Each value inside a tuple can be different data types.
    
    //create a Tuple
    var product = ("mac",2022,"HP",1988)
    var app = (name : "Basic",version: 101)
    var companies = (1,2,3,("a","b","c"))
    
    func accessToTuple(){
        print(product.0)
        //mac
        print(product.2)
        //2022
        print(app.name)
        //Basic
        print(app.version)
        //101
        print(companies.3.2)
        //a
        
        //modify the tuple
        product.0 = "DELL"
        app.name = "Basic2"
        
        
    }
}

class LevelFive {
    
    //Functions in Swift
    func addTwoNumber(a: Int,b: Int) -> Int {
        return a + b
    }

    func addTwoNumberWithDefault(a: Int = 0, b: Int) -> Int{
        return a + b
    }
    
    //Functions with inout Parameters
    func changeName(name: String){
        if name == "" {
//            name = "Java"  //you can't do this because paramater behaves as constant
            
        }
    }
    
    func changeName1(name: inout String){
        if name == "java"{
            name = "JAVA"
        }
    }
    
    func testInout() {
        var userName = "java"
        
//        changeName1(name: userName) You can't do this [ERROR]
    
        changeName1(name: &userName)
        //output : JAVA
        //you always have to use & (ampersand) while passing argument to inout parameter
    }
    
    
    //Function with multiple Return types
    func checkMarks() -> (String, Int){
        return ("jake",100)
    }
    
    func test() {
        let marks = checkMarks()
        print("name = \(marks.0)")
        print("marks = \(marks.1)")
    }
    
    //Swift Nested Functions
    func greatMessage() {
        func displayMessage() {
            
        }
        displayMessage()
    }
    
    //Overloading
    //Two or more functions can have same names but different accpected arguments
    //this is called overloading

    func test(a: Int){
        
    }
    func test(a: String){
        
    }
    func test(a: Int, b: String){
        
    }
    
    //Swift Closures
    //Closures are same in kotlin as well
    var greet = {
        print("greet")
    }
    var hello = {
        10
    }
    var greetUser = { (userId: Int) in
        print("greet to \(userId)")
    }
    var greetUserAndRetrun = { (userId: Int) -> Int in
        print("greet to \(userId)")
        return userId
    }
    func testThis() {
        greet()
        //print : greet
        greetUser(10)
        //print : greet to 10
        let userId = greetUserAndRetrun(100)
        //print: greet to 100
        print("\(userId)")
        //print the userId: 100
    }
    
    //functions the accepts a function as argument
    func grabApple(picker: () -> ()){
        picker()
    }
    
    func testGrabApple() {
        grabApple(
            picker: {
                print("execute this")
            }
        )
        
        //OR
        
        grabApple {
            print("execute this")
        }
    }
    
    //dive in closure
    //closure is same as lambads in kotlin
    //@autoclosure will automatically add curly brackets to body
    func displayName(greet: @autoclosure () -> ()){
        
    }
    func wayTocall() {
       displayName(greet: print("greet")) //after adding @autoclosure
       

        //after adding @autoclosure
        //you don't to do this
        //displayName(greet: {
        //    print("greet")
        // }
        //It automatically add the curly brackets
    }
    

}

/**
Struct Vs Class in Swift
 */
//Class
class Bike {
    
    static var model: String = "BMW"
    
    var color: String
    init(color: String){
        self.color = color
    }
    
    static func changeModel(model: String){
        self.model = model
    }
}

var bike1 = Bike(color: "Blue")
var bike2 = bike1

func test() {
    bike1.color = "Red"
    print(bike2.color)
    //print : Red
    //Any changes made to bike1 will also reflect to bike2

    //accessing the static function
    Bike.changeModel(model: "")

    
}

//Struct
//Propertices inside Struct channot be changed inside the methods
struct Car {
    var color: String
    init(color: String){
        self.color = color
    }
    
    func changeColor(color: String){
//        self.color = color //ERROR: You can't do this because color is immutable
    }
    
    
}
var car1 = Car(color: "Blue")
var car2 = car1
func test2() {
    car1.color = "Red"
    print(car2.color) //prints blue
    //Any changes made to car1 will not reflect to bike2
}


//Struct - Modifying the properties inside from method
struct Toy {
    var color: String
    init(color: String){
        self.color = color
    }
    mutating func changeColor(color: String){
        self.color = color //Now you can do it
    }
}

func test3() {
    var toy = Toy(color : "red") //toy should be var not let
    toy.changeColor(color: "blue")
}

//Protocol in Swift
//Protocol is same as Interface in kotlin/Java
//
//Protocol :
//1. functions must without body
//2. init { } must without body
//3. variables/constants must explicit { get } OR { set } OR { get set }
//
// { get } means, its a gettable/read only property
// { set } means, its a
protocol Greet {
    var name: String { get }
    var amount: Int { get set }
    func hello()
}

class Employee : Greet {
    
    var name: String
    var amount: Int
    
    init(name: String, amount: Int){
        self.name = name
        self.amount = amount
    }
    
    func hello() {
        
    }

}

//Enum in Swift
enum Seasons {
    case spring, summer, winter, autumn
}
enum Size: Int{
    case small = 10
    case medium = 20
    case large = 30
}

var season = Seasons.autumn

func tryThisOne() {
    let mediumSize = Size.medium
    let value = mediumSize.rawValue //access the value
    
    print("size = \(mediumSize) value = \(value)")
    
}

//Enum with different data types
enum Laptop {
    case name(String)
    case price(Int)
}

func tryThis2() {
    let name = Laptop.name("DELL")
    let price = Laptop.price(100)
    
    print("name = \(name) price = \(price)")
}

//Singeton pattern
class Helper {
    
    static let create = Helper()
    
    //create a private initializer
    //so that nobody can make object of this class
    private init(){
        
    }
}
//accessing the helper object
let helper = Helper.create

enum PasswordError : Error{
    case short
    case null
}
func isPasswordCorrect(pass: String?) throws -> Bool {
    guard let password = pass else {
        throw PasswordError.null
    }
    if(password.count < 1) {
        throw PasswordError.short
    }
    return true
}
//Error handling
class ErrorHandling {
    func divide(a: Int, b: Int){
        do {
            let result = try isPasswordCorrect(pass: "a")
            print("\(result)")
        }catch PasswordError.short {
            
        }catch {
            
        }
    }
}

//Swift Generics
//Generics is a multi type supported feature that provides
//multiple types to use with same property.
//in keyword - in T, means you able to make changes to T
//out keyword - out T, means you won't be able to make changes to T
func display<T>(data: T){
    
}
class Display<T>{
    var name: T?
    init(name: T?){
        self.name = name
    }
}

func DisplayNum<T: Numeric>(num: T){
    
}

//Swift Extensions
//Extension - It have the access of all propertices defined
//in its class
//
//Why extension?
//Generally, we do class defined the properties
//and extension defined the operation/logic/usecase part
//so that we can use the class property and
//make an operation using extension
//
class Temp{
    var temp: Double = 0
    func setTemp(temp: Double){
        self.temp = temp
    }
}
extension Temp {
    func convert() -> Double{
        return temp*30
    }
}

class Example{
    let temp = Temp()
    func ex() {
        
        temp.setTemp(temp: 10)
        let result = temp.convert()
        print("\(result)")
    }
}

//Access Control in Swift
public func accessToEveryone() {
    
}
private func accessToOnlyParent() {
    
}
internal func accessToSameModuleOnly() {
    
}
fileprivate func accessToCurrentSwiftFile() {
    
}

//NOTE
//inside struct properties considered as constant not variable
//no matter if they are var or let

//Hashcode
struct Father: Hashable{
    
}
struct Mother: Hashable{
    var name: String
}
class Example2 {
    let father = Father()
    let mother = Mother(name: "any")
    
    func compareThis(){
        
        let fatherHash = father.hashValue
        let motherHash = mother.hashValue

        print("\(fatherHash) \(motherHash)")
    }
}
