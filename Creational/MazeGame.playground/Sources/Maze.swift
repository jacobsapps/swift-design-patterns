import Foundation

public struct Maze {
    
    public var rooms: [Int: Room] = [:]
    
    mutating public func addRoom(_ room: Room) {
        rooms[room.roomNumber] = room
    }
    
    mutating public func room(roomNumber: Int) -> Room? {
        return rooms[roomNumber]
    }
}
