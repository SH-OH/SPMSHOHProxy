import Foundation

public protocol DefaultValuable: Codable, Hashable {
    static var defaultValue: Self { get }
}

@propertyWrapper
public struct DefaultWrapper<T: DefaultValuable>: Codable, Hashable {
    public var wrappedValue: T

    public init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        self.wrappedValue = (try? container.decode(T.self)) ?? T.defaultValue
    }
    
    public init(_ wrappedValue: T) {
        self.wrappedValue = wrappedValue
    }
}

extension Array: DefaultValuable where Element: Codable & Hashable {
    public static var defaultValue: [Element] {
        return []
    }
}

extension String: DefaultValuable {
    public static var defaultValue: String {
        return ""
    }
}

extension Int: DefaultValuable {
    public static var defaultValue: Int {
        return 0
    }
}

extension Double: DefaultValuable {
    public static var defaultValue: Double {
        return 0.0
    }
}

extension Bool: DefaultValuable {
    public static var defaultValue: Bool {
        return false
    }
}
