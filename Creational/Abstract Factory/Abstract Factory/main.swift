//
//  main.swift
//  Abstract Factory
//
//  Created by Bartlett, Jacob (UK - London) on 27/11/2019.
//  Copyright © 2019 Jacob. All rights reserved.
//

import Foundation

private let retryMessage = """
Run with another maze type?
     b: run a basic maze
     e: run an enchanted maze
     n: end the program"
"""

private let spellChoiceMessage = """
Seal rooms with which spell?
     w: Wingardium Leviosa
     e: Expelliarmus
     a: Avada Kedavra
"""

func main() {
    basicMaze()
    retry()
}

private func basicMaze() {
    print("\n\nCreating a basic maze...")
    let factory = BasicMazeFactory()
    runMazeGame(with: factory)
}

private func enchantedMaze() {
    let spellChoice = presentSpellChoice()
    print("\n\nCreating an enchanted maze...")
    let factory = EnchantedMazeFactory(castSpell: spellChoice)
    runMazeGame(with: factory)
}

private func runMazeGame(with factory: MazeFactory) {
    let game = MazeGame()
    let maze = game.createMaze(factory: factory)
    print(String(describing: maze))
}

private func presentSpellChoice() -> Spell {
    print(spellChoiceMessage)
    let response = readLine()
    switch response {
    case "w":
        return .wingardiumLeviosa
    
    case "e":
        return .expelliarmus
    
    case "a":
        print("\nYou monster.")
        return .avadaKedavra
        
    default:
        return presentSpellChoice()
    }
}

private func retry() {
    print(retryMessage)
    let response = readLine()
    switch response {
    case "n":
        exit(0)
    
    case "b":
        basicMaze()
        
    case "e":
        enchantedMaze()
        
    default:
        retry()
    }
    retry()
}

print("\nAbstract Factory Pattern")
main()
