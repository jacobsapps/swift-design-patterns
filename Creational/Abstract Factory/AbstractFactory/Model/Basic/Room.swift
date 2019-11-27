import Foundation

class Room: MapSite, CustomStringConvertible {
    
    var description: String {
        var partialDescription = ""
        partialDescription += "    \(type(of: self)) \(roomNumber):\n"
        partialDescription += "        North side: \(northSide)\n"
        partialDescription += "        East side: \(eastSide)\n"
        partialDescription += "        South side: \(southSide)\n"
        partialDescription += "        West side: \(westSide)\n"
        return partialDescription
    }
    
    let roomNumber: Int
    var northSide: MapSite
    var eastSide: MapSite
    var southSide: MapSite
    var westSide: MapSite
    
    init(_ roomNumber: Int) {
        self.roomNumber = roomNumber
        northSide = Wall()
        eastSide = Wall()
        southSide = Wall()
        westSide = Wall()
    }
    
    func setSide(at direction: Direction, with site: MapSite) {
        switch direction {
        case .north:
            northSide = site

        case .east:
            eastSide = site

        case .south:
            southSide = site

        case .west:
            westSide = site
        }
    }
    
    func getSide(at direction: Direction) -> MapSite? {
        switch direction {
        case .north:
            return northSide

        case .east:
            return eastSide

        case .south:
            return southSide

        case .west:
            return westSide
        }
    }
}
