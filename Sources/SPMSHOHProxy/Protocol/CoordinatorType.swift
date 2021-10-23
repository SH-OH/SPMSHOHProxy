import UIKit.UINavigationController

public protocol CoordinatorType {
    func start(with dependency: DependencyType?)
    func coordinate(to coordinator: CoordinatorType, with dependency: DependencyType?)
}

extension CoordinatorType {
    public func coordinate(to coordinator: CoordinatorType, with dependency: DependencyType?) {
        coordinator.start(with: dependency)
    }
}

public protocol Coodinatable {
    associatedtype Coordinator: CoordinatorType
    var coordinator: Coordinator? { get }
}
