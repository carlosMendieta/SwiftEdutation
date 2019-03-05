/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import UIKit

class ViewController: UIViewController {
    let clock = Clock()
    
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerForNotifications()
    }
    
    private func registerForNotifications() {
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(updateClock),
                                               name: UIApplication.willEnterForegroundNotification,
                                               object: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateClock()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func updateClock() {
        print("La app está activa")
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        timeLabel.text = formatter.string(from: clock.currentTime as Date)
    }
    
}

