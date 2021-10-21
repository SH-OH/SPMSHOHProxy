import Foundation

public protocol Reusable {}

extension Reusable {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
