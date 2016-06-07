//: Playground - noun: a place where people can play

import UIKit


//Function to convert a string to number\

func stringToNumber(inputString: String) -> Int? {
    return Int(inputString)
}

stringToNumber("4")


//Function to take a tuple as an input and return an interpolated string

func rockerGreeting (tuple: (name: String, instrument: String)) -> String {
    return ("Make some noise for \(tuple.name) on the \(tuple.instrument)")
}

let playerInstrument = ("Dave", "mandolin")

rockerGreeting(playerInstrument)


//Function to take in a string and count characters

func stringCounter (inputString: String) -> Int {
    return inputString.characters.count
}

stringCounter("Abracadabra")


//Function that reverses a string

func stringReverse (inputString: String) -> String {
    var reversedString = ""
    for index in inputString.characters.indices {
        reversedString.insert(inputString[index], atIndex: reversedString.startIndex)
    }
    return reversedString
}

stringReverse("Dave")

var input = "messi"

func reverse(inout input: String)
{
    var startIndex = input.startIndex
    var endIndex = input.endIndex.predecessor()
    
    for _ in 0...input.characters.count.predecessor() / 2 {
        
        let sCharacter = input.characters[startIndex]
        let eCharacter = input.characters[endIndex]
        
        input.removeAtIndex(startIndex)
        input.insert(eCharacter, atIndex: startIndex)
        
        input.removeAtIndex(endIndex)
        input.insert(sCharacter, atIndex: endIndex)
        
        startIndex = startIndex.successor()
        endIndex = endIndex.predecessor()
    }
}


//Variable as a function that takes a parameter and returns a greeting

var functionGreeting: (String, String) -> String = rockerGreeting

functionGreeting ("Austin", "saxophone")






