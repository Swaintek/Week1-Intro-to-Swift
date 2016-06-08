

import UIKit

//Check if "Earth" is in an array, if not, add it
var planets = ["Mercury", "Venus", "Mars"]

func earthAdder (inout planets : [String]) {
    if planets.contains("Earth") {
        return
    } else {
        planets = planets + ["Earth"]
    }
}
earthAdder(&planets)

//Reduce the string

let planetString : String = planets.reduce("") { (result, planet) -> String in
    return result + planet + ", "
}

//Declare and implement a dictionary
var emptyDictionary = [Int : String]()

var guitars =
    [
        "Telecaster" : "Fender",
        "Stratocaster" : "Fender",
        "Jaguar" : "Fender",
        "Les Paul" : "Gibson",
        "Flying V" : "Gibson",
        "Firebird" : "Gibson"
    ]


//Filter a dictionary
func guitarFinder(modelName : String) {
    let guitarFound = guitars.filter { (name, brand) -> Bool in
        return name == modelName}
    print(guitarFound)
}

guitarFinder("Telecaster")


//Sets
let homeGroceries: Set = ["Bread", "Rice", "Tomatoes", "Lettuce"]
let recipeGroceries: Set = ["Tomatoes", "Onions", "Cheese", "Spinach"]

//union
let allGroceries = homeGroceries.union(recipeGroceries)

//intersect
let alreadyHaveFromRecipe = homeGroceries.intersect(recipeGroceries)

//subtract
let needGroceries = recipeGroceries.subtract(homeGroceries)

//exculsiveOr
let everythingButHomeRecipeIngredients = recipeGroceries.exclusiveOr(homeGroceries)


//Repeated word counter
let colors = ["red", "yellow", "blue", "green", "orange", "red", "orange", "blue"]

func wordCounter(words: [String]) {
    var wordScore = [String: Int]()
    for word in words {
        if wordScore[word] == nil {
            wordScore[word] = 1
        } else {
            wordScore.updateValue(wordScore[word]! + 1, forKey: word)
        }
    }
    print(wordScore)
}

wordCounter(colors)



//add two numbers without using +

func addTwoNums (one : Int, two : Int) -> Int {
    var counter : Int = max(one, two)
    for _ in 0 ..< min(one, two) {
        counter += 1
    }
    return counter
}

addTwoNums(23, two: 33)












