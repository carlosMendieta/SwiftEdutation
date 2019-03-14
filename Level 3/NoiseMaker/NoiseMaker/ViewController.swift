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
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playGuitar(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav"){
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "applause", withExtension: "wav"){
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
    @IBAction func playMonster(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "monster", withExtension: "wav"){
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
    @IBAction func playBubbles(_ sender: UIButton) {
        if let url = Bundle.main.url(forResource: "bubbles", withExtension: "wav"){
            player = try? AVAudioPlayer(contentsOf: url)
            player?.play()
        }
    }
    
}

