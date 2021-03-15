//
//  File.swift
//  
//
//  Created by Oh Sangho on 2021/03/15.
//

import XCTest
@testable import SPMSHOHProxy
import RxSwift
import UIKit

final class ExtensionsTests: XCTestCase {
    
    func test_Array_아웃오브인덱스인경우_safe되는지() {
        let outIndexArray: [Int] = [1, 2, 3]
        let safe = outIndexArray[safe: 5]
        
        XCTAssertNil(safe)
    }
    
    func test_CV셀_클래스이름과_reuseIdentifier이_같은지() {
        class TestCell: UICollectionViewCell {}
        let cellName = "\(TestCell.self)"
        let reuseIdentifier = TestCell.reuseIdentifier
        
        XCTAssertEqual(cellName, reuseIdentifier)
    }
}
