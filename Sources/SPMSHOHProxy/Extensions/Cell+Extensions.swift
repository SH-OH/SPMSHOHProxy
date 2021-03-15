import Foundation
import UIKit

extension UICollectionView {
    public final func register<Cell: UICollectionViewCell>(_ cellType: Cell.Type) {
        register(cellType.self,
                 forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }
    
    public final func registerNib<Cell: UICollectionViewCell>(_ cellType: Cell.Type) {
        let nib = UINib(nibName: cellType.reuseIdentifier,
                        bundle: nil)
        register(nib,
                 forCellWithReuseIdentifier: cellType.reuseIdentifier)
    }
    
    public final func register<View: UICollectionReusableView>(
        _ viewType: View.Type,
        kind: String
    ) {
        register(viewType.self,
                 forSupplementaryViewOfKind: kind,
                 withReuseIdentifier: viewType.reuseIdentifier)
    }
    
    public final func registerNib<View: UICollectionReusableView>(
        _ viewType: View.Type,
        kind: String
    ) {
        let nib = UINib(nibName: viewType.reuseIdentifier,
                        bundle: nil)
        register(nib,
                 forSupplementaryViewOfKind: kind,
                 withReuseIdentifier: viewType.reuseIdentifier)
    }
    
    public final func dequeue<Cell: UICollectionViewCell>(
        _ cellType: Cell.Type,
        for ip: IndexPath
    ) -> Cell {
        guard let cell = dequeueReusableCell(
            withReuseIdentifier: cellType.reuseIdentifier,
            for: ip
        ) as? Cell else {
            preconditionFailure("\(cellType)의 재사용 셀 생성 실패")
        }
        return cell
    }
    
    public final func dequeue<View: UICollectionReusableView>(
        _ viewType: View.Type,
        kind: String,
        for ip: IndexPath
    ) -> View {
        guard let headerView = dequeueReusableSupplementaryView(
                ofKind: kind,
                withReuseIdentifier: viewType.reuseIdentifier,
                for: ip) as? View else {
            preconditionFailure("\(viewType)의 재사용 뷰 생성 실패")
        }
        return headerView
    }
}

extension UICollectionReusableView: Reusable {}
