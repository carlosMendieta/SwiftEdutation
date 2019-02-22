/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    
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

