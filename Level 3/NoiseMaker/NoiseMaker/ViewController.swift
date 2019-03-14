//
//  ViewController.swift
//  NoiseMaker
//
//  Created by Carlos Mendieta on 3/14/19.
//  Copyright © 2019 Carlos Mendieta. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var guitarPlayer: AVAudioPlayer?
    var applausePlayer: AVAudioPlayer?
    var monsterPlayer: AVAudioPlayer?
    var bubblesPlayer: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playGuitar(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav"){
            guitarPlayer = try? AVAudioPlayer(contentsOf: url)
            guitarPlayer?.play()
        }
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "applause", withExtension: "wav"){
            applausePlayer = try? AVAudioPlayer(contentsOf: url)
            applausePlayer?.play()
        }
    }
    
    @IBAction func playMonster(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "monster", withExtension: "wav"){
            monsterPlayer = try? AVAudioPlayer(contentsOf: url)
            monsterPlayer?.play()
        }
    }
    
    @IBAction func playBubbles(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "bubbles", withExtension: "wav"){
            bubblesPlayer = try? AVAudioPlayer(contentsOf: url)
            bubblesPlayer?.play()
        }
    }
    
}

