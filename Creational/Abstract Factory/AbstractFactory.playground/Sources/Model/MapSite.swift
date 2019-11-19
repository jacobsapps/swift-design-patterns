import Foundation

public protocol MapSite {
    func enter()
}

public extension MapSite {
    // default empty implementation will be used everywhere since no gameplay is being coded here
    func enter() {}
}
