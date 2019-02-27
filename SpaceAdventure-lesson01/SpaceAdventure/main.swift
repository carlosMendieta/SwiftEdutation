/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import Foundation
let mercurio = Planet(name: "mercurio"), venus = Planet(name: "venus"), tierra = Planet(name: "tierra")
let planets = [mercurio,venus,tierra]
let planetarySystem = PlanetarySystem(name: "Solar System", planets: planets)
let adventure = SpaceAdventure(planetarySystem: planetarySystem)
adventure.start()


