/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {
    @IBOutlet var buttons: [UIButton]!
    @IBAction func touchButton(_ sender: UIButton) {
        if let buttonNumber = buttons.index(of: sender) {
            view.backgroundColor = setBackgroundColor(optionColor: buttonNumber)
            let button = buttons[buttonNumber]
            button.backgroundColor = setBackgroundColor(optionColor: buttonNumber)
        }else {
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func setBackgroundColor(optionColor: Int) -> UIColor {
        switch optionColor {
        case 0:
            return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case 1:
            return UIColor(red: 0.7, green: 0.3, blue: 0.1, alpha: 0.5)
        case 2:
            return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        default:
            return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }
}


