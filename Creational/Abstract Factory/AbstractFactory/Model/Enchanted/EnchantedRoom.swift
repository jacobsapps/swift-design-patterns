import Foundation

class EnchantedRoom: Room {
    
    override var description: String {
        var partialDescription = super.description
        partialDescription += "        Room sealed by \(spell.rawValue)"
        return partialDescription
    }
    
    let spell: Spell
    
    init(_ roomNumber: Int, _ castSpell: Spell) {
        self.spell = castSpell
        super.init(roomNumber)
    }
}
