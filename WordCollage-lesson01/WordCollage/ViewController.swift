/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelCustomColor: UILabel!
    private var blackWhite = true
    private let customColor = UIColor(red: 0.2, green: 0.3, blue: 0.1, alpha: 0.5)
    @IBAction func changeBackground(_ sender: UIButton) {
        blackWhite.toggle()
        if blackWhite { view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0) }
        else { view.backgroundColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)}
        labelCustomColor.textColor = customColor
    }
    @IBOutlet weak var labelLearnToCode: UILabel!
    let relativeFontConst: CGFloat = 0.046
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        labelLearnToCode.font = labelLearnToCode.font.withSize(self.view.frame.height * relativeFontConst)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


