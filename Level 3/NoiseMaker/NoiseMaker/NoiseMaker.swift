//
//  NoiseMaker.swift
//  NoiseMaker
//
//  Created by Carlos Mendieta on 3/14/19.
//  Copyright © 2019 Carlos Mendieta. All rights reserved.
//

import Foundation
import AVFoundation

class NoiseMaker{
    
    let audioFileNames = ["guitar","applause","monster","bubbles"]
    
    let players: [AVAudioPlayer?]
    
    func playGuitarSound(){
        players[0]?.play()
    }
    
    func playApplauseSound(){
        players[1]?.play()
    }
    
    func playMonsterSound(){
        players[2]?.play()
    }
    
    func playBubblesSound(){
        players[3]?.play()
    }
    
    init() {
        players = audioFileNames.map{
            filename in
            if let url = Bundle.main.url(forResource: filename, withExtension: "wav"){
                return try? AVAudioPlayer(contentsOf: url)
            }else {
                return nil
            }
        }
    }
}
