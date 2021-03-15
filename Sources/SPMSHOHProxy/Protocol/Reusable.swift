import Foundation

public protocol Reusable: class {
    static var reuseIdentifier: String { get }
}

extension Reusable {
    public static var reuseIdentifier: String {
        return String(describing: self)
    }
}
