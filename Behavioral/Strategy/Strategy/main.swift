//
//  main.swift
//  Strategy
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

private let retryMessage = """
Run again?
     a: try another algorithm on the same data set
     b: try making another list of numbers
     n: exit
"""

private let algorithmChoiceMessage = """
Which algorithm do you want to try out?
     a: yes
     b: exit
     c: 
"""

private let sortingOptions = """
Now, how do you want to sort these?
    a: BubbleSort
    b: QuickSort
    c: MergeSort
"""

private var numberList: [Int] = []

private var strategy: SortingAlgorithm?

func main() {
    numberGeneration()
    sortingChoice()
    retry()
}

private func numberGeneration() {
    print("\nI'm about to generate some random, unsorted numbers. How many should I make?")
    let response = readLine()
    guard let number = UInt(response ?? "") else {
        print("I couldn't understand that number. Could you please make sure it's a positive integer?")
        numberGeneration()
        return
    }
    numberList = []
    for _ in 0..<number {
        numberList.append(Int.random(in: 0...1000))
    }
}

private func sortingChoice() {
    print("Here's the list of numbers:")
    print(numberList)
    print(sortingOptions)
    let response = readLine()
    switch response {
    case "a":
        strategy = BubbleSort()
        
    case "b":
        strategy = QuickSort()
        
    case "c":
        strategy = MergeSort()
        
    default:
        sortingChoice()
    }
    executeSort()
}

private func executeSort() {
    print("Sorting the list now using \(type(of: strategy))...")
    strategy?.startTiming()
    let sortedNumbers = strategy?.sort(numberList)
    let duration = strategy?.finishTiming()
    print(sortedNumbers as Any)
    print("Sorted \(numberList.count) numbers in \(String(describing: duration)) seconds!")
    
}

private func retry() {
    print(retryMessage)
    let response = readLine()
    switch response {
    case "n":
        exit(0)
    
    case "a":
        sortingChoice()
        retry()
        
    case "b":
        numberGeneration()
        sortingChoice()
        retry()

    default:
        retry()
    }
}

print("\nStrategy Pattern")
main()
