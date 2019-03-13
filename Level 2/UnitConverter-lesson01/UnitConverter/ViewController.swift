/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate {
    
    @IBOutlet var temperatureRange: TemperatureRange!
    private let converter = UnitConverter()
    @IBOutlet weak var celsiusPicker: UIPickerView!
    @IBOutlet weak var temperatureLabel: UILabel!
    let userDefaultsLastRowKey = "defaultCelsiusPickerRow"
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let celsiusValue = temperatureRange.values[row]
        return "\(celsiusValue)°C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        displayConvertedTemperatureForRow(row: row)
        saveSelectedRow(row: row)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let row = initialPickerRow()
        celsiusPicker.selectRow(row, inComponent: 0, animated: true)
        pickerView(celsiusPicker, didSelectRow: row, inComponent: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    func displayConvertedTemperatureForRow(row: Int){
        let degreesCelsius = temperatureRange.values[row]
        temperatureLabel.text = "\(converter.degreesFahrenheit(degreesCelsius: degreesCelsius))°F"
    }
    
    func saveSelectedRow(row: Int){
        let defaults = UserDefaults.standard
        defaults.set(row, forKey: userDefaultsLastRowKey)
    }
    
    func initialPickerRow()->Int{
        let savedRow = UserDefaults.standard.integer(forKey: userDefaultsLastRowKey) as? Int
        if let row = savedRow {
            return row
        }else {
            return celsiusPicker.numberOfRows(inComponent: 0)/2
        }
        
    }
    
}

