import Foundation

struct MazeGame {
    
    init() {}
    
    func createMaze(factory: MazeFactory) -> Maze {
        var maze = factory.makeMaze()
        let r1 = factory.makeRoom(roomNumber: 1)
        let r2 = factory.makeRoom(roomNumber: 2)
        let door = factory.makeDoor(between: r1, and: r2)
        
        maze.addRoom(r1)
        maze.addRoom(r2)
        
        r1.setSide(at: .east, with: door)
        r2.setSide(at: .west, with: door)
        
        return maze
    }
}
