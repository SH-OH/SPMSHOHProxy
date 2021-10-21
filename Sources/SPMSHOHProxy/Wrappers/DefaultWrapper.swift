import Foundation

protocol DefaultValuable: Codable, Hashable {
    static var defaultValue: Self { get }
}

@propertyWrapper
struct DefaultWrapper<T: DefaultValuable>: Codable, Hashable {
    var wrappedValue: T

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.wrappedValue = (try? container.decode(T.self)) ?? T.defaultValue
    }
    
    init(_ wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }
}

extension Array: DefaultValuable where Element: Codable & Hashable {
    static var defaultValue: [Element] {
        return []
    }
}

extension String: DefaultValuable {
    static let defaultValue: String = ""
}

extension Int: DefaultValuable {
    static let defaultValue: Int = 0
}

extension Double: DefaultValuable {
    static let defaultValue: Double = 0.0
}

extension Bool: DefaultValuable {
    static let defaultValue: Bool = false
}
