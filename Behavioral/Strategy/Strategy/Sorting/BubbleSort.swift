//
//  BubbleSort.swift
//  Strategy
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

struct BubbleSort: SortingAlgorithm {
    
    var timeStamp: Date?
    
    func sort(_ numbers: [Int]) -> [Int] {
        var numberList = numbers
        for i in 0..<numberList.count {
            for j in 1..<numberList.count - i {
                if numberList[j] < numberList[j-1] {
                    let tmp = numberList[j-1]
                    numberList[j-1] = numberList[j]
                    numberList[j] = tmp
                }
            }
        }
        return numberList
    }
}
