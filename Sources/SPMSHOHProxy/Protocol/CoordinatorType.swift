import UIKit.UINavigationController

public protocol NavigationType {}

public protocol CoordinatorType {
    func start(with dependency: DependencyType)
    func navigate(to navigation: NavigationType, with dependency: DependencyType)
}

public protocol Coordinatable {
    var coordinator: CoordinatorType? { get }
}
