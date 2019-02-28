//
//  Planet.swift
//  SpaceAdventure
//
//  Created by Estudiante on 2/27/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
class Planet{
    let name: String
    let description: String
    var moonsCount = 0
    init(name: String, description: String) {
        self.name = name
        self.description = description
    }
}
