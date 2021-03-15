import Foundation
import RxSwift
import RxCocoa

extension ObservableType {
    public func asDriverOnEmpty() -> Driver<Element> {
        return asDriver(onErrorDriveWith: .empty())
    }
}
