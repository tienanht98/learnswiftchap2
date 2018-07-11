//: Playground - noun: a place where people can play

import UIKit

func test()
{
    defer
    {
        print("2") // thằng này print sau
    }
    print("1") // thằng này print trước
}
class Person {
    var name:String?
    lazy var greeting : String = { () -> String in
        return "hello \(self.name!)"
    }()
    required init(_ name:String)
    {
        self.name = name
    }
}
let tienanh = Person("tien anh")
print(tienanh.greeting)
class Programmer : Person {
    required init(_ name: String)
    {
        super.init(name)
    }
}
class Nurse : Person {
    required init(_ name: String)
    {
        super.init(name)
    }
}
let people = [Programmer("tran tien anh "), Nurse("vân anh")]
for aPerson in people
{
    if aPerson is Programmer
    {
        print("This person is a dev")
    }
    else if aPerson is Nurse
    {
        print("This person is a nurse")
    }
}
test()
protocol Printable
{
    func printTypeTwice(otherMe:Self)
}
struct Foo : Printable
{
    func printTypeTwice(otherMe: Foo)
    {
        print("I am me plus \(otherMe)")
    }
}
let aFoo = Foo()
let anotherFoo = Foo()
aFoo.printTypeTwice(otherMe: anotherFoo) //I am me plus Foo()
//final class Person {}
//class Programmer : Person {}//không thể gọi đc
struct person
{
    var job = ""
 func assignJob(newJob:String)
    {
        job = person(job: newJob)
    }
}
var aperson = person()
aperson.job //""
aperson.assignJob(newJob: "iOS Engineer at Buffer")
aperson.job //iOS Engineer at Buffer
@objc protocol foo
{
    func requiredFunction()
    @objc optional func optionalFunction()
}
class nguoi : foo
{
    func requiredFunction()
    {
        print("Conformance is now valid")
    }// không viết lại ham optionalFunction kung ok
}
extension nguoi {
    func printname()  {
        
    }
    
}
