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

    @IBAction func playSound(_ sender: UIButton) {
        noiseMaker.play(index: sender.tag)
    }
    
}

