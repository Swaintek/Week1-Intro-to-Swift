//: Playground - noun: a place where people can play

import UIKit

struct Person {
    var name: String
    var age: Int?
    
    init(name: String, age: Int? = nil)
    {
        self.name = name
        self.age = age
    }
    
    func ageInDogYears() -> Int? {
        let age = self.age ?? 0
        return age * 7
    }
}

extension Person {
    func sayHello(){
        print("Hi, \(self.name)")
    }
}

let myPerson = Person(name: "Adam", age: 30)

myPerson.ageInDogYears()

myPerson.sayHello()
