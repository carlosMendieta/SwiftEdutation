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
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let celsiusValue = temperatureRange.values[row]
        return "\(celsiusValue)°C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let degreesCelsius = temperatureRange.values[row]
        temperatureLabel.text = "\(converter.degreesFahrenheit(degreesCelsius: degreesCelsius))°F"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let defaultPickerRow = celsiusPicker.numberOfRows(inComponent: 0)/2
        celsiusPicker.selectRow(defaultPickerRow, inComponent: 0, animated: true)
        pickerView(celsiusPicker, didSelectRow: defaultPickerRow, inComponent: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

