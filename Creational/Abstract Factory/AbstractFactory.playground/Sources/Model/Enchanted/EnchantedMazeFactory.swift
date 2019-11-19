import Foundation

public struct EnchantedMazeFactory: MazeFactory {
    
    public var castSpell: Spell
    
    public func makeRoom(roomNumber: Int) -> Room {
        return EnchantedRoom(roomNumber, castSpell)
    }
}
