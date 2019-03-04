//
//  planetsData.swift
//  SpaceAdventure
//
//  Created by Carlos Mendieta on 3/4/19.
//  Copyright © 2019 Your School. All rights reserved.
//

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
//how many planetary system do we have
let totalSystems = [PlanetarySystem(name: systemName, planets: planets),PlanetarySystem(name: secondSystem, planets: secondPlanets)]
//set the planet names in an array
func nameArray(planet: [Planet])->[String]{
    var array = [String]()
    for i in planet {
        array.append(i.name)
    }
    return array
}
//set the planet description in an array
func descriptionArray(planet: [Planet])->[String]{
    var array = [String]()
    for i in planet {
        array.append(i.description)
    }
    return array
}
let planetDictionary = ["systemName":["Solar System","Alphan System"],"name":nameArray(planet: planets),"Description":descriptionArray(planet: planets)]
