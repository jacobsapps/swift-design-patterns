import Foundation

struct MazeGame {
    
    func createMaze() -> Maze {
        var maze = Maze()
        let r1 = Room(1)
        let r2 = Room(2)
        let door = Door(between: r1, and: r2)
        
        maze.addRoom(r1)
        maze.addRoom(r2)
        
        r1.setSide(at: .east, with: door)
        r2.setSide(at: .west, with: door)
        
        return maze
    }
}
