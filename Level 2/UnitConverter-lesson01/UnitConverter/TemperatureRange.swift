//
//  TemperatureRange.swift
//  UnitConverter
//
//  Created by Carlos Mendieta on 3/12/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation
import UIKit

class TemperatureRange: NSObject, UIPickerViewDataSource {
    var values = (-100...100).map{$0}
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return values.count
    }
}
