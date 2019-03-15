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
    
    private var guitarPlayer: AVAudioPlayer?
    private var applausePlayer: AVAudioPlayer?
    private var monsterPlayer: AVAudioPlayer?
    private var bubblesPlayer: AVAudioPlayer?
    
    func playGuitarSound(){
        guitarPlayer?.play()
    }
    
    func playApplauseSound(){
        applausePlayer?.play()
    }
    
    func playMonsterSound(){
        monsterPlayer?.play()
    }
    
    func playBubblesSound(){
       bubblesPlayer?.play()
    }
    
    init() {
        if let url = Bundle.main.url(forResource: "guitar", withExtension: "wav"){
            guitarPlayer = try? AVAudioPlayer(contentsOf: url)
        }
        if let url2 = Bundle.main.url(forResource: "applause", withExtension: "wav"){
            applausePlayer = try? AVAudioPlayer(contentsOf: url2)
        }
        if let url3 = Bundle.main.url(forResource: "monster", withExtension: "wav"){
            monsterPlayer = try? AVAudioPlayer(contentsOf: url3)
        }
        if let url4 = Bundle.main.url(forResource: "bubbles", withExtension: "wav"){
            bubblesPlayer = try? AVAudioPlayer(contentsOf: url4)
        }
    }
}
