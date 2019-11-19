import Foundation

public class EnchantedRoom: Room {
    
    public let spell: Spell
    
    public init(_ roomNumber: Int, _ castSpell: Spell) {
        self.spell = castSpell
        super.init(roomNumber)
    }
}
