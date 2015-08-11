import UIKit

/*

Strings

*/

func favoriteCheeseStringWithCheese(cheese: String) -> String {
    return cheese + " cheese"
}

let fullSentence = favoriteCheeseStringWithCheese("cheddar")
println("My favorite cheese is \(fullSentence).")

/*

Arrays & Dictionaries

*/

var numberArray = [1, 2, 3, 4]
// Add 5 to this array
numberArray.append(5)

var numberDictionary = [1 : "one", 2 : "two", 3 : "three", 4 : "four"]
// Add 5 : "five" to this dictionary
numberDictionary[5] = "five"
numberDictionary

/*

Loops

*/

// Use a closed range loop to print 1 - 10, inclusively
for var i = 1; i <= 10; i++ {
    print(i)
}

// Use a half-closed range loop to print 1 - 10, inclusively
for i in 1...10 {
    print(i)
}

let worf = [
    "name": "Worf",
    "rank": "lieutenant",
    "information": "son of Mogh, slayer of Gowron",
    "favorite drink": "prune juice",
    "quote" : "Today is a good day to die."]

let picard = [
    "name": "Jean-Luc Picard",
    "rank": "captain",
    "information": "Captain of the USS Enterprise",
    "favorite drink": "tea, Earl Grey, hot"]

let characters = [worf, picard]

func favoriteDrinksArrayForCharacters(characters:Array<Dictionary<String, String>>) -> Array<String> {
    // return an array of favorite drinks, like ["prune juice", "tea, Earl Grey, hot"]
    var favoriteDrinkArray = [String]()
    for character in characters {
        if let drink = character["favorite drink"] {
            favoriteDrinkArray.append(drink)
        }
    }
    return favoriteDrinkArray
  
}

let favoriteDrinks = favoriteDrinksArrayForCharacters(characters)

favoriteDrinks

/*

Functions

*/

// Make a function that inputs an array of strings and outputs the strings separated by a semicolon

let strings = ["milk", "eggs", "bread", "challah"]

func newStrings(arrayInput : Array<String>) -> String {
    return ";".join(arrayInput)
}

newStrings(strings)

let expectedOutput = "milk;eggs;bread;challah"

/*

Closures

*/

let cerealArray = ["Golden Grahams", "Cheerios", "Trix", "Cap'n Crunch OOPS! All Berries", "Cookie Crisp"]

// Use a closure to sort this array alphabetically
let sortedCereal = sorted(cerealArray, <)

