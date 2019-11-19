import Foundation

public class Room: MapSite {
    
    public let roomNumber: Int
    public var northSide: MapSite
    public var eastSide: MapSite
    public var southSide: MapSite
    public var westSide: MapSite
    
    public init(roomNumber: Int) {
        self.roomNumber = roomNumber
        northSide = Wall()
        eastSide = Wall()
        southSide = Wall()
        westSide = Wall()
    }
    
    public func setSide(at direction: Direction, with site: MapSite) {
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
    
    public func getSide(at direction: Direction) -> MapSite? {
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
