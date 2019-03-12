//
//  UnitConverter.swift
//  UnitConverter
//
//  Created by Carlos Mendieta on 3/12/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation

class UnitConverter {
    func degreesFahrenheit(degreesCelsius: Int) -> Int {
        return Int(1.8 * Float(degreesCelsius) + 32.0)
    } 
}
