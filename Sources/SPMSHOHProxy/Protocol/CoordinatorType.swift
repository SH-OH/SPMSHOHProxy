import UIKit.UINavigationController

protocol CoordinatorType {
    func start()
    func coordinate(to coordinator: CoordinatorType)
}

extension CoordinatorType {
    func coordinate(to coordinator: CoordinatorType) {
        coordinator.start()
    }
}

protocol Coodinatable {
    associatedtype Coordinator: CoordinatorType
    var coordinator: Coordinator { get }
}
