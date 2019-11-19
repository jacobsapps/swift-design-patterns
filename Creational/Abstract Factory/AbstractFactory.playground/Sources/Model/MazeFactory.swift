import Foundation

public protocol MazeFactory {
    func makeMaze() -> Maze
    func makeWall() -> Wall
    func makeRoom(roomNumber: Int) -> Room
    func makeDoor(between: Room, and: Room) -> Door
}

public extension MazeFactory {
    
    func makeMaze() -> Maze {
        return Maze()
    }
    
    func makeWall() -> Wall {
        return Wall()
    }
    
    func makeRoom(roomNumber: Int) -> Room {
        return Room(roomNumber)
    }
    
    func makeDoor(between room1: Room, and room2: Room) -> Door {
        return Door(between: room1, and: room2)
    }
}


