/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import Foundation

let numberOfPlanets = 8
let diameterOfEarth = 24859.82
func message(intNumber: Int, doubleNumber: Double){
    print("Welcome to our solar system!")
    print("There are \(numberOfPlanets) planets to explore.")
    print("You are currently on Earth, which has a circumference of \(diameterOfEarth) miles.") 
}

message(intNumber: numberOfPlanets, doubleNumber: diameterOfEarth)
