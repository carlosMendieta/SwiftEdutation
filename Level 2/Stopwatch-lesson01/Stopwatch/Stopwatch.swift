//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Carlos Mendieta on 3/7/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation

class Stopwatch {
    private var resume: NSDate?
    private var startTime: NSDate?
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        }else {
            return 0
        }
    }
    var isRunning: Bool {
        return startTime != nil
    }
    func start(){
        startTime = NSDate()
    }
    func stop(){
        resume = startTime
        startTime = nil
    }
    var elapsedTimeAsString: String {
        return String(
            format:"%02d:%02d.%d",
            Int(elapsedTime / 60),
            Int(elapsedTime) % 60,
            Int(elapsedTime * 10) % 10)
    }
}

