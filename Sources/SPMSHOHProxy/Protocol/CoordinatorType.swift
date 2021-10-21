import UIKit.UINavigationController

public protocol CoordinatorType {
    func start(with dependency: Dependency?)
    func coordinate(to coordinator: CoordinatorType, with dependency: Dependency?)
}

extension CoordinatorType {
    public func coordinate(to coordinator: CoordinatorType, with dependency: Dependency? = nil) {
        coordinator.start(with: dependency)
    }
}

public protocol Coodinatable {
    associatedtype Coordinator: CoordinatorType
    var coordinator: Coordinator { get }
}
