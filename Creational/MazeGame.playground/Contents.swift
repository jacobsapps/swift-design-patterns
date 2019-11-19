import UIKit

let game = MazeGame()
let maze = game.createMaze()
print(maze)
print(maze.rooms)
if let eastDoor = maze.rooms[1]?.eastSide {
    print(maze.rooms[1]?.eastSide)
}

