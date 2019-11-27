import Foundation

struct Maze: CustomStringConvertible {
    
    var description: String {
        var partialDescription = ""
        partialDescription += "\(type(of: self)):\n"
        for (_, room) in rooms {
            partialDescription += "\(String(describing: room))\n"
        }
        return partialDescription
    }
    
    var rooms: [Int: Room] = [:]
    
    mutating func addRoom(_ room: Room) {
        rooms[room.roomNumber] = room
    }
    
    mutating func room(roomNumber: Int) -> Room? {
        return rooms[roomNumber]
    }
}
