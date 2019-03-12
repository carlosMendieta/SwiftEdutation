/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    private var temperatureValues = (-100...100).map{$0}
    @IBOutlet weak var pickerView: UIPickerView!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return temperatureValues.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let celsiusValue = temperatureValues[row]
        return "\(celsiusValue)°C"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let degreesCelsius = Float(temperatureValues[row])
        let degreesFahrenheit = 1.8 * degreesCelsius + 32
        temperatureLabel.text = "\(Int(degreesFahrenheit))°F"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.selectRow(100, inComponent: 0, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

