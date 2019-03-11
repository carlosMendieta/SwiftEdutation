/*
 
 This work is licensed under a Creative Commons Attribution-NonCommercial-ShareAlike
 4.0 International License, by Yong Bakos.
 
 */

import UIKit


class ViewController: UIViewController {
    let stopwatch = Stopwatch()
    @IBOutlet weak var elapsedTimeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        print("Starting stopwatch")
        Timer.scheduledTimer(timeInterval:
            0.1,
            target: self,
            selector: #selector(updateElapsedTimeLabel),
            userInfo: nil,
            repeats: true)
        stopwatch.start()
    }
    @IBAction func stopButtonTapped(_ sender: UIButton) {
        print(stopwatch.elapsedTime)
        stopwatch.stop()
    }
    @objc func updateElapsedTimeLabel(timer: Timer) {
        print("updating...")
        if stopwatch.isRunning {
            let minutes = Int(stopwatch.elapsedTime / 60)
            let seconds = Int(stopwatch.elapsedTime) % 60
            let tenthsOfSecond = Int(stopwatch.elapsedTime * 10) % 10
            elapsedTimeLabel.text = String(format:"%02d:%02d.%d",
                                           minutes, seconds, tenthsOfSecond)
        } else {
            timer.invalidate()
        }
    }
}





