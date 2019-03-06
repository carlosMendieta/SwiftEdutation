/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import UIKit

class ViewController: UIViewController {
    
    var observation: NSKeyValueObservation?
    
    @objc let clock = Clock()
    var timer: Timer?
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        observerTest()
        clock.testTimer()
        updateLabel()
    }
    func observerTest(){
        observation = observe(\.clock.cambio, options: NSKeyValueObservingOptions.new , changeHandler: { (Clock, change) in
            self.updateLabel()
        })
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @objc func updateLabel(){
        timeLabel.text = clock.formato.string(from: clock.currentTime as Date)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
}

