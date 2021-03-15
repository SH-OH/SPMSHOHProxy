import RxSwift
import RxCocoa
import Kingfisher
import UIKit

extension Reactive where Base: UIButton {
    func setImage(defaultImage: UIImage? = nil) -> Binder<Resource?> {
        base.kf.cancelImageDownloadTask()
        
        return Binder(base) { button, resource in
            button.kf.setImage(
                with: resource,
                for: .normal, completionHandler:  { (result) in
                    switch result {
                    case let .success(value):
                        button.setImage(value.image, for: .normal)
                    case .failure(_):
                        button.setImage(defaultImage, for: .normal)
                    }
                }
            )
        }
    }
}

extension Reactive where Base: UIImageView {
    func setImage(defaultImage: UIImage? = nil) -> Binder<Resource?> {
        base.kf.cancelDownloadTask()
        
        return Binder(base) { imageView, resource in
            imageView.kf.setImage(with: resource) { (result) in
                switch result {
                case let .success(value):
                    imageView.image = value.image
                case .failure(_):
                    imageView.image = defaultImage
                }
            }
        }
    }
}
