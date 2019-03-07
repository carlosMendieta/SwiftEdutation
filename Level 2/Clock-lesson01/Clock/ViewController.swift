/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import UIKit

class ViewController: UIViewController {
    let clock = Clock()
    var timer: Timer?
    var toggleColons = false
    @IBOutlet weak var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        timer = Timer.scheduledTimer(
            timeInterval: 0.5,
            target: self,
            selector: #selector(updateTimeLabel),
            userInfo: nil,
            repeats: true)
        
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.all
    }
    
    @objc func updateTimeLabel(){
        let formatter = DateFormatter()
        formatter.timeStyle = .medium
        var timeText = formatter.string(from: clock.currentTime as Date)
        if toggleColons {
            timeText = timeText.replacingOccurrences(of: ":", with: " ")
        }
        toggleColons.toggle()
        timeLabel.text = timeText
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        updateTimeLabel()
    }
    
    deinit {
        if let timer = self.timer {
            timer.invalidate()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

