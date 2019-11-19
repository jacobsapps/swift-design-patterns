import UIKit

let game = MazeGame()
var factory = BasicMazeFactory()
let maze = game.createMaze(factory: factory)

print(maze)
print(maze.rooms)
print(maze.rooms[1]?.eastSide)
print(maze.rooms[2]?.northSide)

//factory = EnchantedMazeFactory()
//let enchantedMaze = game.createMaze(factory: factory)
//
//print(enchantedMaze)
//print(enchantedMaze.rooms)
//print(enchantedMaze.rooms[1]?.eastSide)
//print(enchantedMaze.rooms[2]?.northSide)
