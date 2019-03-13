/*

This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
4.0 International License, by Yong Bakos.

*/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func openMapAppWithURL(_ sender: UIButton) {
        if let url = URL(string: "http://maps.apple.com/?q=Yosemite"){
            let app = UIApplication.shared
            app.open(url)
        }
        
    }
}

