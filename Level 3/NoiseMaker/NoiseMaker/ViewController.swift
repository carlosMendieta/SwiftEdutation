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
    
    let noiseMaker = NoiseMaker()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func playGuitar(_ sender: UIButton) {
        noiseMaker.play(index: 0)
    }
    
    @IBAction func playApplause(_ sender: UIButton) {
        noiseMaker.play(index: 1)
    }
    
    @IBAction func playMonster(_ sender: UIButton) {
        noiseMaker.play(index: 2)
    }
    
    @IBAction func playBubbles(_ sender: UIButton) {
        noiseMaker.play(index: 3)
    }
    
}

