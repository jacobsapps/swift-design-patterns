//
//  MergeSort.swift
//  Strategy
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

struct MergeSort: SortingAlgorithm {

    var timeStamp: Date?
    
    func sort(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else { return numbers }
        let middleIndex = numbers.count / 2
        let leftnumbers = sort(Array(numbers[0..<middleIndex]))
        let rightnumbers = sort(Array(numbers[middleIndex..<numbers.count]))
        return merge(leftPile: leftnumbers, rightPile: rightnumbers)
    }
    
    func merge(leftPile: [Int], rightPile: [Int]) -> [Int] {
        var leftIndex = 0
        var rightIndex = 0
        
        var orderedPile = [Int]()
        orderedPile.reserveCapacity(leftPile.count + rightPile.count)
        
        while leftIndex < leftPile.count && rightIndex < rightPile.count {
            if leftPile[leftIndex] < rightPile[rightIndex] {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
            } else if leftPile[leftIndex] > rightPile[rightIndex] {
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            } else {
                orderedPile.append(leftPile[leftIndex])
                leftIndex += 1
                orderedPile.append(rightPile[rightIndex])
                rightIndex += 1
            }
        }
        
        while leftIndex < leftPile.count {
            orderedPile.append(leftPile[leftIndex])
            leftIndex += 1
        }
        
        while rightIndex < rightPile.count {
            orderedPile.append(rightPile[rightIndex])
            rightIndex += 1
        }
        
        return orderedPile
    }
    
}
