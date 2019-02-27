/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import Foundation

let adventure = SpaceAdventure()

//===============  Lesson 1 ===============
let numberOfPlanets = 8
let diameterOfEarth = 24859.82
func message(intNumber: Int, doubleNumber: Double){
    print("Welcome to our solar system!")
    print("There are \(numberOfPlanets) planets to explore.")
    print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.") 
}
message(intNumber: numberOfPlanets, doubleNumber: diameterOfEarth)

//===============  Lesson 2 ===============
func message(message: String) -> String {
    print(message)
    return getln()
}
let name = message(message: "What is your name?")
print("Nice to meet you, \(name). My name is Eliza, I'm an old friend of Siri.")
var decision = message(message: "Let's go on an adventure! \nShall I randomly choose a planet for you to visit? (Y or N)")
let planets = ["mercurio","venus","tierra","marte","jupiter","saturno","urano","neptuno"]
while !(decision == "Y" || decision == "N") {
    decision = getln()
    if decision == "Y" {
        print("Ok! Traveling to \(planets.randomElement()!)")
    } else if decision == "N" {
        let planet = message(message: "Ok, name the planet you would like to visit...")
        print("ok, so we are going to \(planet)")
    } else if decision == "Cookies!"{
        print("Oh great! I really like cookies!")
    } else {
        print("Sorry, I didn't get that.")
    }
}

