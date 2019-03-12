/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import UIKit


class ViewController: UIViewController {
    let stopwatch = Stopwatch()
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    @IBOutlet weak var startButton: UIButton!
    @IBOutlet weak var stopButton: UIButton!
    var resume = false
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.roundBorder()
        stopButton.roundBorder()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        startButton.startColor()
        stopButton.principalColor()
        Timer.scheduledTimer(timeInterval:
            0.1,
                             target: self,
                             selector: #selector(updateElapsedTimeLabel),
                             userInfo: nil,
                             repeats: true)
        stopwatch.start()
        startButton.setTitle("Restart", for: UIControl.State.normal)
    }
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        stopwatch.stop()
        startButton.principalColor()
        stopButton.stopColor()
        stopButton.setTitle("Resume", for: UIControl.State.normal)
        
    }
    @objc func updateElapsedTimeLabel(timer: Timer) {
        if stopwatch.isRunning {
            elapsedTimeLabel.text = stopwatch.elapsedTimeAsString
        } else {
            timer.invalidate()
        }
    }
}

extension UIButton {
    func roundBorder (){
        self.layer.cornerRadius = self.frame.height / 3
    }
    func principalColor (){
        self.backgroundColor = #colorLiteral(red: 0.3273257017, green: 0.3855015635, blue: 0.4406080842, alpha: 1)
    }
    func startColor(){
        self.backgroundColor = #colorLiteral(red: 0.3198919892, green: 0.6796876788, blue: 0.927310884, alpha: 1)
    }
    func stopColor(){
        self.backgroundColor = #colorLiteral(red: 0.9279505014, green: 0.3173940182, blue: 0.3269738555, alpha: 1)
    }
}





