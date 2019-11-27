import Foundation

struct EnchantedMazeFactory: MazeFactory {
    
    var castSpell: Spell
    
    func makeRoom(roomNumber: Int) -> Room {
        return EnchantedRoom(roomNumber, castSpell)
    }
    
    func makeDoor(between room1: Room, and room2: Room) -> Door {
        return EnchantedDoor(between: room1, and: room2)
    }
}
