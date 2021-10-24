import Foundation

public protocol DependencyType {}

public struct EmptyDependency: DependencyType {
    public init() {}
}

extension DependencyType {
    public func cast<T: DependencyType>(_ type: T.Type) -> T {
        guard let dependency = self as? T else {
            preconditionFailure("Failed Cast Dependency")
        }
        return dependency
    }
}
