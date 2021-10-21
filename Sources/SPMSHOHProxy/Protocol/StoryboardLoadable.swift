import UIKit.UIViewController

protocol StoryboardLoadable where Self: UIViewController {}

extension StoryboardLoadable {
    public static var identifier: String {
        return String(describing: self)
    }
    
    public static func storyboard() -> Self {
        let name = self.identifier
        let storyboard = UIStoryboard(name: name, bundle: .main)
        guard let viewController = storyboard.instantiateViewController(withIdentifier: name) as? Self else {
            preconditionFailure("Failed initiate storyboard : \(name)")
        }
        return viewController
    }
}
