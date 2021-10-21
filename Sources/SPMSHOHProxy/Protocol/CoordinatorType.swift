import UIKit.UINavigationController

public protocol CoordinatorType {
    func start()
    func coordinate(to coordinator: CoordinatorType)
}

extension CoordinatorType {
    public func coordinate(to coordinator: CoordinatorType) {
        coordinator.start()
    }
}

public protocol Coodinatable {
    associatedtype Coordinator: CoordinatorType
    var coordinator: Coordinator { get }
}
