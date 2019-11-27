//
//  main.swift
//  Abstract Factory
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

private let retryMessage = """
Run again?
     y: yes
     n: end the program
"""

func main() {
    createMaze()
    retry()
}

private func createMaze() {
    let game = MazeGame()
    let maze = game.createMaze()
    print(String(describing: maze))
}

private func retry() {
    print(retryMessage)
    let response = readLine()
    switch response {
    case "n":
        exit(0)
    
    case "y":
        createMaze()
        
    default:
        retry()
    }
}

print("\nMaze Game")
main()
