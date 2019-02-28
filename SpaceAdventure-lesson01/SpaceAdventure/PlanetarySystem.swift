//
//  PlanetarySystem.swift
//  SpaceAdventure
//
//  Created by Carlos Mendieta on 2/27/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class PlanetarySystem {
    let name: String
    let numberOfPlanets: Int
    var planets: [Planet]
    init(name: String, planets: [Planet]) {
        self.name = name
        self.planets = planets
        numberOfPlanets = planets.count
    }
}
