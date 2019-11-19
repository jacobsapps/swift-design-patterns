import Foundation

public class Door: MapSite {
    
    var isOpen: Bool = false 
    var room1: Room
    var room2: Room
    
    init(between room1: Room, and room2: Room) {
        self.room1 = room1
        self.room2 = room2
    }
}
