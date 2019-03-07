//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Carlos Mendieta on 3/7/19.
//  Copyright © 2019 Your School. All rights reserved.
//

import Foundation

class Stopwatch {
    private var startTime: NSDate?
    var elapsedTime: TimeInterval {
        if let startTime = self.startTime {
            return -startTime.timeIntervalSinceNow
        }else {
            return 0
        }
    }
    func start(){
        startTime = NSDate()
    }
    func stop(){
        startTime = nil
    }
}
