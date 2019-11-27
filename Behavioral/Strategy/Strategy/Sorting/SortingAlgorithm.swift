//
//  Sort.swift
//  Strategy
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

protocol SortingAlgorithm {
    var timeStamp: Date? { get set }
    func sort(_ numbers: [Int]) -> [Int]
    mutating func startTiming()
    mutating func finishTiming() -> TimeInterval
}

extension SortingAlgorithm {
    
    mutating func startTiming() {
        timeStamp = Date()
    }
    
    mutating func finishTiming() -> TimeInterval {
        let interval = Date().timeIntervalSince(timeStamp ?? Date())
        timeStamp = nil
        return interval
    }
}
