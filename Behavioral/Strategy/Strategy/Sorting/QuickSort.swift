//
//  QuickSort.swift
//  Strategy
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

struct QuickSort: SortingAlgorithm {

    var timeStamp: Date?
    
    func sort(_ numbers: [Int]) -> [Int] {
        guard numbers.count > 1 else { return numbers }
        let pivot = numbers[numbers.count/2]
        let less = numbers.filter { $0 < pivot }
        let equal = numbers.filter { $0 == pivot }
        let greater = numbers.filter { $0 > pivot }
        
        return sort(less) + equal + sort(greater)
    }
}
