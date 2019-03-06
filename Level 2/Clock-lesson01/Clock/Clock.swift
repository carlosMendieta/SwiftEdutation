//
//  Clock.swift
//  Clock
//
//  Created by Carlos Mendieta on 3/5/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation

@objc class Clock: NSObject {
    var miTimer: Timer?
    @objc dynamic var formato = DateFormatter()
    @objc dynamic var cambio = 0
    var currentTime: NSDate {
        return NSDate()
    }
    func testTimer(){
        miTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(testTimer2), userInfo: nil, repeats: true)
    }
    @objc func testTimer2(){
        formato.timeStyle = .long
        cambio += 1
    }
    deinit {
        if let miTimer = self.miTimer {
            miTimer.invalidate()
        }
    }
}



