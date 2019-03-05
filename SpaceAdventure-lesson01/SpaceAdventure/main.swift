/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import Foundation

pListCreation()


func starAdventure (planetarySystem: PlanetarySystem){
    let adventure = SpaceAdventure(myPlanetarySystem: planetarySystem)
    adventure.start()
}
print("Choose what planetary system do you want to travel:\n1. Solar System. \n2. Second Solar System")
let option = getln()
switch Int(option) {
case 1:
    starAdventure(planetarySystem: PlanetarySystem(name: systemName, planets: planets))
case 2:
    starAdventure(planetarySystem: PlanetarySystem(name: secondSystem, planets: secondPlanets))
default:
    print("Try again")
}
