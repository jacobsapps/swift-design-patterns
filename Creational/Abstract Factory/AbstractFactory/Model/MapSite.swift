import Foundation

protocol MapSite {
    func enter()
}

extension MapSite {
    // default empty implementation will be used everywhere since no gameplay is being coded here
    func enter() {}
}
