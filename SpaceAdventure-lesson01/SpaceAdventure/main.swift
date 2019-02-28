/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import Foundation
let systemName = "Solar System"
var planets = [
    Planet(name: "mercurio", description:"first planet"),
    Planet(name: "venus", description:"shine like a star"),
    Planet(name: "tierra", description:"we live here"),
    Planet(name: "marte", description:"the red planet"),
    Planet(name: "jupiter", description:"the big one"),
    Planet(name: "saturno", description:"the one with rings"),
    Planet(name: "urano", description:"the gas planet"),
    Planet(name: "neptuno", description:"so far away"),
]
let secondSystem = "Second Solar System"
var secondPlanets = [
    Planet(name: "curiomer", description:"first planet"),
    Planet(name: "nusve", description:"shine like a star"),
    Planet(name: "errati", description:"we live here"),
    Planet(name: "temar", description:"the red planet"),
    Planet(name: "piterjur", description:"the big one"),
    Planet(name: "unonept", description:"so far away"),
]
let totalSystems = [PlanetarySystem(name: systemName, planets: planets),PlanetarySystem(name: secondSystem, planets: secondPlanets)]
func starAdventure (planetarySystem: PlanetarySystem){
    let adventure = SpaceAdventure(myPlanetarySystem: planetarySystem)
    adventure.start()
}
print("Choose what planetary system do you want to travel:")
for index in totalSystems{
    print("\(index.name).")
}
//let option = getln()
//switch Int(option) {
//case 1:
//    starAdventure(planetarySystem: PlanetarySystem(name: systemName, planets: planets))
//case 2:
//    starAdventure(planetarySystem: PlanetarySystem(name: secondSystem, planets: secondPlanets))
//default:
//    print("Try again")
//}

