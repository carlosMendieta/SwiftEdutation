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
var option = ""
print("Choose what planetary system do you want to travel:\n1. Solar System. \n2. Second Solar System")
while !(option == "1" || option == "2"){
    option = getln()
    switch String(option) {
    case "1":
        starAdventure(planetarySystem: PlanetarySystem(name: systemName, planets: planets))
    case "2":
        starAdventure(planetarySystem: PlanetarySystem(name: secondSystem, planets: secondPlanets))
    default:
        print("Try again")
    }
}
