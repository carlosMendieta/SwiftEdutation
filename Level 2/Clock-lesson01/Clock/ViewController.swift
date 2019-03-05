/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import UIKit

class ViewController: UIViewController {
    let clock = Clock()
    var countOpened = 0
    @IBOutlet weak var timeLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateTimeLabel),
                                               name: UIApplication.willEnterForegroundNotification,
                                               object: nil)
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(timeOpened),
                                               name: UIApplication.didBecomeActiveNotification,
                                               object: nil)
    }
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    @objc func updateTimeLabel(){
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        timeLabel.text = formatter.string(from: clock.currentTime as Date)
    }
    @objc func timeOpened(){
        countOpened += 1
        print(countOpened)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTimeLabel()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

