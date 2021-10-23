import Foundation

public protocol DependencyType {}

public struct EmptyDependency: DependencyType {
    public init() {}
}
